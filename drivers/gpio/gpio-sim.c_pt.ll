; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-sim.c_pt.bc'
source_filename = "../drivers/gpio/gpio-sim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_sim_device = type { %struct.config_group, ptr, i32, %struct.mutex, %struct.notifier_block, %struct.completion, i8, ptr, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpiod_hog = type { %struct.list_head, ptr, i16, ptr, i32, i32 }
%struct.gpio_sim_bank = type { %struct.config_group, ptr, %struct.list_head, ptr, i32, %struct.list_head, ptr }
%struct.gpio_sim_line = type { %struct.config_group, ptr, %struct.list_head, i32, ptr, ptr }
%struct.gpio_sim_hog = type { %struct.config_item, ptr, ptr, i32 }
%struct.gpio_sim_chip_name_ctx = type { ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.68 }
%union.anon.68 = type { %union.anon.69 }
%union.anon.69 = type { [1 x i64] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.gpio_sim_chip = type { %struct.gpio_chip, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.70, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.70 = type { ptr }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_sim_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_sim__227_1591_gpio_sim_init6 = internal global ptr @gpio_sim_init, section ".initcall6.init", align 4
@gpio_sim_config_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"gpio-sim\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @gpio_sim_config_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@gpio_sim_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_sim_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_sim_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_sim_exit = internal global ptr @gpio_sim_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [51 x i8] c"gpio_sim.author=Bartosz Golaszewski <brgl@bgdev.pl\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [43 x i8] c"gpio_sim.description=GPIO Simulator Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [36 x i8] c"gpio_sim.file=drivers/gpio/gpio-sim\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"gpio_sim.license=GPL\00", section ".modinfo", align 1
@gpio_sim_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013gpio_sim: Error %d while registering the platform driver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_sim_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/gpio/gpio-sim.c\00", [40 x i8] zeroinitializer }, align 32
@gpio_sim_init._entry_ptr = internal global ptr @gpio_sim_init._entry, section ".printk_index", align 4
@gpio_sim_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&gpio_sim_config_subsys.su_mutex\00", [63 x i8] zeroinitializer }, align 32
@gpio_sim_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013gpio_sim: Error %d while registering the configfs subsystem %s\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_sim_init._entry_ptr.6 = internal global ptr @gpio_sim_init._entry.4, section ".printk_index", align 4
@gpio_sim_config_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @gpio_sim_config_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_config_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gpio_sim_config_make_device_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gpio_sim_device_config_item_ops, ptr @gpio_sim_device_config_group_ops, ptr @gpio_sim_device_config_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_config_make_device_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_sim_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gpio_sim_device_config_group_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gpio_sim_device_config_make_bank_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @gpio_sim_device_config_attr_dev_name, ptr @gpio_sim_device_config_attr_live, ptr null], [20 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gpio_sim_bank_config_item_ops, ptr @gpio_sim_bank_config_group_ops, ptr @gpio_sim_bank_config_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gpio_sim_bank_config_group_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gpio_sim_bank_config_make_line_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gpio_sim_bank_config_attr_chip_name, ptr @gpio_sim_bank_config_attr_label, ptr @gpio_sim_bank_config_attr_num_lines, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"line%u%n\00", [23 x i8] zeroinitializer }, align 32
@gpio_sim_line_config_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gpio_sim_line_config_item_ops, ptr @gpio_sim_line_config_group_ops, ptr @gpio_sim_line_config_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_line_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gpio_sim_line_config_group_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gpio_sim_line_config_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @gpio_sim_line_config_make_hog_item, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_line_config_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_sim_line_config_attr_name, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hog\00", [28 x i8] zeroinitializer }, align 32
@gpio_sim_hog_config_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gpio_sim_hog_config_item_ops, ptr null, ptr @gpio_sim_hog_config_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_hog_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gpio_sim_hog_config_item_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gpio_sim_hog_config_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @gpio_sim_hog_config_attr_name, ptr @gpio_sim_hog_config_attr_direction, ptr null], [20 x i8] zeroinitializer }, align 32
@gpio_sim_hog_config_attr_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @gpio_sim_hog_config_name_show, ptr @gpio_sim_hog_config_name_store }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_hog_config_attr_direction = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @gpio_sim_hog_config_direction_show, ptr @gpio_sim_hog_config_direction_store }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output-high\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output-low\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected hog direction value: %d\00", [61 x i8] zeroinitializer }, align 32
@gpio_sim_line_config_attr_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @gpio_sim_line_config_name_show, ptr @gpio_sim_line_config_name_store }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_attr_chip_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 292, ptr @gpio_sim_bank_config_chip_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_attr_label = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @gpio_sim_bank_config_label_show, ptr @gpio_sim_bank_config_label_store }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_bank_config_attr_num_lines = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @gpio_sim_bank_config_num_lines_show, ptr @gpio_sim_bank_config_num_lines_store }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_name\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num_lines\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_attr_dev_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 292, ptr @gpio_sim_device_config_dev_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_sim_device_config_attr_live = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 420, ptr @gpio_sim_device_config_live_show, ptr @gpio_sim_device_config_live_store }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-sim.%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"live\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-sim\00", [23 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-sim,label\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-line-names\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-sim.%u-%s\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-sim.%u\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@gpio_sim_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-simulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@gpio_sim_add_bank.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@gpio_sim_add_bank.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_sim_add_bank.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sim_gpio%u\00", [21 x i8] zeroinitializer }, align 32
@gpio_sim_setup_sysfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_sim_setup_sysfs.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pull\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@gpio_sim_sysfs_pull_strings = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull-down\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull-up\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"gpio_sim_config_subsys\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1559, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"gpio_sim_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 462, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1574, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1579, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1582, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"gpio_sim_config_type\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1554, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"gpio_sim_config_group_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1550, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"gpio_sim_ida\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"gpio_sim_device_config_group_type\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1515, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1541, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 37, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [32 x i8] c"gpio_sim_device_config_item_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1507, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"gpio_sim_device_config_group_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1511, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"gpio_sim_device_config_attrs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 987, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [32 x i8] c"gpio_sim_bank_config_group_type\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1454, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"gpio_sim_bank_config_item_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1446, i32 40 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"gpio_sim_bank_config_group_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1450, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"gpio_sim_bank_config_attrs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1127, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1404, i32 21 }
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"gpio_sim_line_config_type\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1387, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [30 x i8] c"gpio_sim_line_config_item_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1379, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"gpio_sim_line_config_group_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1383, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"gpio_sim_line_config_attrs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1178, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1342, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant [25 x i8] c"gpio_sim_hog_config_type\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1329, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"gpio_sim_hog_config_item_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1325, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"gpio_sim_hog_config_attrs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1305, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"gpio_sim_hog_config_attr_name\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [35 x i8] c"gpio_sim_hog_config_attr_direction\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1225, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1191, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1191, i32 43 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1303, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1241, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1244, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1247, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1251, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"gpio_sim_line_config_attr_name\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1176, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [36 x i8] c"gpio_sim_bank_config_attr_chip_name\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [32 x i8] c"gpio_sim_bank_config_attr_label\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [36 x i8] c"gpio_sim_bank_config_attr_num_lines\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1037, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1031, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1080, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1125, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1090, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant [37 x i8] c"gpio_sim_device_config_attr_dev_name\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [33 x i8] c"gpio_sim_device_config_attr_live\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 671, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 665, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 985, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 683, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 915, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 828, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 831, i32 28 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 839, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 783, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 515, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 87, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [18 x i8] c"gpio_sim_of_match\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 456, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 376, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 405, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 429, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 325, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 334, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 335, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 337, i32 29 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 338, i32 30 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 233, i32 25 }
@___asan_gen_.280 = private unnamed_addr constant [28 x i8] c"gpio_sim_sysfs_pull_strings\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 247, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 248, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [27 x i8] c"../drivers/gpio/gpio-sim.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 249, i32 8 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gpio_sim_exit, ptr @__initcall__kmod_gpio_sim__227_1591_gpio_sim_init6, ptr @gpio_sim_exit, ptr @gpio_sim_init._entry, ptr @gpio_sim_init._entry.4, ptr @gpio_sim_init._entry_ptr, ptr @gpio_sim_init._entry_ptr.6, ptr @gpio_sim_config_subsys, ptr @gpio_sim_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gpio_sim_init.__key, ptr @.str.3, ptr @.str.5, ptr @gpio_sim_config_type, ptr @gpio_sim_config_group_ops, ptr @gpio_sim_ida, ptr @gpio_sim_device_config_group_type, ptr @gpio_sim_config_make_device_group.__key, ptr @.str.7, ptr @.str.8, ptr @gpio_sim_device_config_item_ops, ptr @gpio_sim_device_config_group_ops, ptr @gpio_sim_device_config_attrs, ptr @gpio_sim_bank_config_group_type, ptr @gpio_sim_bank_config_item_ops, ptr @gpio_sim_bank_config_group_ops, ptr @gpio_sim_bank_config_attrs, ptr @.str.9, ptr @gpio_sim_line_config_type, ptr @gpio_sim_line_config_item_ops, ptr @gpio_sim_line_config_group_ops, ptr @gpio_sim_line_config_attrs, ptr @.str.10, ptr @gpio_sim_hog_config_type, ptr @gpio_sim_hog_config_item_ops, ptr @gpio_sim_hog_config_attrs, ptr @gpio_sim_hog_config_attr_name, ptr @gpio_sim_hog_config_attr_direction, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @gpio_sim_line_config_attr_name, ptr @gpio_sim_bank_config_attr_chip_name, ptr @gpio_sim_bank_config_attr_label, ptr @gpio_sim_bank_config_attr_num_lines, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @gpio_sim_device_config_attr_dev_name, ptr @gpio_sim_device_config_attr_live, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @init_completion.__key, ptr @.str.34, ptr @gpio_sim_of_match, ptr @.str.35, ptr @gpio_sim_add_bank.__key, ptr @.str.36, ptr @gpio_sim_add_bank.lock_key, ptr @gpio_sim_add_bank.request_key, ptr @.str.37, ptr @gpio_sim_setup_sysfs.__key, ptr @gpio_sim_setup_sysfs.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @gpio_sim_sysfs_pull_strings, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_config_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_config_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_config_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_config_make_device_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_line_config_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_line_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_line_config_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_line_config_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_hog_config_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_hog_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_hog_config_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_hog_config_attr_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_hog_config_attr_direction to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_line_config_attr_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_attr_chip_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_attr_label to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_bank_config_attr_num_lines to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_attr_dev_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_device_config_attr_live to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_add_bank.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_add_bank.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_add_bank.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_setup_sysfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_setup_sysfs.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_sim_sysfs_pull_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_sim_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @config_group_init(ptr noundef nonnull @gpio_sim_config_subsys) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @gpio_sim_config_subsys, i32 0, i32 1), ptr noundef nonnull @.str.3, ptr noundef nonnull @gpio_sim_init.__key) #11
  %call5 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @gpio_sim_config_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call5, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @gpio_sim_config_subsys, i32 0, i32 0, i32 0, i32 1)) #14
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @gpio_sim_config_subsys, i32 0, i32 1)) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_sim_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @gpio_sim_config_subsys) #11
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @gpio_sim_config_subsys, i32 0, i32 1)) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_sim_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpio_sim_config_make_device_group(ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @gpio_sim_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %1 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gpio_sim_device_config_group_type) #11
  %id7 = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %id7, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @gpio_sim_config_make_device_group.__key) #11
  %bank_list = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %bank_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %bank_list, ptr %bank_list, align 8
  %prev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bank_list, ptr %prev.i, align 4
  %bus_notifier = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %bus_notifier to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gpio_sim_bus_notifier_call, ptr %bus_notifier, align 4
  %probe_completion = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %probe_completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %probe_completion, align 8
  %wait.i = getelementptr inbounds %struct.gpio_sim_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then3 ], [ %call7.i.i, %if.end5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bus_notifier_call(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %devname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %devname) #11
  %id = getelementptr i8, ptr %nb, i32 -96
  %0 = call ptr @memset(ptr %devname, i32 255, i32 32)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devname, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %2)
  %init_name.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call3 = call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef nonnull %devname) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %dev_name.exit
  %7 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %if.then.cleanup_crit_edge [
    i32 5, label %if.then.if.end10_crit_edge
    i32 8, label %if.then7
  ]

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then.if.end10_crit_edge
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.then.if.end10_crit_edge ]
  %driver_bound8 = getelementptr i8, ptr %nb, i32 68
  %8 = ptrtoint ptr %driver_bound8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %driver_bound8, align 4
  %probe_completion = getelementptr i8, ptr %nb, i32 12
  tail call void @complete(ptr noundef %probe_completion) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %devname) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_device_config_group_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gpio_sim_device_deactivate_unlocked(ptr noundef %item)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_destroy(ptr noundef %lock) #11
  %id = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @gpio_sim_ida, i32 noundef %3) #11
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_sim_device_deactivate_unlocked(ptr nocapture noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.gpio_sim_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @dev_fwnode(ptr noundef %dev1) #11
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #11
  %call.i = tail call ptr @fwnode_get_next_child_node(ptr noundef %call, ptr noundef null) #11
  %tobool.not6.i = icmp eq ptr %call.i, null
  br i1 %tobool.not6.i, label %entry.gpio_sim_remove_swnode_recursive.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gpio_sim_remove_swnode_recursive.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %child.07.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  tail call void @fwnode_remove_software_node(ptr noundef nonnull %child.07.i) #11
  %call1.i = tail call ptr @fwnode_get_next_child_node(ptr noundef %call, ptr noundef nonnull %child.07.i) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.gpio_sim_remove_swnode_recursive.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.gpio_sim_remove_swnode_recursive.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit

gpio_sim_remove_swnode_recursive.exit:            ; preds = %for.body.i.gpio_sim_remove_swnode_recursive.exit_crit_edge, %entry.gpio_sim_remove_swnode_recursive.exit_crit_edge
  tail call void @fwnode_remove_software_node(ptr noundef %call) #11
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdev, align 4
  %hogs.i = getelementptr inbounds %struct.gpio_sim_device, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %hogs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hogs.i, align 4
  %tobool.not.i7 = icmp eq ptr %6, null
  br i1 %tobool.not.i7, label %gpio_sim_remove_swnode_recursive.exit.gpio_sim_remove_hogs.exit_crit_edge, label %if.end.i

gpio_sim_remove_swnode_recursive.exit.gpio_sim_remove_hogs.exit_crit_edge: ; preds = %gpio_sim_remove_swnode_recursive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_hogs.exit

if.end.i:                                         ; preds = %gpio_sim_remove_swnode_recursive.exit
  tail call void @gpiod_remove_hogs(ptr noundef nonnull %6) #11
  %7 = ptrtoint ptr %hogs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hogs.i, align 4
  %chip_label14.i = getelementptr inbounds %struct.gpiod_hog, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %chip_label14.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_label14.i, align 4
  %tobool3.not15.i = icmp eq ptr %10, null
  br i1 %tobool3.not15.i, label %if.end.i.for.body.i8_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i.for.body.i8_crit_edge:                   ; preds = %if.end.i
  br label %for.body.i8

for.body.i8:                                      ; preds = %for.body.i8.for.body.i8_crit_edge, %if.end.i.for.body.i8_crit_edge
  %hog.016.i = phi ptr [ %incdec.ptr.i, %for.body.i8.for.body.i8_crit_edge ], [ %8, %if.end.i.for.body.i8_crit_edge ]
  tail call void @kfree(ptr noundef null) #11
  %line_name.i = getelementptr inbounds %struct.gpiod_hog, ptr %hog.016.i, i32 0, i32 3
  %11 = ptrtoint ptr %line_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %line_name.i, align 4
  tail call void @kfree(ptr noundef %12) #11
  %incdec.ptr.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i, i32 1
  %chip_label.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i, i32 1, i32 1
  %13 = ptrtoint ptr %chip_label.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_label.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %for.body.i8.for.body.i8_crit_edge, label %for.body.i8.for.end.i_crit_edge

for.body.i8.for.end.i_crit_edge:                  ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i8.for.body.i8_crit_edge:                ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i8

for.end.i:                                        ; preds = %for.body.i8.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %15 = ptrtoint ptr %hogs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hogs.i, align 4
  tail call void @kfree(ptr noundef %16) #11
  %17 = ptrtoint ptr %hogs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hogs.i, align 4
  br label %gpio_sim_remove_hogs.exit

gpio_sim_remove_hogs.exit:                        ; preds = %for.end.i, %gpio_sim_remove_swnode_recursive.exit.gpio_sim_remove_hogs.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_sim_remove_swnode_recursive(ptr noundef %swnode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fwnode_get_next_child_node(ptr noundef %swnode, ptr noundef null) #11
  %tobool.not6 = icmp eq ptr %call, null
  br i1 %tobool.not6, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %child.07 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  tail call void @fwnode_remove_software_node(ptr noundef nonnull %child.07) #11
  %call1 = tail call ptr @fwnode_get_next_child_node(ptr noundef %swnode, ptr noundef nonnull %child.07) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @fwnode_remove_software_node(ptr noundef %swnode) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_sim_remove_hogs(ptr nocapture noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hogs = getelementptr inbounds %struct.gpio_sim_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %hogs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hogs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @gpiod_remove_hogs(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %hogs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hogs, align 4
  %chip_label14 = getelementptr inbounds %struct.gpiod_hog, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_label14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_label14, align 4
  %tobool3.not15 = icmp eq ptr %5, null
  br i1 %tobool3.not15, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %hog.016 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  tail call void @kfree(ptr noundef null) #11
  %line_name = getelementptr inbounds %struct.gpiod_hog, ptr %hog.016, i32 0, i32 3
  %6 = ptrtoint ptr %line_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line_name, align 4
  tail call void @kfree(ptr noundef %7) #11
  %incdec.ptr = getelementptr %struct.gpiod_hog, ptr %hog.016, i32 1
  %chip_label = getelementptr %struct.gpiod_hog, ptr %hog.016, i32 1, i32 1
  %8 = ptrtoint ptr %chip_label to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_label, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %10 = ptrtoint ptr %hogs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hogs, align 4
  tail call void @kfree(ptr noundef %11) #11
  %12 = ptrtoint ptr %hogs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hogs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_remove_hogs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpio_sim_device_config_make_bank_group(ptr noundef %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %group, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 112) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gpio_sim_bank_config_group_type) #11
  %num_lines = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %num_lines to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_lines, align 8
  %parent = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %group, ptr %parent, align 8
  %line_list = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %line_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %line_list, ptr %line_list, align 4
  %prev.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %line_list, ptr %prev.i, align 8
  %siblings = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 2
  %bank_list = getelementptr inbounds %struct.gpio_sim_device, ptr %group, i32 0, i32 8
  %prev.i25 = getelementptr inbounds %struct.gpio_sim_device, ptr %group, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i25, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %siblings, ptr noundef %8, ptr noundef %bank_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %siblings, ptr %prev.i25, align 4
  %10 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bank_list, ptr %siblings, align 4
  %prev3.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %siblings, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end8.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_bank_config_group_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %siblings = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %siblings, align 4
  %prev.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %label = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 3
  %10 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %label, align 4
  tail call void @kfree(ptr noundef %11) #11
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpio_sim_bank_config_make_line_group(ptr noundef %group, ptr noundef %name) #4 align 64 {
entry:
  %offset = alloca i32, align 4
  %nchar = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nchar) #11
  %3 = ptrtoint ptr %nchar to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nchar, align 4, !annotation !167
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.9, ptr noundef nonnull %offset, ptr noundef nonnull %nchar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %nchar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nchar, align 4
  %call3 = call i32 @strlen(ptr noundef %name) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call3)
  %cmp4.not = icmp eq i32 %5, %call3
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end10, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 104) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end15

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gpio_sim_line_config_type) #11
  %parent = getelementptr inbounds %struct.gpio_sim_line, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %group, ptr %parent, align 8
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %offset17 = getelementptr inbounds %struct.gpio_sim_line, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %offset17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset17, align 4
  %siblings = getelementptr inbounds %struct.gpio_sim_line, ptr %call7.i.i, i32 0, i32 2
  %line_list = getelementptr inbounds %struct.gpio_sim_bank, ptr %group, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %group, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %siblings, ptr noundef %14, ptr noundef %line_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %siblings, ptr %prev.i, align 4
  %16 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %line_list, ptr %siblings, align 4
  %prev3.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %siblings, ptr %14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i, %if.end15.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ inttoptr (i32 -16 to ptr), %if.end.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup.sink.split_crit_edge ], [ %call7.i.i, %if.end15.cleanup.sink.split_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nchar) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_line_config_group_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %siblings = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %siblings, align 4
  %prev.i = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %name = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gpio_sim_line_config_make_hog_item(ptr noundef %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.gpio_sim_line, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gpio_sim_hog_config_type) #11
  %dir = getelementptr inbounds %struct.gpio_sim_hog, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dir, align 4
  %name9 = getelementptr inbounds %struct.gpio_sim_hog, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %name9, align 8
  %parent = getelementptr inbounds %struct.gpio_sim_hog, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %group, ptr %parent, align 4
  %hog10 = getelementptr inbounds %struct.gpio_sim_line, ptr %group, i32 0, i32 5
  %8 = ptrtoint ptr %hog10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %hog10, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call7.i.i, %if.end8 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_hog_config_item_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %hog2 = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %hog2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hog2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %name = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %8) #11
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_hog_config_name_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %7, null
  %..str.13 = select i1 %tobool.not, ptr @.str.13, ptr %7
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef %..str.13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_hog_config_name_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @strim(ptr noundef nonnull %call.i) #11
  %call2.i = tail call i32 @strlen(ptr noundef %call.i.i) #17
  %add.i = add i32 %call2.i, 1
  %8 = call ptr @memmove(ptr %call.i, ptr %call.i.i, i32 %add.i)
  %name = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %10) #11
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_hog_config_direction_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dir2 = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 3
  %6 = ptrtoint ptr %dir2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %7, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 7, label %sw.bb4
    i32 3, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1251, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %entry.sw.epilog_crit_edge
  %repr.0 = phi ptr [ @.str.17, %sw.bb5 ], [ @.str.16, %sw.bb4 ], [ @.str.15, %entry.sw.epilog_crit_edge ]
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef nonnull %repr.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_hog_config_direction_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_line, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i.i = tail call ptr @strim(ptr noundef nonnull %call.i) #11
  %call2.i = tail call i32 @strlen(ptr noundef %call.i.i) #17
  %add.i = add i32 %call2.i, 1
  %8 = call ptr @memmove(ptr %call.i, ptr %call.i.i, i32 %add.i)
  %call8 = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(6) @.str.15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.end7.if.end20.thread_crit_edge, label %if.else

if.end7.if.end20.thread_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.thread

if.else:                                          ; preds = %if.end7
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(12) @.str.16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else.if.end20.thread_crit_edge, label %if.end20

if.else.if.end20.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %if.else.if.end20.thread_crit_edge, %if.end7.if.end20.thread_crit_edge
  %dir.0.ph = phi i32 [ 7, %if.else.if.end20.thread_crit_edge ], [ 1, %if.end7.if.end20.thread_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br label %if.end24

if.end20:                                         ; preds = %if.else
  %call14 = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(11) @.str.17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br i1 %cmp15, label %if.end20.if.end24_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %if.end20.thread
  %dir.046 = phi i32 [ %dir.0.ph, %if.end20.thread ], [ 3, %if.end20.if.end24_crit_edge ]
  %dir25 = getelementptr inbounds %struct.gpio_sim_hog, ptr %item, i32 0, i32 3
  %9 = ptrtoint ptr %dir25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dir.046, ptr %dir25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end24 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_line_config_name_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  %..str.13 = select i1 %tobool.not, ptr @.str.13, ptr %5
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef %..str.13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_line_config_name_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @strim(ptr noundef nonnull %call.i) #11
  %call2.i = tail call i32 @strlen(ptr noundef %call.i.i) #17
  %add.i = add i32 %call2.i, 1
  %6 = call ptr @memmove(ptr %call.i, ptr %call.i.i, i32 %add.i)
  %name = getelementptr inbounds %struct.gpio_sim_line, ptr %item, i32 0, i32 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bank_config_chip_name_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  %ctx = alloca %struct.gpio_sim_chip_name_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #11
  %2 = getelementptr inbounds %struct.gpio_sim_chip_name_ctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %ctx, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %page, ptr %2, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call6 = call i32 @device_for_each_child(ptr noundef %dev5, ptr noundef nonnull %ctx, ptr noundef nonnull @gpio_sim_emit_chip_name) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memcpy(ptr %page, ptr @.str.20, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call6, %if.then ], [ 5, %if.else ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_emit_chip_name(ptr noundef %dev, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bank_list = getelementptr inbounds %struct.gpio_sim_device, ptr %3, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %bank_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %bank_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %swnode4 = getelementptr i8, ptr %.pn, i32 24
  %5 = ptrtoint ptr %swnode4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %swnode4, align 4
  %cmp5 = icmp eq ptr %6, %call
  br i1 %cmp5, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then6:                                         ; preds = %for.body
  %page = getelementptr inbounds %struct.gpio_sim_chip_name_ctx, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.then6.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %dev_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ -61, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bank_config_label_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %label = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %label, align 4
  %tobool.not = icmp eq ptr %3, null
  %..str.13 = select i1 %tobool.not, ptr @.str.13, ptr %3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef %..str.13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bank_config_label_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @strim(ptr noundef nonnull %call.i) #11
  %call2.i = tail call i32 @strlen(ptr noundef %call.i.i) #17
  %add.i = add i32 %call2.i, 1
  %4 = call ptr @memmove(ptr %call.i, ptr %call.i.i, i32 %add.i)
  %label = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %label, align 4
  tail call void @kfree(ptr noundef %6) #11
  %7 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %label, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bank_config_num_lines_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %num_lines = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_lines, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_bank_config_num_lines_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %num_lines = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lines) #11
  %2 = ptrtoint ptr %num_lines to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_lines, align 4, !annotation !167
  %call2 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num_lines) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.end8, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_lines, align 4
  %num_lines9 = getelementptr inbounds %struct.gpio_sim_bank, ptr %item, i32 0, i32 4
  %9 = ptrtoint ptr %num_lines9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num_lines9, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end8 ], [ -16, %if.end4.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lines) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_device_config_dev_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev1 = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %dev_name.exit
  %ret.0 = phi i32 [ %call4, %dev_name.exit ], [ %call5, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_device_config_live_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %cond = select i1 %tobool.i.not, i32 48, i32 49
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.27, i32 noundef %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_device_config_live_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %properties.i.i = alloca [4 x %struct.property_entry], align 8
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  %live = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %live) #11
  %0 = ptrtoint ptr %live to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %live, align 1, !annotation !167
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %live) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %1 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %live, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %pdev.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %tobool.i.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true, label %land.lhs.true5

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool.i.not, label %land.lhs.true.if.end13.thread_crit_edge, label %if.end13.thread29

land.lhs.true.if.end13.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.thread

land.lhs.true5:                                   ; preds = %if.end
  br i1 %tobool.i.not, label %if.then9, label %land.lhs.true5.if.end13.thread_crit_edge

land.lhs.true5.if.end13.thread_crit_edge:         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.thread

if.then9:                                         ; preds = %land.lhs.true5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  %bank_list.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 8
  %5 = ptrtoint ptr %bank_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %bank_list.i, align 4
  %cmp.i.i = icmp eq ptr %6, %bank_list.i
  br i1 %cmp.i.i, label %if.then9.if.end13.thread33_crit_edge, label %if.then9.for.body12.lr.ph.i.i_crit_edge

if.then9.for.body12.lr.ph.i.i_crit_edge:          ; preds = %if.then9
  br label %for.body12.lr.ph.i.i

if.then9.if.end13.thread33_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.thread33

for.cond.loopexit.i.i:                            ; preds = %for.inc.i.i
  %7 = ptrtoint ptr %.pn56.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn56.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bank_list.i
  br i1 %cmp.not.i.i, label %if.end3.i, label %for.cond.loopexit.i.i.for.body12.lr.ph.i.i_crit_edge

for.cond.loopexit.i.i.for.body12.lr.ph.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.lr.ph.i.i

for.body12.lr.ph.i.i:                             ; preds = %for.cond.loopexit.i.i.for.body12.lr.ph.i.i_crit_edge, %if.then9.for.body12.lr.ph.i.i_crit_edge
  %.pn56.i.i = phi ptr [ %.pn.i.i, %for.cond.loopexit.i.i.for.body12.lr.ph.i.i_crit_edge ], [ %6, %if.then9.for.body12.lr.ph.i.i_crit_edge ]
  %label.i.i = getelementptr i8, ptr %.pn56.i.i, i32 8
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc.i.i.for.body12.i.i_crit_edge, %for.body12.lr.ph.i.i
  %.pn4753.i.i = phi ptr [ %6, %for.body12.lr.ph.i.i ], [ %.pn47.i.i, %for.inc.i.i.for.body12.i.i_crit_edge ]
  %cmp13.i.i = icmp eq ptr %.pn56.i.i, %.pn4753.i.i
  br i1 %cmp13.i.i, label %for.body12.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body12.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body12.i.i
  %8 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false14.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false.i.i
  %label15.i.i = getelementptr i8, ptr %.pn4753.i.i, i32 8
  %10 = ptrtoint ptr %label15.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %label15.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %11, null
  br i1 %tobool16.not.i.i, label %lor.lhs.false14.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

lor.lhs.false14.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false14.i.i
  %call.i.i = call i32 @strcmp(ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp19.i.i, label %if.end.i.i.if.end13.thread33_crit_edge, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i.if.end13.thread33_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.thread33

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %lor.lhs.false14.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body12.i.i.for.inc.i.i_crit_edge
  %12 = ptrtoint ptr %.pn4753.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn47.i.i = load ptr, ptr %.pn4753.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %.pn47.i.i, %bank_list.i
  br i1 %cmp10.not.i.i, label %for.cond.loopexit.i.i, label %for.inc.i.i.for.body12.i.i_crit_edge

for.inc.i.i.for.body12.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i.i

if.end3.i:                                        ; preds = %for.cond.loopexit.i.i
  %13 = call ptr @memset(ptr %pdevinfo.i, i32 0, i32 56)
  %call4.i = call ptr @fwnode_create_software_node(ptr noundef null, ptr noundef null) #11
  %cmp.i81.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.end3.i.if.end13_crit_edge, label %for.cond.preheader.i

if.end3.i.if.end13_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.cond.preheader.i:                             ; preds = %if.end3.i
  %14 = getelementptr inbounds i8, ptr %properties.i.i, i32 8
  %.compoundliteral.sroa.2.0.properties.sroa_idx.i.i = getelementptr inbounds i8, ptr %properties.i.i, i32 4
  %.compoundliteral.sroa.479.0.properties.sroa_idx.i.i = getelementptr inbounds i8, ptr %properties.i.i, i32 12
  %.compoundliteral.sroa.5.0.properties.sroa_idx.i.i = getelementptr inbounds i8, ptr %properties.i.i, i32 16
  %arrayidx3.i.i = getelementptr inbounds [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 1
  %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx.i.i = getelementptr inbounds [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 1, i32 1
  %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx.i.i = getelementptr inbounds [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 1, i32 2
  %.compoundliteral4.sroa.478.0.arrayidx3.sroa_idx.i.i = getelementptr inbounds [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 1, i32 3
  %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx.i.i = getelementptr inbounds [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 1, i32 4
  %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx3.i.i, i32 20
  br label %for.cond.i

for.cond.i:                                       ; preds = %gpio_sim_make_bank_swnode.exit.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %.pn.in.i = phi ptr [ %.pn.i, %gpio_sim_make_bank_swnode.exit.i.for.cond.i_crit_edge ], [ %bank_list.i, %for.cond.preheader.i ]
  %15 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bank_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %properties.i.i) #11
  %16 = call ptr @memset(ptr %14, i32 0, i32 88)
  %num_lines.i.i = getelementptr i8, ptr %.pn.i, i32 12
  %17 = ptrtoint ptr %num_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_lines.i.i, align 4
  %19 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.29, ptr %properties.i.i, align 8
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0.properties.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %.compoundliteral.sroa.2.0.properties.sroa_idx.i.i, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %14, align 8
  %22 = ptrtoint ptr %.compoundliteral.sroa.479.0.properties.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %.compoundliteral.sroa.479.0.properties.sroa_idx.i.i, align 4
  %23 = ptrtoint ptr %.compoundliteral.sroa.5.0.properties.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %.compoundliteral.sroa.5.0.properties.sroa_idx.i.i, align 8
  %label.i.i.i = getelementptr i8, ptr %.pn.i, i32 8
  %24 = ptrtoint ptr %label.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %label.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %for.body.i.if.end.i82.i_crit_edge, label %gpio_sim_bank_has_label.exit.i.i

for.body.i.if.end.i82.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i82.i

gpio_sim_bank_has_label.exit.i.i:                 ; preds = %for.body.i
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.i.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool2.i.not.i.i, label %gpio_sim_bank_has_label.exit.i.i.if.end.i82.i_crit_edge, label %if.then.i.i

gpio_sim_bank_has_label.exit.i.i.if.end.i82.i_crit_edge: ; preds = %gpio_sim_bank_has_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i82.i

if.then.i.i:                                      ; preds = %gpio_sim_bank_has_label.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.30, ptr %arrayidx3.i.i, align 8
  %29 = ptrtoint ptr %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx.i.i, align 4
  %30 = ptrtoint ptr %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx.i.i, align 8
  %31 = ptrtoint ptr %.compoundliteral4.sroa.478.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %.compoundliteral4.sroa.478.0.arrayidx3.sroa_idx.i.i, align 4
  %32 = ptrtoint ptr %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %25, ptr %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx.i.i, align 8
  %33 = ptrtoint ptr %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx.i.i, align 4
  br label %if.end.i82.i

if.end.i82.i:                                     ; preds = %if.then.i.i, %gpio_sim_bank_has_label.exit.i.i.if.end.i82.i_crit_edge, %for.body.i.if.end.i82.i_crit_edge
  %prop_idx.0.i.i = phi i32 [ 2, %if.then.i.i ], [ 1, %gpio_sim_bank_has_label.exit.i.i.if.end.i82.i_crit_edge ], [ 1, %for.body.i.if.end.i82.i_crit_edge ]
  %line_list.i.i.i = getelementptr i8, ptr %.pn.i, i32 16
  %34 = ptrtoint ptr %line_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn60.i.i.i = load ptr, ptr %line_list.i.i.i, align 4
  %cmp.not61.i.i.i = icmp eq ptr %.pn60.i.i.i, %line_list.i.i.i
  br i1 %cmp.not61.i.i.i, label %if.end.i82.i.if.end30.i.i_crit_edge, label %if.end.i82.i.for.body.i.outer.i.i_crit_edge

if.end.i82.i.for.body.i.outer.i.i_crit_edge:      ; preds = %if.end.i82.i
  br label %for.body.i.outer.i.i

if.end.i82.i.if.end30.i.i_crit_edge:              ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

for.body.i.outer.i.i:                             ; preds = %for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge, %if.end.i82.i.for.body.i.outer.i.i_crit_edge
  %.pn64.i.ph.i.i = phi ptr [ %.pn.i50.i.i, %for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge ], [ %.pn60.i.i.i, %if.end.i82.i.for.body.i.outer.i.i_crit_edge ]
  %max_offset.063.i.ph.i.i = phi i32 [ %40, %for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge ], [ 0, %if.end.i82.i.for.body.i.outer.i.i_crit_edge ]
  %has_line_names.0.off062.i.ph.i.i = phi i1 [ true, %for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge ], [ false, %if.end.i82.i.for.body.i.outer.i.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.outer.i.i
  %.pn64.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn64.i.ph.i.i, %for.body.i.outer.i.i ]
  %name.i.i.i = getelementptr i8, ptr %.pn64.i.i.i, i32 12
  %35 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i.i.i, align 4
  %tobool.not.i47.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i47.i.i, label %for.inc.i.i.i, label %for.inc.i.thread.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %37 = ptrtoint ptr %.pn64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i = load ptr, ptr %.pn64.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %line_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.thread.i.i:                             ; preds = %for.body.i.i.i
  %offset.i.i.i = getelementptr i8, ptr %.pn64.i.i.i, i32 8
  %38 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i.i.i, align 4
  %40 = call i32 @llvm.umax.i32(i32 %39, i32 %max_offset.063.i.ph.i.i) #11
  %41 = ptrtoint ptr %.pn64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i50.i.i = load ptr, ptr %.pn64.i.i.i, align 4
  %cmp.not.i51.i.i = icmp eq ptr %.pn.i50.i.i, %line_list.i.i.i
  br i1 %cmp.not.i51.i.i, label %for.inc.i.thread.i.i.if.end13.i.i.i_crit_edge, label %for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge

for.inc.i.thread.i.i.for.body.i.outer.i.i_crit_edge: ; preds = %for.inc.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.outer.i.i

for.inc.i.thread.i.i.if.end13.i.i.i_crit_edge:    ; preds = %for.inc.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  br i1 %has_line_names.0.off062.i.ph.i.i, label %for.end.i.i.i.if.end13.i.i.i_crit_edge, label %for.end.i.i.i.if.end30.i.i_crit_edge

for.end.i.i.i.if.end30.i.i_crit_edge:             ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

for.end.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %for.end.i.i.i.if.end13.i.i.i_crit_edge, %for.inc.i.thread.i.i.if.end13.i.i.i_crit_edge
  %max_offset.2.i5356.i.i = phi i32 [ %max_offset.063.i.ph.i.i, %for.end.i.i.i.if.end13.i.i.i_crit_edge ], [ %40, %for.inc.i.thread.i.i.if.end13.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %max_offset.2.i5356.i.i, 1
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i.i, i32 4) #11
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end13.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge, label %if.end7.i.i.i.i.i, !prof !169

if.end13.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_make_bank_swnode.exit.thread.i

if.end7.i.i.i.i.i:                                ; preds = %if.end13.i.i.i
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #18
  %tobool14.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool14.not.i.i.i, label %if.end7.i.i.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge, label %for.cond23.preheader.i.i.i

if.end7.i.i.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_make_bank_swnode.exit.thread.i

for.cond23.preheader.i.i.i:                       ; preds = %if.end7.i.i.i.i.i
  %45 = ptrtoint ptr %line_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn5766.i.i.i = load ptr, ptr %line_list.i.i.i, align 4
  %cmp26.not67.i.i.i = icmp eq ptr %.pn5766.i.i.i, %line_list.i.i.i
  br i1 %cmp26.not67.i.i.i, label %for.cond23.preheader.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge, label %for.cond23.preheader.i.i.i.for.body28.i.i.i_crit_edge

for.cond23.preheader.i.i.i.for.body28.i.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  br label %for.body28.i.i.i

for.cond23.preheader.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_make_line_names.exit.i.i

for.body28.i.i.i:                                 ; preds = %for.body28.i.i.i.for.body28.i.i.i_crit_edge, %for.cond23.preheader.i.i.i.for.body28.i.i.i_crit_edge
  %.pn5768.i.i.i = phi ptr [ %.pn57.i.i.i, %for.body28.i.i.i.for.body28.i.i.i_crit_edge ], [ %.pn5766.i.i.i, %for.cond23.preheader.i.i.i.for.body28.i.i.i_crit_edge ]
  %name29.i.i.i = getelementptr i8, ptr %.pn5768.i.i.i, i32 12
  %46 = ptrtoint ptr %name29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name29.i.i.i, align 4
  %offset30.i.i.i = getelementptr i8, ptr %.pn5768.i.i.i, i32 8
  %48 = ptrtoint ptr %offset30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset30.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %call8.i.i.i.i.i, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %arrayidx.i.i.i, align 4
  %51 = ptrtoint ptr %.pn5768.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn57.i.i.i = load ptr, ptr %.pn5768.i.i.i, align 4
  %cmp26.not.i.i.i = icmp eq ptr %.pn57.i.i.i, %line_list.i.i.i
  br i1 %cmp26.not.i.i.i, label %for.body28.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge, label %for.body28.i.i.i.for.body28.i.i.i_crit_edge

for.body28.i.i.i.for.body28.i.i.i_crit_edge:      ; preds = %for.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28.i.i.i

for.body28.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge: ; preds = %for.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_make_line_names.exit.i.i

gpio_sim_make_line_names.exit.i.i:                ; preds = %for.body28.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge, %for.cond23.preheader.i.i.i.gpio_sim_make_line_names.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %call8.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %gpio_sim_make_line_names.exit.i.i.gpio_sim_make_bank_swnode.exit.i_crit_edge, label %if.then22.i.i

gpio_sim_make_line_names.exit.i.i.gpio_sim_make_bank_swnode.exit.i_crit_edge: ; preds = %gpio_sim_make_line_names.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_make_bank_swnode.exit.i

if.then22.i.i:                                    ; preds = %gpio_sim_make_line_names.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx24.i.i = getelementptr [4 x %struct.property_entry], ptr %properties.i.i, i32 0, i32 %prop_idx.0.i.i
  %mul.i.i = shl i32 %add.i.i.i, 2
  %52 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.31, ptr %arrayidx24.i.i, align 8
  %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx24.i.i, i32 4
  %53 = ptrtoint ptr %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.i.i, ptr %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx.i.i, align 4
  %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx24.i.i, i32 8
  %54 = ptrtoint ptr %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx.i.i, align 8
  %.compoundliteral25.sroa.437.0.arrayidx24.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx24.i.i, i32 12
  %55 = ptrtoint ptr %.compoundliteral25.sroa.437.0.arrayidx24.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %.compoundliteral25.sroa.437.0.arrayidx24.sroa_idx.i.i, align 4
  %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx24.i.i, i32 16
  %56 = ptrtoint ptr %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i.i.i.i.i, ptr %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx.i.i, align 8
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then22.i.i, %for.end.i.i.i.if.end30.i.i_crit_edge, %if.end.i82.i.if.end30.i.i_crit_edge
  %retval.0.i60.i.i = phi ptr [ %call8.i.i.i.i.i, %if.then22.i.i ], [ null, %if.end.i82.i.if.end30.i.i_crit_edge ], [ null, %for.end.i.i.i.if.end30.i.i_crit_edge ]
  %call32.i.i = call ptr @fwnode_create_software_node(ptr noundef nonnull %properties.i.i, ptr noundef %call4.i) #11
  call void @kfree(ptr noundef %retval.0.i60.i.i) #11
  br label %gpio_sim_make_bank_swnode.exit.i

gpio_sim_make_bank_swnode.exit.thread.i:          ; preds = %if.end7.i.i.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge, %if.end13.i.i.i.gpio_sim_make_bank_swnode.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %properties.i.i) #11
  %swnode12115.i = getelementptr i8, ptr %.pn.i, i32 24
  %57 = ptrtoint ptr %swnode12115.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -12 to ptr), ptr %swnode12115.i, align 4
  br label %if.then15.i

gpio_sim_make_bank_swnode.exit.i:                 ; preds = %if.end30.i.i, %gpio_sim_make_line_names.exit.i.i.gpio_sim_make_bank_swnode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call32.i.i, %if.end30.i.i ], [ %call8.i.i.i.i.i, %gpio_sim_make_line_names.exit.i.i.gpio_sim_make_bank_swnode.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %properties.i.i) #11
  %swnode12.i = getelementptr i8, ptr %.pn.i, i32 24
  %58 = ptrtoint ptr %swnode12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i.i, ptr %swnode12.i, align 4
  %cmp.i84.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %gpio_sim_make_bank_swnode.exit.i.if.then15.i_crit_edge, label %gpio_sim_make_bank_swnode.exit.i.for.cond.i_crit_edge

gpio_sim_make_bank_swnode.exit.i.for.cond.i_crit_edge: ; preds = %gpio_sim_make_bank_swnode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

gpio_sim_make_bank_swnode.exit.i.if.then15.i_crit_edge: ; preds = %gpio_sim_make_bank_swnode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %gpio_sim_make_bank_swnode.exit.i.if.then15.i_crit_edge, %gpio_sim_make_bank_swnode.exit.thread.i
  %retval.0.i117.i = phi ptr [ inttoptr (i32 -12 to ptr), %gpio_sim_make_bank_swnode.exit.thread.i ], [ %retval.0.i.i, %gpio_sim_make_bank_swnode.exit.i.if.then15.i_crit_edge ]
  %call.i85.i = call ptr @fwnode_get_next_child_node(ptr noundef %call4.i, ptr noundef null) #11
  %tobool.not6.i.i = icmp eq ptr %call.i85.i, null
  br i1 %tobool.not6.i.i, label %if.then15.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge, label %if.then15.i.for.body.i.i_crit_edge

if.then15.i.for.body.i.i_crit_edge:               ; preds = %if.then15.i
  br label %for.body.i.i

if.then15.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then15.i.for.body.i.i_crit_edge
  %child.07.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i85.i, %if.then15.i.for.body.i.i_crit_edge ]
  call void @fwnode_remove_software_node(ptr noundef nonnull %child.07.i.i) #11
  %call1.i.i = call ptr @fwnode_get_next_child_node(ptr noundef %call4.i, ptr noundef nonnull %child.07.i.i) #11
  %tobool.not.i86.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i86.i, label %for.body.i.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit.i

gpio_sim_remove_swnode_recursive.exit.i:          ; preds = %for.body.i.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge, %if.then15.i.gpio_sim_remove_swnode_recursive.exit.i_crit_edge
  call void @fwnode_remove_software_node(ptr noundef %call4.i) #11
  br label %if.end13

for.end.i:                                        ; preds = %for.cond.i
  %59 = ptrtoint ptr %bank_list.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn165.i.i = load ptr, ptr %bank_list.i, align 4
  %cmp.not166.i.i = icmp eq ptr %.pn165.i.i, %bank_list.i
  br i1 %cmp.not166.i.i, label %for.end.i.if.end27.i_crit_edge, label %for.end.i.for.body.i91.i_crit_edge

for.end.i.for.body.i91.i_crit_edge:               ; preds = %for.end.i
  br label %for.body.i91.i

for.end.i.if.end27.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

for.cond.loopexit.i90.i:                          ; preds = %for.body11.i.i.for.cond.loopexit.i90.i_crit_edge, %for.body.i91.i.for.cond.loopexit.i90.i_crit_edge
  %num_hogs.1.lcssa.i.i = phi i32 [ %num_hogs.0167.i.i, %for.body.i91.i.for.cond.loopexit.i90.i_crit_edge ], [ %spec.select.i.i, %for.body11.i.i.for.cond.loopexit.i90.i_crit_edge ]
  %60 = ptrtoint ptr %.pn168.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i88.i = load ptr, ptr %.pn168.i.i, align 4
  %cmp.not.i89.i = icmp eq ptr %.pn.i88.i, %bank_list.i
  br i1 %cmp.not.i89.i, label %for.end24.i.i, label %for.cond.loopexit.i90.i.for.body.i91.i_crit_edge

for.cond.loopexit.i90.i.for.body.i91.i_crit_edge: ; preds = %for.cond.loopexit.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91.i

for.body.i91.i:                                   ; preds = %for.cond.loopexit.i90.i.for.body.i91.i_crit_edge, %for.end.i.for.body.i91.i_crit_edge
  %.pn168.i.i = phi ptr [ %.pn.i88.i, %for.cond.loopexit.i90.i.for.body.i91.i_crit_edge ], [ %.pn165.i.i, %for.end.i.for.body.i91.i_crit_edge ]
  %num_hogs.0167.i.i = phi i32 [ %num_hogs.1.lcssa.i.i, %for.cond.loopexit.i90.i.for.body.i91.i_crit_edge ], [ 0, %for.end.i.for.body.i91.i_crit_edge ]
  %line_list.i.i = getelementptr i8, ptr %.pn168.i.i, i32 16
  %61 = ptrtoint ptr %line_list.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn141161.i.i = load ptr, ptr %line_list.i.i, align 4
  %cmp9.not162.i.i = icmp eq ptr %.pn141161.i.i, %line_list.i.i
  br i1 %cmp9.not162.i.i, label %for.body.i91.i.for.cond.loopexit.i90.i_crit_edge, label %for.body.i91.i.for.body11.i.i_crit_edge

for.body.i91.i.for.body11.i.i_crit_edge:          ; preds = %for.body.i91.i
  br label %for.body11.i.i

for.body.i91.i.for.cond.loopexit.i90.i_crit_edge: ; preds = %for.body.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i90.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body.i91.i.for.body11.i.i_crit_edge
  %.pn141164.i.i = phi ptr [ %.pn141.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %.pn141161.i.i, %for.body.i91.i.for.body11.i.i_crit_edge ]
  %num_hogs.1163.i.i = phi i32 [ %spec.select.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %num_hogs.0167.i.i, %for.body.i91.i.for.body11.i.i_crit_edge ]
  %hog12.i.i = getelementptr i8, ptr %.pn141164.i.i, i32 16
  %62 = ptrtoint ptr %hog12.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hog12.i.i, align 4
  %tobool.not.i92.i = icmp ne ptr %63, null
  %inc.i.i = zext i1 %tobool.not.i92.i to i32
  %spec.select.i.i = add i32 %num_hogs.1163.i.i, %inc.i.i
  %64 = ptrtoint ptr %.pn141164.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn141.i.i = load ptr, ptr %.pn141164.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %.pn141.i.i, %line_list.i.i
  br i1 %cmp9.not.i.i, label %for.body11.i.i.for.cond.loopexit.i90.i_crit_edge, label %for.body11.i.i.for.body11.i.i_crit_edge

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i.i

for.body11.i.i.for.cond.loopexit.i90.i_crit_edge: ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i90.i

for.end24.i.i:                                    ; preds = %for.cond.loopexit.i90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hogs.1.lcssa.i.i)
  %tobool25.not.i.i = icmp eq i32 %num_hogs.1.lcssa.i.i, 0
  br i1 %tobool25.not.i.i, label %for.end24.i.i.if.end27.i_crit_edge, label %if.end27.i.i

for.end24.i.i.if.end27.i_crit_edge:               ; preds = %for.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end27.i.i:                                     ; preds = %for.end24.i.i
  %add.i.i = add i32 %num_hogs.1.lcssa.i.i, 1
  %65 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 28) #11
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !169

kcalloc.exit.thread.i.i:                          ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %hogs157.i.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 7
  br label %if.then26.sink.split.i

if.end7.i.i.i.i:                                  ; preds = %if.end27.i.i
  %67 = extractvalue { i32, i1 } %65, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #18
  %hogs.i.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 7
  %68 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i.i.i.i, ptr %hogs.i.i, align 4
  %tobool29.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool29.not.i.i, label %if.end7.i.i.i.i.if.then26.i_crit_edge, label %for.cond37.preheader.i.i

if.end7.i.i.i.i.if.then26.i_crit_edge:            ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

for.cond37.preheader.i.i:                         ; preds = %if.end7.i.i.i.i
  %69 = ptrtoint ptr %bank_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn139178.i.i = load ptr, ptr %bank_list.i, align 4
  %cmp40.not179.i.i = icmp eq ptr %.pn139178.i.i, %bank_list.i
  br i1 %cmp40.not179.i.i, label %for.cond37.preheader.i.i.for.end96.i.i_crit_edge, label %for.body42.lr.ph.i.i

for.cond37.preheader.i.i.for.end96.i.i_crit_edge: ; preds = %for.cond37.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end96.i.i

for.body42.lr.ph.i.i:                             ; preds = %for.cond37.preheader.i.i
  %id.i.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 2
  br label %for.body42.i.i

for.cond37.loopexit.i.i:                          ; preds = %for.inc83.i.i.for.cond37.loopexit.i.i_crit_edge, %for.body42.i.i.for.cond37.loopexit.i.i_crit_edge
  %idx.1.lcssa.i.i = phi i32 [ %idx.0180.i.i, %for.body42.i.i.for.cond37.loopexit.i.i_crit_edge ], [ %idx.2.i.i, %for.inc83.i.i.for.cond37.loopexit.i.i_crit_edge ]
  %70 = ptrtoint ptr %.pn139181.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn139.i.i = load ptr, ptr %.pn139181.i.i, align 4
  %cmp40.not.i.i = icmp eq ptr %.pn139.i.i, %bank_list.i
  br i1 %cmp40.not.i.i, label %for.cond37.loopexit.i.i.for.end96.i.i_crit_edge, label %for.cond37.loopexit.i.i.for.body42.i.i_crit_edge

for.cond37.loopexit.i.i.for.body42.i.i_crit_edge: ; preds = %for.cond37.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42.i.i

for.cond37.loopexit.i.i.for.end96.i.i_crit_edge:  ; preds = %for.cond37.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end96.i.i

for.body42.i.i:                                   ; preds = %for.cond37.loopexit.i.i.for.body42.i.i_crit_edge, %for.body42.lr.ph.i.i
  %.pn139181.i.i = phi ptr [ %.pn139178.i.i, %for.body42.lr.ph.i.i ], [ %.pn139.i.i, %for.cond37.loopexit.i.i.for.body42.i.i_crit_edge ]
  %idx.0180.i.i = phi i32 [ 0, %for.body42.lr.ph.i.i ], [ %idx.1.lcssa.i.i, %for.cond37.loopexit.i.i.for.body42.i.i_crit_edge ]
  %line_list44.i.i = getelementptr i8, ptr %.pn139181.i.i, i32 16
  %71 = ptrtoint ptr %line_list44.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn140170.i.i = load ptr, ptr %line_list44.i.i, align 4
  %cmp51.not171.i.i = icmp eq ptr %.pn140170.i.i, %line_list44.i.i
  br i1 %cmp51.not171.i.i, label %for.body42.i.i.for.cond37.loopexit.i.i_crit_edge, label %for.body53.lr.ph.i.i

for.body42.i.i.for.cond37.loopexit.i.i_crit_edge: ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.loopexit.i.i

for.body53.lr.ph.i.i:                             ; preds = %for.body42.i.i
  %label.i.i97.i = getelementptr i8, ptr %.pn139181.i.i, i32 8
  %swnode.i.i = getelementptr i8, ptr %.pn139181.i.i, i32 24
  br label %for.body53.i.i

for.body53.i.i:                                   ; preds = %for.inc83.i.i.for.body53.i.i_crit_edge, %for.body53.lr.ph.i.i
  %.pn140176.i.i = phi ptr [ %.pn140170.i.i, %for.body53.lr.ph.i.i ], [ %.pn140.i.i, %for.inc83.i.i.for.body53.i.i_crit_edge ]
  %idx.1172.i.i = phi i32 [ %idx.0180.i.i, %for.body53.lr.ph.i.i ], [ %idx.2.i.i, %for.inc83.i.i.for.body53.i.i_crit_edge ]
  %hog54.i.i = getelementptr i8, ptr %.pn140176.i.i, i32 16
  %72 = ptrtoint ptr %hog54.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hog54.i.i, align 4
  %tobool55.not.i.i = icmp eq ptr %73, null
  br i1 %tobool55.not.i.i, label %for.body53.i.i.for.inc83.i.i_crit_edge, label %if.end57.i.i

for.body53.i.i.for.inc83.i.i_crit_edge:           ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc83.i.i

if.end57.i.i:                                     ; preds = %for.body53.i.i
  %74 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hogs.i.i, align 4
  %inc59.i.i = add i32 %idx.1172.i.i, 1
  %76 = ptrtoint ptr %label.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %label.i.i97.i, align 4
  %tobool.not.i.i98.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i98.i, label %if.end57.i.i.if.else.i.i_crit_edge, label %gpio_sim_bank_has_label.exit.i100.i

if.end57.i.i.if.else.i.i_crit_edge:               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

gpio_sim_bank_has_label.exit.i100.i:              ; preds = %if.end57.i.i
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool2.i.not.i99.i = icmp eq i8 %79, 0
  br i1 %tobool2.i.not.i99.i, label %gpio_sim_bank_has_label.exit.i100.i.if.else.i.i_crit_edge, label %if.then61.i.i

gpio_sim_bank_has_label.exit.i100.i.if.else.i.i_crit_edge: ; preds = %gpio_sim_bank_has_label.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then61.i.i:                                    ; preds = %gpio_sim_bank_has_label.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  %call62.i.i = call noalias ptr @kstrdup(ptr noundef nonnull %77, i32 noundef 3264) #11
  br label %if.end66.i.i

if.else.i.i:                                      ; preds = %gpio_sim_bank_has_label.exit.i100.i.if.else.i.i_crit_edge, %if.end57.i.i.if.else.i.i_crit_edge
  %80 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id.i.i, align 4
  %82 = ptrtoint ptr %swnode.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %swnode.i.i, align 4
  %call63.i.i = call ptr @fwnode_get_name(ptr noundef %83) #11
  %call64.i.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, i32 noundef %81, ptr noundef %call63.i.i) #11
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else.i.i, %if.then61.i.i
  %call64.sink.i.i = phi ptr [ %call64.i.i, %if.else.i.i ], [ %call62.i.i, %if.then61.i.i ]
  %chip_label65.i.i = getelementptr %struct.gpiod_hog, ptr %75, i32 %idx.1172.i.i, i32 1
  %84 = ptrtoint ptr %chip_label65.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call64.sink.i.i, ptr %chip_label65.i.i, align 4
  %tobool68.not.i.i = icmp eq ptr %call64.sink.i.i, null
  br i1 %tobool68.not.i.i, label %if.then69.i.i, label %if.end70.i.i

if.then69.i.i:                                    ; preds = %if.end66.i.i
  %85 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hogs.i.i, align 4
  %tobool.not.i142.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i142.i.i, label %if.then69.i.i.if.then26.i_crit_edge, label %if.end.i.i.i

if.then69.i.i.if.then26.i_crit_edge:              ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

if.end.i.i.i:                                     ; preds = %if.then69.i.i
  call void @gpiod_remove_hogs(ptr noundef nonnull %86) #11
  %87 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hogs.i.i, align 4
  %chip_label14.i.i.i = getelementptr inbounds %struct.gpiod_hog, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %chip_label14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chip_label14.i.i.i, align 4
  %tobool3.not15.i.i.i = icmp eq ptr %90, null
  br i1 %tobool3.not15.i.i.i, label %if.end.i.i.i.for.body.i.i101.i_crit_edge, label %if.end.i.i.i.for.end.i.i102.i_crit_edge

if.end.i.i.i.for.end.i.i102.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i102.i

if.end.i.i.i.for.body.i.i101.i_crit_edge:         ; preds = %if.end.i.i.i
  br label %for.body.i.i101.i

for.body.i.i101.i:                                ; preds = %for.body.i.i101.i.for.body.i.i101.i_crit_edge, %if.end.i.i.i.for.body.i.i101.i_crit_edge
  %hog.016.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i101.i.for.body.i.i101.i_crit_edge ], [ %88, %if.end.i.i.i.for.body.i.i101.i_crit_edge ]
  call void @kfree(ptr noundef null) #11
  %line_name.i.i.i = getelementptr inbounds %struct.gpiod_hog, ptr %hog.016.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %line_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %line_name.i.i.i, align 4
  call void @kfree(ptr noundef %92) #11
  %incdec.ptr.i.i.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i.i.i, i32 1
  %chip_label.i.i.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i.i.i, i32 1, i32 1
  %93 = ptrtoint ptr %chip_label.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chip_label.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %94, null
  br i1 %tobool3.not.i.i.i, label %for.body.i.i101.i.for.body.i.i101.i_crit_edge, label %for.body.i.i101.i.for.end.i.i102.i_crit_edge

for.body.i.i101.i.for.end.i.i102.i_crit_edge:     ; preds = %for.body.i.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i102.i

for.body.i.i101.i.for.body.i.i101.i_crit_edge:    ; preds = %for.body.i.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i101.i

for.end.i.i102.i:                                 ; preds = %for.body.i.i101.i.for.end.i.i102.i_crit_edge, %if.end.i.i.i.for.end.i.i102.i_crit_edge
  %95 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hogs.i.i, align 4
  call void @kfree(ptr noundef %96) #11
  br label %if.then26.sink.split.i

if.end70.i.i:                                     ; preds = %if.end66.i.i
  %97 = ptrtoint ptr %hog54.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hog54.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name.i.i, align 4
  %tobool72.not.i.i = icmp eq ptr %100, null
  br i1 %tobool72.not.i.i, label %if.end70.i.i.if.end81.i.i_crit_edge, label %if.then73.i.i

if.end70.i.i.if.end81.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i.i

if.then73.i.i:                                    ; preds = %if.end70.i.i
  %call76.i.i = call noalias ptr @kstrdup(ptr noundef nonnull %100, i32 noundef 3264) #11
  %line_name.i.i = getelementptr %struct.gpiod_hog, ptr %75, i32 %idx.1172.i.i, i32 3
  %101 = ptrtoint ptr %line_name.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call76.i.i, ptr %line_name.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %call76.i.i, null
  br i1 %tobool78.not.i.i, label %if.then79.i.i, label %if.then73.i.i.if.end81.i.i_crit_edge

if.then73.i.i.if.end81.i.i_crit_edge:             ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i.i

if.then79.i.i:                                    ; preds = %if.then73.i.i
  %102 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hogs.i.i, align 4
  %tobool.not.i144.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i144.i.i, label %if.then79.i.i.if.then26.i_crit_edge, label %if.end.i147.i.i

if.then79.i.i.if.then26.i_crit_edge:              ; preds = %if.then79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

if.end.i147.i.i:                                  ; preds = %if.then79.i.i
  call void @gpiod_remove_hogs(ptr noundef nonnull %103) #11
  %104 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hogs.i.i, align 4
  %chip_label14.i145.i.i = getelementptr inbounds %struct.gpiod_hog, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %chip_label14.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %chip_label14.i145.i.i, align 4
  %tobool3.not15.i146.i.i = icmp eq ptr %107, null
  br i1 %tobool3.not15.i146.i.i, label %if.end.i147.i.i.for.body.i153.i.i_crit_edge, label %if.end.i147.i.i.for.end.i154.i.i_crit_edge

if.end.i147.i.i.for.end.i154.i.i_crit_edge:       ; preds = %if.end.i147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i154.i.i

if.end.i147.i.i.for.body.i153.i.i_crit_edge:      ; preds = %if.end.i147.i.i
  br label %for.body.i153.i.i

for.body.i153.i.i:                                ; preds = %for.body.i153.i.i.for.body.i153.i.i_crit_edge, %if.end.i147.i.i.for.body.i153.i.i_crit_edge
  %hog.016.i148.i.i = phi ptr [ %incdec.ptr.i150.i.i, %for.body.i153.i.i.for.body.i153.i.i_crit_edge ], [ %105, %if.end.i147.i.i.for.body.i153.i.i_crit_edge ]
  call void @kfree(ptr noundef null) #11
  %line_name.i149.i.i = getelementptr inbounds %struct.gpiod_hog, ptr %hog.016.i148.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %line_name.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %line_name.i149.i.i, align 4
  call void @kfree(ptr noundef %109) #11
  %incdec.ptr.i150.i.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i148.i.i, i32 1
  %chip_label.i151.i.i = getelementptr %struct.gpiod_hog, ptr %hog.016.i148.i.i, i32 1, i32 1
  %110 = ptrtoint ptr %chip_label.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chip_label.i151.i.i, align 4
  %tobool3.not.i152.i.i = icmp eq ptr %111, null
  br i1 %tobool3.not.i152.i.i, label %for.body.i153.i.i.for.body.i153.i.i_crit_edge, label %for.body.i153.i.i.for.end.i154.i.i_crit_edge

for.body.i153.i.i.for.end.i154.i.i_crit_edge:     ; preds = %for.body.i153.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i154.i.i

for.body.i153.i.i.for.body.i153.i.i_crit_edge:    ; preds = %for.body.i153.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i153.i.i

for.end.i154.i.i:                                 ; preds = %for.body.i153.i.i.for.end.i154.i.i_crit_edge, %if.end.i147.i.i.for.end.i154.i.i_crit_edge
  %112 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hogs.i.i, align 4
  call void @kfree(ptr noundef %113) #11
  br label %if.then26.sink.split.i

if.end81.i.i:                                     ; preds = %if.then73.i.i.if.end81.i.i_crit_edge, %if.end70.i.i.if.end81.i.i_crit_edge
  %offset.i.i = getelementptr i8, ptr %.pn140176.i.i, i32 8
  %114 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %offset.i.i, align 4
  %conv.i103.i = trunc i32 %115 to i16
  %chip_hwnum.i.i = getelementptr %struct.gpiod_hog, ptr %75, i32 %idx.1172.i.i, i32 2
  %116 = ptrtoint ptr %chip_hwnum.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i103.i, ptr %chip_hwnum.i.i, align 4
  %117 = ptrtoint ptr %hog54.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hog54.i.i, align 4
  %dir.i.i = getelementptr inbounds %struct.gpio_sim_hog, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dir.i.i, align 4
  %dflags.i.i = getelementptr %struct.gpiod_hog, ptr %75, i32 %idx.1172.i.i, i32 5
  %121 = ptrtoint ptr %dflags.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %dflags.i.i, align 4
  br label %for.inc83.i.i

for.inc83.i.i:                                    ; preds = %if.end81.i.i, %for.body53.i.i.for.inc83.i.i_crit_edge
  %idx.2.i.i = phi i32 [ %inc59.i.i, %if.end81.i.i ], [ %idx.1172.i.i, %for.body53.i.i.for.inc83.i.i_crit_edge ]
  %122 = ptrtoint ptr %.pn140176.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn140.i.i = load ptr, ptr %.pn140176.i.i, align 4
  %cmp51.not.i.i = icmp eq ptr %.pn140.i.i, %line_list44.i.i
  br i1 %cmp51.not.i.i, label %for.inc83.i.i.for.cond37.loopexit.i.i_crit_edge, label %for.inc83.i.i.for.body53.i.i_crit_edge

for.inc83.i.i.for.body53.i.i_crit_edge:           ; preds = %for.inc83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53.i.i

for.inc83.i.i.for.cond37.loopexit.i.i_crit_edge:  ; preds = %for.inc83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.loopexit.i.i

for.end96.i.i:                                    ; preds = %for.cond37.loopexit.i.i.for.end96.i.i_crit_edge, %for.cond37.preheader.i.i.for.end96.i.i_crit_edge
  %123 = ptrtoint ptr %hogs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hogs.i.i, align 4
  call void @gpiod_add_hogs(ptr noundef %124) #11
  br label %if.end27.i

if.then26.sink.split.i:                           ; preds = %for.end.i154.i.i, %for.end.i.i102.i, %kcalloc.exit.thread.i.i
  %hogs157.i.sink.i = phi ptr [ %hogs157.i.i, %kcalloc.exit.thread.i.i ], [ %hogs.i.i, %for.end.i.i102.i ], [ %hogs.i.i, %for.end.i154.i.i ]
  %125 = ptrtoint ptr %hogs157.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %hogs157.i.sink.i, align 4
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then26.sink.split.i, %if.then79.i.i.if.then26.i_crit_edge, %if.then69.i.i.if.then26.i_crit_edge, %if.end7.i.i.i.i.if.then26.i_crit_edge
  %call.i105.i = call ptr @fwnode_get_next_child_node(ptr noundef %call4.i, ptr noundef null) #11
  %tobool.not6.i106.i = icmp eq ptr %call.i105.i, null
  br i1 %tobool.not6.i106.i, label %if.then26.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge, label %if.then26.i.for.body.i110.i_crit_edge

if.then26.i.for.body.i110.i_crit_edge:            ; preds = %if.then26.i
  br label %for.body.i110.i

if.then26.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit111.i

for.body.i110.i:                                  ; preds = %for.body.i110.i.for.body.i110.i_crit_edge, %if.then26.i.for.body.i110.i_crit_edge
  %child.07.i107.i = phi ptr [ %call1.i108.i, %for.body.i110.i.for.body.i110.i_crit_edge ], [ %call.i105.i, %if.then26.i.for.body.i110.i_crit_edge ]
  call void @fwnode_remove_software_node(ptr noundef nonnull %child.07.i107.i) #11
  %call1.i108.i = call ptr @fwnode_get_next_child_node(ptr noundef %call4.i, ptr noundef nonnull %child.07.i107.i) #11
  %tobool.not.i109.i = icmp eq ptr %call1.i108.i, null
  br i1 %tobool.not.i109.i, label %for.body.i110.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge, label %for.body.i110.i.for.body.i110.i_crit_edge

for.body.i110.i.for.body.i110.i_crit_edge:        ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i110.i

for.body.i110.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge: ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_remove_swnode_recursive.exit111.i

gpio_sim_remove_swnode_recursive.exit111.i:       ; preds = %for.body.i110.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge, %if.then26.i.gpio_sim_remove_swnode_recursive.exit111.i_crit_edge
  call void @fwnode_remove_software_node(ptr noundef %call4.i) #11
  br label %if.end13.thread33

if.end27.i:                                       ; preds = %for.end96.i.i, %for.end24.i.i.if.end27.i_crit_edge, %for.end.i.if.end27.i_crit_edge
  %name.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %126 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.28, ptr %name.i, align 4
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %127 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call4.i, ptr %fwnode.i, align 4
  %id.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 2
  %128 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %id.i, align 4
  %id28.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 4
  %130 = ptrtoint ptr %id28.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %id28.i, align 8
  %probe_completion.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 5
  %131 = ptrtoint ptr %probe_completion.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %probe_completion.i, align 4
  %driver_bound.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 6
  %132 = ptrtoint ptr %driver_bound.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %driver_bound.i, align 4
  %bus_notifier.i = getelementptr inbounds %struct.gpio_sim_device, ptr %item, i32 0, i32 4
  %call29.i = call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef %bus_notifier.i) #11
  %call30.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #11
  %cmp.i112.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %if.then32.i, label %if.end36.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = call i32 @bus_unregister_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef %bus_notifier.i) #11
  call fastcc void @gpio_sim_remove_hogs(ptr noundef %item) #11
  call fastcc void @gpio_sim_remove_swnode_recursive(ptr noundef %call4.i) #11
  br label %if.end13

if.end36.i:                                       ; preds = %if.end27.i
  call void @wait_for_completion(ptr noundef %probe_completion.i) #11
  %call39.i = call i32 @bus_unregister_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef %bus_notifier.i) #11
  %133 = ptrtoint ptr %driver_bound.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %driver_bound.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool41.not.i = icmp eq i8 %134, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end13.thread36

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @platform_device_unregister(ptr noundef %call30.i) #11
  call fastcc void @gpio_sim_remove_hogs(ptr noundef %item) #11
  call fastcc void @gpio_sim_remove_swnode_recursive(ptr noundef %call4.i) #11
  br label %if.end13.thread33

if.end13.thread36:                                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %pdev.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call30.i, ptr %pdev.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  br label %.sink.split

if.end13.thread29:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @gpio_sim_device_deactivate_unlocked(ptr noundef %item)
  br label %.sink.split

if.end13.thread:                                  ; preds = %land.lhs.true5.if.end13.thread_crit_edge, %land.lhs.true.if.end13.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end13.thread33:                                ; preds = %if.then42.i, %gpio_sim_remove_swnode_recursive.exit111.i, %if.end.i.i.if.end13.thread33_crit_edge, %if.then9.if.end13.thread33_crit_edge
  %retval.0.i.ph = phi i32 [ -61, %if.then9.if.end13.thread33_crit_edge ], [ -6, %if.then42.i ], [ -12, %gpio_sim_remove_swnode_recursive.exit111.i ], [ -22, %if.end.i.i.if.end13.thread33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end13:                                         ; preds = %if.then32.i, %gpio_sim_remove_swnode_recursive.exit.i, %if.end3.i.if.end13_crit_edge
  %retval.0.i.in = phi ptr [ %retval.0.i117.i, %gpio_sim_remove_swnode_recursive.exit.i ], [ %call30.i, %if.then32.i ], [ %call4.i, %if.end3.i.if.end13_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  %tobool15.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool15.not, label %if.end13._crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13._crit_edge:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %136

.sink.split:                                      ; preds = %if.end13.thread29, %if.end13.thread36
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %136

136:                                              ; preds = %.sink.split, %if.end13._crit_edge
  br label %cleanup

cleanup:                                          ; preds = %136, %if.end13.cleanup_crit_edge, %if.end13.thread33, %if.end13.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %136 ], [ %retval.0.i, %if.end13.cleanup_crit_edge ], [ -1, %if.end13.thread ], [ %retval.0.i.ph, %if.end13.thread33 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %live) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_hogs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %label.i = alloca ptr, align 4
  %num_lines.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #11
  %tobool.not46 = icmp eq ptr %call, null
  br i1 %tobool.not46, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %gpio_sim_add_bank.exit.thread26.for.body_crit_edge, %for.body.lr.ph
  %swnode.047 = phi ptr [ %call, %for.body.lr.ph ], [ %call4, %gpio_sim_add_bank.exit.thread26.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label.i) #11
  %0 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %label.i, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lines.i) #11
  %1 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_lines.i, align 4, !annotation !167
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %swnode.047, ptr noundef nonnull @.str.29, ptr noundef nonnull %num_lines.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.gpio_sim_add_bank.exit.thread_crit_edge

for.body.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end.i:                                         ; preds = %for.body
  %call1.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %swnode.047, ptr noundef nonnull @.str.30, ptr noundef nonnull %label.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.dev_name.exit.i_crit_edge

if.then3.i.dev_name.exit.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then3.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then3.i.dev_name.exit.i_crit_edge ]
  %call5.i = call ptr @fwnode_get_name(ptr noundef nonnull %swnode.047) #11
  %call6.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i, ptr noundef %call5.i) #11
  %6 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6.i, ptr %label.i, align 4
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %dev_name.exit.i.gpio_sim_add_bank.exit.thread_crit_edge, label %dev_name.exit.i.if.end10.i_crit_edge

dev_name.exit.i.if.end10.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

dev_name.exit.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end10.i:                                       ; preds = %dev_name.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %call.i106.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 460, i32 noundef 3520) #11
  %tobool12.not.i = icmp eq ptr %call.i106.i, null
  br i1 %tobool12.not.i, label %if.end10.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end14.i

if.end10.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %7 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_lines.i, align 4
  %call15.i = call ptr @devm_bitmap_alloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3264) #11
  %direction_map.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 1
  %9 = ptrtoint ptr %direction_map.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15.i, ptr %direction_map.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %if.end14.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end19.i

if.end14.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end19.i:                                       ; preds = %if.end14.i
  %10 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_lines.i, align 4
  %sub.i.i = add i32 %11, 31
  %12 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %12, 536870908
  %13 = call ptr @memset(ptr %call15.i, i32 255, i32 %mul.i.i)
  %14 = load i32, ptr %num_lines.i, align 4
  %call21.i = call ptr @devm_bitmap_zalloc(ptr noundef %dev1, i32 noundef %14, i32 noundef 3264) #11
  %value_map.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 2
  %15 = ptrtoint ptr %value_map.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21.i, ptr %value_map.i, align 4
  %tobool23.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not.i, label %if.end19.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end25.i

if.end19.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end25.i:                                       ; preds = %if.end19.i
  %16 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_lines.i, align 4
  %call26.i = call ptr @devm_bitmap_zalloc(ptr noundef %dev1, i32 noundef %17, i32 noundef 3264) #11
  %pull_map.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 3
  %18 = ptrtoint ptr %pull_map.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26.i, ptr %pull_map.i, align 4
  %tobool28.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool28.not.i, label %if.end25.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end30.i

if.end25.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  %19 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_lines.i, align 4
  %call31.i = call ptr @devm_irq_domain_create_sim(ptr noundef %dev1, ptr noundef null, i32 noundef %20) #11
  %irq_sim.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 4
  %21 = ptrtoint ptr %irq_sim.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call31.i, ptr %irq_sim.i, align 4
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gpio_sim_add_bank.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end30.i
  %lock.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @gpio_sim_add_bank.__key) #11
  %call.i107.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @gpio_sim_mutex_destroy, ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool.not.i108.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool.not.i108.i, label %if.end42.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_destroy(ptr noundef %lock.i) #11
  br label %gpio_sim_add_bank.exit.thread

if.end42.i:                                       ; preds = %do.body.i
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 19
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %base.i, align 4
  %23 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_lines.i, align 4
  %conv.i = trunc i32 %24 to i16
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 20
  %25 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %26 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %label.i, align 4
  %28 = ptrtoint ptr %call.i106.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %call.i106.i, align 4
  %owner.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 4
  %29 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner.i, align 4
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 2
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev1, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 3
  %31 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %swnode.047, ptr %fwnode.i, align 4
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 10
  %32 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gpio_sim_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 12
  %33 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @gpio_sim_set, ptr %set.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 11
  %34 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @gpio_sim_get_multiple, ptr %get_multiple.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 13
  %35 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @gpio_sim_set_multiple, ptr %set_multiple.i, align 4
  %direction_output.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 9
  %36 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @gpio_sim_direction_output, ptr %direction_output.i, align 4
  %direction_input.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 8
  %37 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gpio_sim_direction_input, ptr %direction_input.i, align 4
  %get_direction.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 7
  %38 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gpio_sim_get_direction, ptr %get_direction.i, align 4
  %set_config.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 14
  %39 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gpio_sim_set_config, ptr %set_config.i, align 4
  %to_irq.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 15
  %40 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @gpio_sim_to_irq, ptr %to_irq.i, align 4
  %free.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 6
  %41 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @gpio_sim_free, ptr %free.i, align 4
  %call45.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i106.i, ptr noundef nonnull %call.i106.i, ptr noundef nonnull @gpio_sim_add_bank.lock_key, ptr noundef nonnull @gpio_sim_add_bank.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end42.i.gpio_sim_add_bank.exit.thread_crit_edge

if.end42.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end48.i:                                       ; preds = %if.end42.i
  %gpiodev.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i106.i, i32 0, i32 1
  %42 = ptrtoint ptr %gpiodev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpiodev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gpio_device, ptr %43, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i106.i, ptr %driver_data.i.i, align 4
  %45 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ngpio.i, align 4
  %conv.i14 = zext i16 %46 to i32
  %47 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i, align 4
  %add.i = shl nuw nsw i32 %conv.i14, 2
  %49 = add nuw nsw i32 %add.i, 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef %49, i32 noundef 3520) #11
  %attr_groups.i = getelementptr inbounds %struct.gpio_sim_chip, ptr %call.i106.i, i32 0, i32 6
  %50 = ptrtoint ptr %attr_groups.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i.i, ptr %attr_groups.i, align 4
  %tobool.not.i16 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i16, label %if.end48.i.gpio_sim_add_bank.exit.thread_crit_edge, label %for.cond.preheader.i

if.end48.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

for.cond.preheader.i:                             ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp111.not.i = icmp eq i16 %46, 0
  br i1 %cmp111.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %if.end20.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0112.i = phi i32 [ %inc.i, %if.end20.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i.i17 = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 20, i32 noundef 3520) #11
  %call5.i.i102.i = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 12, i32 noundef 3520) #11
  %call.i105.i = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 32, i32 noundef 3520) #11
  %call.i106.i18 = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 32, i32 noundef 3520) #11
  %tobool8.not.i = icmp eq ptr %call.i.i17, null
  %tobool9.not.i = icmp eq ptr %call5.i.i102.i, null
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %tobool9.not.i
  %tobool11.not.i = icmp eq ptr %call.i105.i, null
  %or.cond100.i = select i1 %or.cond.i, i1 true, i1 %tobool11.not.i
  %tobool13.not.i = icmp eq ptr %call.i106.i18, null
  %or.cond101.i = select i1 %or.cond100.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond101.i, label %for.body.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end15.i

for.body.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end15.i:                                       ; preds = %for.body.i
  %call16.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %48, i32 noundef 3264, ptr noundef nonnull @.str.37, i32 noundef %i.0112.i) #11
  %51 = ptrtoint ptr %call.i.i17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call16.i, ptr %call.i.i17, align 4
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %if.end15.i.gpio_sim_add_bank.exit.thread_crit_edge, label %if.end20.i

if.end15.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end20.i:                                       ; preds = %if.end15.i
  %offset.i = getelementptr inbounds %struct.gpio_sim_attribute, ptr %call.i106.i18, i32 0, i32 1
  %52 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %i.0112.i, ptr %offset.i, align 4
  %offset21.i = getelementptr inbounds %struct.gpio_sim_attribute, ptr %call.i105.i, i32 0, i32 1
  %53 = ptrtoint ptr %offset21.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0112.i, ptr %offset21.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i105.i, i32 0, i32 3
  %54 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @gpio_sim_setup_sysfs.__key, ptr %key.i, align 4
  %key25.i = getelementptr inbounds %struct.attribute, ptr %call.i106.i18, i32 0, i32 3
  %55 = ptrtoint ptr %key25.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @gpio_sim_setup_sysfs.__key.38, ptr %key25.i, align 4
  %56 = ptrtoint ptr %call.i105.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.39, ptr %call.i105.i, align 4
  %57 = ptrtoint ptr %call.i106.i18 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.40, ptr %call.i106.i18, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i106.i18, i32 0, i32 1
  %58 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 420, ptr %mode.i, align 4
  %mode34.i = getelementptr inbounds %struct.attribute, ptr %call.i105.i, i32 0, i32 1
  %59 = ptrtoint ptr %mode34.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 420, ptr %mode34.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i105.i, i32 0, i32 1
  %60 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @gpio_sim_sysfs_val_show, ptr %show.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %call.i105.i, i32 0, i32 2
  %61 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @gpio_sim_sysfs_val_store, ptr %store.i, align 4
  %show35.i = getelementptr inbounds %struct.device_attribute, ptr %call.i106.i18, i32 0, i32 1
  %62 = ptrtoint ptr %show35.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @gpio_sim_sysfs_pull_show, ptr %show35.i, align 4
  %store36.i = getelementptr inbounds %struct.device_attribute, ptr %call.i106.i18, i32 0, i32 2
  %63 = ptrtoint ptr %store36.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @gpio_sim_sysfs_pull_store, ptr %store36.i, align 4
  %64 = ptrtoint ptr %call5.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i105.i, ptr %call5.i.i102.i, align 4
  %arrayidx39.i = getelementptr ptr, ptr %call5.i.i102.i, i32 1
  %65 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i106.i18, ptr %arrayidx39.i, align 4
  %attrs40.i = getelementptr inbounds %struct.attribute_group, ptr %call.i.i17, i32 0, i32 3
  %66 = ptrtoint ptr %attrs40.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call5.i.i102.i, ptr %attrs40.i, align 4
  %67 = ptrtoint ptr %attr_groups.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attr_groups.i, align 4
  %arrayidx42.i = getelementptr ptr, ptr %68, i32 %i.0112.i
  %69 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i17, ptr %arrayidx42.i, align 4
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i14
  br i1 %exitcond.not.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body.i_crit_edge

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end20.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %70 = ptrtoint ptr %gpiodev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gpiodev.i, align 4
  %dev44.i = getelementptr inbounds %struct.gpio_device, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %attr_groups.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %attr_groups.i, align 4
  %call46.i = call i32 @sysfs_create_groups(ptr noundef %dev44.i, ptr noundef %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %for.end.i.gpio_sim_add_bank.exit.thread_crit_edge

for.end.i.gpio_sim_add_bank.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gpio_sim_add_bank.exit.thread

if.end49.i:                                       ; preds = %for.end.i
  %call.i107.i20 = call i32 @devm_add_action(ptr noundef %48, ptr noundef nonnull @gpio_sim_sysfs_remove, ptr noundef %call.i106.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i20)
  %tobool.not.i.i21 = icmp eq i32 %call.i107.i20, 0
  br i1 %tobool.not.i.i21, label %gpio_sim_add_bank.exit.thread26, label %if.then.i.i

gpio_sim_add_bank.exit.thread26:                  ; preds = %if.end49.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lines.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #11
  %call4 = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %swnode.047) #11
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %gpio_sim_add_bank.exit.thread26.cleanup_crit_edge, label %gpio_sim_add_bank.exit.thread26.for.body_crit_edge

gpio_sim_add_bank.exit.thread26.for.body_crit_edge: ; preds = %gpio_sim_add_bank.exit.thread26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

gpio_sim_add_bank.exit.thread26.cleanup_crit_edge: ; preds = %gpio_sim_add_bank.exit.thread26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %gpiodev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gpiodev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.gpio_device, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %attr_groups.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %attr_groups.i, align 4
  call void @sysfs_remove_groups(ptr noundef %dev.i.i, ptr noundef %77) #11
  br label %gpio_sim_add_bank.exit.thread

gpio_sim_add_bank.exit.thread:                    ; preds = %if.then.i.i, %for.end.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end15.i.gpio_sim_add_bank.exit.thread_crit_edge, %for.body.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end48.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end42.i.gpio_sim_add_bank.exit.thread_crit_edge, %devm_add_action_or_reset.exit.i, %if.end25.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end19.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end14.i.gpio_sim_add_bank.exit.thread_crit_edge, %if.end10.i.gpio_sim_add_bank.exit.thread_crit_edge, %dev_name.exit.i.gpio_sim_add_bank.exit.thread_crit_edge, %for.body.gpio_sim_add_bank.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i107.i20, %if.then.i.i ], [ %call.i107.i, %devm_add_action_or_reset.exit.i ], [ -12, %if.end15.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %for.body.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ %call46.i, %for.end.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %if.end48.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ %call45.i, %if.end42.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %if.end25.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %if.end19.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %if.end14.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %if.end10.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ -12, %dev_name.exit.i.gpio_sim_add_bank.exit.thread_crit_edge ], [ %call.i.i, %for.body.gpio_sim_add_bank.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lines.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #11
  br label %if.then

gpio_sim_add_bank.exit:                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %call31.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lines.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #11
  br label %if.then

if.then:                                          ; preds = %gpio_sim_add_bank.exit, %gpio_sim_add_bank.exit.thread
  %retval.0.i25 = phi i32 [ %retval.0.i.ph, %gpio_sim_add_bank.exit.thread ], [ %78, %gpio_sim_add_bank.exit ]
  call void @fwnode_handle_put(ptr noundef nonnull %swnode.047) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %gpio_sim_add_bank.exit.thread26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i25, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %gpio_sim_add_bank.exit.thread26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_domain_create_sim(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_mutex_destroy(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_get(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_map, align 4
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %4 = lshr i32 %3, %and.i
  %5 = and i32 %4, 1
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %rem.i.i = and i32 %offset, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %offset, 5
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 %div2.i.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %3, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i = xor i32 %shl.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %5, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_get_multiple(ptr noundef %gc, ptr nocapture noundef readnone %mask, ptr nocapture noundef writeonly %bits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_map, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv, 31
  %4 = lshr i32 %sub.i, 3
  %mul.i = and i32 %4, 16380
  %5 = call ptr @memcpy(ptr %bits, ptr %1, i32 %mul.i)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_set_multiple(ptr noundef %gc, ptr nocapture noundef readnone %mask, ptr nocapture noundef readonly %bits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_map, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv, 31
  %4 = lshr i32 %sub.i, 3
  %mul.i = and i32 %4, 16380
  %5 = call ptr @memcpy(ptr %1, ptr %bits, i32 %mul.i)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %direction_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %direction_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direction_map, align 4
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %offset, 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 %div2.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %7, %neg.i
  %or.i.i = or i32 %7, %shl.i
  %and.i.sink.i = select i1 %tobool.not, i32 %and.i.i, i32 %or.i.i
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_direction_input(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %direction_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %direction_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direction_map, align 4
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %offset, 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 %div2.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %3, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_get_direction(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %direction_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %direction_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %direction_map, align 4
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %4 = lshr i32 %3, %and.i
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %entry.cleanup.sink.split_crit_edge
    i8 3, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  tail call fastcc void @gpio_sim_apply_pull(ptr noundef %call, i32 noundef %offset, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_to_irq(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %irq_sim = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %irq_sim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_sim, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %1, i32 noundef %offset, ptr noundef null) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_free(ptr noundef %gc, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value_map, align 4
  %pull_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %pull_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pull_map, align 4
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 %div3.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %9, %6
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i = xor i32 %6, -1
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
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_sim_apply_pull(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiodev, align 4
  %descs = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %chip, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %flags = getelementptr %struct.gpio_desc, ptr %3, i32 %offset, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.set_value_crit_edge, label %land.lhs.true

entry.set_value_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.set_value_crit_edge

land.lhs.true.set_value_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

if.then:                                          ; preds = %land.lhs.true
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value_map, align 4
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %10, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %13 = lshr i32 %12, %and.i
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %value)
  %cmp = icmp eq i32 %14, %value
  br i1 %cmp, label %if.then.set_pull_crit_edge, label %if.end

if.then.set_pull_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_pull

if.end:                                           ; preds = %if.then
  %irq_sim = getelementptr inbounds %struct.gpio_sim_chip, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %irq_sim to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_sim, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #11
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4, !annotation !167
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef %offset, ptr noundef nonnull %irq.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #11
  br label %set_value

irq_find_mapping.exit:                            ; preds = %if.end
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %irq_find_mapping.exit.set_value_crit_edge, label %if.end12

irq_find_mapping.exit.set_value_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

if.end12:                                         ; preds = %irq_find_mapping.exit
  %call.i20 = call ptr @irq_get_irq_data(i32 noundef %19) #11
  %tobool.not.i21 = icmp eq ptr %call.i20, null
  br i1 %tobool.not.i21, label %if.end12.set_value_crit_edge, label %irq_get_trigger_type.exit

if.end12.set_value_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

irq_get_trigger_type.exit:                        ; preds = %if.end12
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i20, i32 0, i32 3
  %20 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool14.not = icmp eq i32 %value, 0
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %lor.lhs.false, label %irq_get_trigger_type.exit.if.then21_crit_edge

irq_get_trigger_type.exit.if.then21_crit_edge:    ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.lhs.false:                                    ; preds = %irq_get_trigger_type.exit
  %tobool14.not.not = xor i1 %tobool14.not, true
  %and19 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond1 = select i1 %tobool14.not.not, i1 true, i1 %tobool20.not
  br i1 %or.cond1, label %lor.lhs.false.set_value_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

lor.lhs.false.set_value_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %irq_get_trigger_type.exit.if.then21_crit_edge
  %call22 = call i32 @irq_set_irqchip_state(i32 noundef %19, i32 noundef 0, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.set_value_crit_edge, label %if.then21.set_pull_crit_edge

if.then21.set_pull_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_pull

if.then21.set_value_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_value

set_value:                                        ; preds = %if.then21.set_value_crit_edge, %lor.lhs.false.set_value_crit_edge, %if.end12.set_value_crit_edge, %irq_find_mapping.exit.set_value_crit_edge, %irq_find_mapping.exit.thread, %land.lhs.true.set_value_crit_edge, %entry.set_value_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %and1.i5 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i5)
  %tobool30.not = icmp eq i32 %and1.i5, 0
  br i1 %tobool30.not, label %set_value.if.then35_crit_edge, label %lor.lhs.false31

set_value.if.then35_crit_edge:                    ; preds = %set_value
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false31:                                  ; preds = %set_value
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not = icmp eq i32 %28, 0
  br i1 %tobool34.not, label %lor.lhs.false31.if.then35_crit_edge, label %lor.lhs.false31.set_pull_crit_edge

lor.lhs.false31.if.then35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false31.set_pull_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %offset, 31
  %.pre38 = lshr i32 %offset, 5
  br label %set_pull

if.then35:                                        ; preds = %lor.lhs.false31.if.then35_crit_edge, %set_value.if.then35_crit_edge
  %value_map36 = getelementptr inbounds %struct.gpio_sim_chip, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %value_map36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value_map36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool37.not = icmp eq i32 %value, 0
  %rem.i.i = and i32 %offset, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %offset, 5
  %add.ptr.i.i = getelementptr i32, ptr %30, i32 %div2.i.i
  br i1 %tobool37.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %32, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i = xor i32 %shl.i.i, -1
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %34, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  br label %set_pull

set_pull:                                         ; preds = %__assign_bit.exit, %lor.lhs.false31.set_pull_crit_edge, %if.then21.set_pull_crit_edge, %if.then.set_pull_crit_edge
  %div2.i.i10.pre-phi = phi i32 [ %.pre38, %lor.lhs.false31.set_pull_crit_edge ], [ %div2.i.i, %__assign_bit.exit ], [ %div3.i, %if.then21.set_pull_crit_edge ], [ %div3.i, %if.then.set_pull_crit_edge ]
  %rem.i.i8.pre-phi = phi i32 [ %.pre, %lor.lhs.false31.set_pull_crit_edge ], [ %rem.i.i, %__assign_bit.exit ], [ %and.i, %if.then21.set_pull_crit_edge ], [ %and.i, %if.then.set_pull_crit_edge ]
  %pull_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %chip, i32 0, i32 3
  %36 = ptrtoint ptr %pull_map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pull_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool39.not = icmp eq i32 %value, 0
  %shl.i.i9 = shl nuw i32 1, %rem.i.i8.pre-phi
  %add.ptr.i.i11 = getelementptr i32, ptr %37, i32 %div2.i.i10.pre-phi
  br i1 %tobool39.not, label %if.else.i16, label %if.then.i13

if.then.i13:                                      ; preds = %set_pull
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %add.ptr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i11, align 4
  %or.i.i12 = or i32 %39, %shl.i.i9
  br label %__assign_bit.exit18

if.else.i16:                                      ; preds = %set_pull
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i14 = xor i32 %shl.i.i9, -1
  %40 = ptrtoint ptr %add.ptr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i11, align 4
  %and.i.i15 = and i32 %41, %neg.i.i14
  br label %__assign_bit.exit18

__assign_bit.exit18:                              ; preds = %if.else.i16, %if.then.i13
  %and.i.sink.i17 = phi i32 [ %and.i.i15, %if.else.i16 ], [ %or.i.i12, %if.then.i13 ]
  %42 = ptrtoint ptr %add.ptr.i.i11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i.sink.i17, ptr %add.ptr.i.i11, align 4
  call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irqchip_state(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_sysfs_val_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %offset = getelementptr inbounds %struct.gpio_sim_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %value_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %value_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value_map, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %8 = lshr i32 %7, %and.i
  %9 = and i32 %8, 1
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %9) #11
  ret i32 %call5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_sim_sysfs_val_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_sysfs_pull_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_sim_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %offset = getelementptr inbounds %struct.gpio_sim_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %pull_map = getelementptr inbounds %struct.gpio_sim_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pull_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pull_map, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %8 = lshr i32 %7, %and.i
  %9 = and i32 %8, 1
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %arrayidx = getelementptr [2 x ptr], ptr @gpio_sim_sysfs_pull_strings, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, ptr noundef %11) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_sim_sysfs_pull_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @gpio_sim_sysfs_pull_strings, i32 noundef 2, ptr noundef %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offset = getelementptr inbounds %struct.gpio_sim_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  tail call fastcc void @gpio_sim_apply_pull(ptr noundef %1, i32 noundef %3, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_sim_sysfs_remove(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiodev, align 4
  %dev = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1
  %attr_groups = getelementptr inbounds %struct.gpio_sim_chip, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %attr_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr_groups, align 4
  tail call void @sysfs_remove_groups(ptr noundef %dev, ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !96, !98, !99, !101, !103, !105, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !135, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_gpio_sim__227_1591_gpio_sim_init6, !1, !"__initcall__kmod_gpio_sim__227_1591_gpio_sim_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-sim.c", i32 1591, i32 1}
!2 = !{ptr @__exitcall_gpio_sim_exit, !3, !"__exitcall_gpio_sim_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-sim.c", i32 1599, i32 1}
!4 = !{ptr @__UNIQUE_ID_author228, !5, !"__UNIQUE_ID_author228", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-sim.c", i32 1601, i32 1}
!6 = !{ptr @__UNIQUE_ID_description229, !7, !"__UNIQUE_ID_description229", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-sim.c", i32 1602, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-sim.c", i32 1603, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-sim.c", i32 1574, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gpio_sim_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @gpio_sim_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gpio_sim_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-sim.c", i32 1579, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-sim.c", i32 1582, i32 3}
!22 = !{ptr @gpio_sim_init._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_sim_init._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gpio_sim_config_subsys, !25, !"gpio_sim_config_subsys", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-sim.c", i32 1559, i32 34}
!26 = !{ptr @gpio_sim_config_type, !27, !"gpio_sim_config_type", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-sim.c", i32 1554, i32 38}
!28 = !{ptr @gpio_sim_config_group_ops, !29, !"gpio_sim_config_group_ops", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-sim.c", i32 1550, i32 41}
!30 = !{ptr @gpio_sim_config_make_device_group.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-sim.c", i32 1541, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-sim.c", i32 37, i32 8}
!35 = !{ptr @gpio_sim_ida, !34, !"gpio_sim_ida", i1 false, i1 false}
!36 = !{ptr @gpio_sim_device_config_group_type, !37, !"gpio_sim_device_config_group_type", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-sim.c", i32 1515, i32 38}
!38 = !{ptr @gpio_sim_device_config_item_ops, !39, !"gpio_sim_device_config_item_ops", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-sim.c", i32 1507, i32 40}
!40 = !{ptr @gpio_sim_device_config_group_ops, !41, !"gpio_sim_device_config_group_ops", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-sim.c", i32 1511, i32 41}
!42 = !{ptr @gpio_sim_bank_config_group_type, !43, !"gpio_sim_bank_config_group_type", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-sim.c", i32 1454, i32 38}
!44 = !{ptr @gpio_sim_bank_config_item_ops, !45, !"gpio_sim_bank_config_item_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-sim.c", i32 1446, i32 40}
!46 = !{ptr @gpio_sim_bank_config_group_ops, !47, !"gpio_sim_bank_config_group_ops", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-sim.c", i32 1450, i32 41}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-sim.c", i32 1404, i32 21}
!50 = !{ptr @gpio_sim_line_config_type, !51, !"gpio_sim_line_config_type", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-sim.c", i32 1387, i32 38}
!52 = !{ptr @gpio_sim_line_config_item_ops, !53, !"gpio_sim_line_config_item_ops", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-sim.c", i32 1379, i32 40}
!54 = !{ptr @gpio_sim_line_config_group_ops, !55, !"gpio_sim_line_config_group_ops", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-sim.c", i32 1383, i32 41}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-sim.c", i32 1342, i32 19}
!58 = !{ptr @gpio_sim_hog_config_type, !59, !"gpio_sim_hog_config_type", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-sim.c", i32 1329, i32 38}
!60 = !{ptr @gpio_sim_hog_config_item_ops, !61, !"gpio_sim_hog_config_item_ops", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-sim.c", i32 1325, i32 40}
!62 = !{ptr @gpio_sim_hog_config_attrs, !63, !"gpio_sim_hog_config_attrs", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-sim.c", i32 1305, i32 35}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-sim.c", i32 1225, i32 1}
!66 = !{ptr @gpio_sim_hog_config_attr_name, !65, !"gpio_sim_hog_config_attr_name", i1 false, i1 false}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-sim.c", i32 1191, i32 22}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-sim.c", i32 1191, i32 43}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-sim.c", i32 1303, i32 1}
!73 = !{ptr @gpio_sim_hog_config_attr_direction, !72, !"gpio_sim_hog_config_attr_direction", i1 false, i1 false}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-sim.c", i32 1241, i32 10}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpio/gpio-sim.c", i32 1244, i32 10}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-sim.c", i32 1247, i32 10}
!80 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-sim.c", i32 1251, i32 3}
!82 = !{ptr @gpio_sim_line_config_attrs, !83, !"gpio_sim_line_config_attrs", i1 false, i1 false}
!83 = !{!"../drivers/gpio/gpio-sim.c", i32 1178, i32 35}
!84 = !{ptr @gpio_sim_line_config_attr_name, !85, !"gpio_sim_line_config_attr_name", i1 false, i1 false}
!85 = !{!"../drivers/gpio/gpio-sim.c", i32 1176, i32 1}
!86 = !{ptr @gpio_sim_bank_config_attrs, !87, !"gpio_sim_bank_config_attrs", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-sim.c", i32 1127, i32 35}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-sim.c", i32 1037, i32 1}
!90 = !{ptr @gpio_sim_bank_config_attr_chip_name, !89, !"gpio_sim_bank_config_attr_chip_name", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpio/gpio-sim.c", i32 1031, i32 23}
!93 = !{ptr @.str.21, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpio/gpio-sim.c", i32 1080, i32 1}
!95 = !{ptr @gpio_sim_bank_config_attr_label, !94, !"gpio_sim_bank_config_attr_label", i1 false, i1 false}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpio/gpio-sim.c", i32 1125, i32 1}
!98 = !{ptr @gpio_sim_bank_config_attr_num_lines, !97, !"gpio_sim_bank_config_attr_num_lines", i1 false, i1 false}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpio/gpio-sim.c", i32 1090, i32 22}
!101 = !{ptr @gpio_sim_device_config_attrs, !102, !"gpio_sim_device_config_attrs", i1 false, i1 false}
!102 = !{!"../drivers/gpio/gpio-sim.c", i32 987, i32 35}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpio/gpio-sim.c", i32 671, i32 1}
!105 = !{ptr @gpio_sim_device_config_attr_dev_name, !104, !"gpio_sim_device_config_attr_dev_name", i1 false, i1 false}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpio/gpio-sim.c", i32 665, i32 23}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpio/gpio-sim.c", i32 985, i32 1}
!110 = !{ptr @gpio_sim_device_config_attr_live, !109, !"gpio_sim_device_config_attr_live", i1 false, i1 false}
!111 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpio/gpio-sim.c", i32 683, i32 23}
!113 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpio/gpio-sim.c", i32 915, i32 18}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpio/gpio-sim.c", i32 828, i32 27}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpio/gpio-sim.c", i32 831, i32 28}
!119 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpio/gpio-sim.c", i32 839, i32 28}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpio/gpio-sim.c", i32 783, i32 8}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpio/gpio-sim.c", i32 515, i32 37}
!125 = !{ptr @init_completion.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../include/linux/completion.h", i32 87, i32 2}
!127 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @gpio_sim_driver, !129, !"gpio_sim_driver", i1 false, i1 false}
!129 = !{!"../drivers/gpio/gpio-sim.c", i32 462, i32 31}
!130 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpio/gpio-sim.c", i32 376, i32 43}
!132 = !{ptr @gpio_sim_add_bank.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/gpio/gpio-sim.c", i32 405, i32 2}
!134 = !{ptr @.str.36, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @gpio_sim_add_bank.lock_key, !136, !"lock_key", i1 false, i1 false}
!136 = !{!"../drivers/gpio/gpio-sim.c", i32 429, i32 8}
!137 = !{ptr @gpio_sim_add_bank.request_key, !136, !"request_key", i1 false, i1 false}
!138 = !{ptr @.str.37, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpio/gpio-sim.c", i32 325, i32 9}
!140 = !{ptr @gpio_sim_setup_sysfs.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/gpio/gpio-sim.c", i32 334, i32 3}
!142 = !{ptr @gpio_sim_setup_sysfs.__key.38, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/gpio/gpio-sim.c", i32 335, i32 3}
!144 = !{ptr @.str.39, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpio/gpio-sim.c", i32 337, i32 29}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpio/gpio-sim.c", i32 338, i32 30}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpio/gpio-sim.c", i32 233, i32 25}
!150 = !{ptr @.str.42, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpio/gpio-sim.c", i32 248, i32 8}
!152 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpio/gpio-sim.c", i32 249, i32 8}
!154 = !{ptr @gpio_sim_sysfs_pull_strings, !155, !"gpio_sim_sysfs_pull_strings", i1 false, i1 false}
!155 = !{!"../drivers/gpio/gpio-sim.c", i32 247, i32 26}
!156 = !{ptr @gpio_sim_of_match, !157, !"gpio_sim_of_match", i1 false, i1 false}
!157 = !{!"../drivers/gpio/gpio-sim.c", i32 456, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i8 0, i8 2}
!169 = !{!"branch_weights", i32 1, i32 2000}
