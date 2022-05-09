; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mockup.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mockup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpio_mockup_chip = type { %struct.gpio_chip, ptr, ptr, ptr, %struct.mutex }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.gpio_mockup_line_status = type { i32, i32, i32 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_mockup_dbgfs_private = type { ptr, ptr, i32 }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.69 }
%union.anon.69 = type { %union.anon.70 }
%union.anon.70 = type { [1 x i64] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__param_str_gpio_mockup_ranges = internal constant [31 x i8] c"gpio_mockup.gpio_mockup_ranges\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_gpio_mockup_ranges = internal constant %struct.kparam_array { i32 20, i32 4, ptr @gpio_mockup_num_ranges, ptr @param_ops_int, ptr @gpio_mockup_ranges }, align 4
@__param_gpio_mockup_ranges = internal constant %struct.kernel_param { ptr @__param_str_gpio_mockup_ranges, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_gpio_mockup_ranges } }, section "__param", align 4
@__UNIQUE_ID_gpio_mockup_rangestype227 = internal constant [53 x i8] c"gpio_mockup.parmtype=gpio_mockup_ranges:array of int\00", section ".modinfo", align 1
@__param_str_gpio_mockup_named_lines = internal constant [36 x i8] c"gpio_mockup.gpio_mockup_named_lines\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_mockup_named_lines = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gpio_mockup_named_lines = internal constant %struct.kernel_param { ptr @__param_str_gpio_mockup_named_lines, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @gpio_mockup_named_lines } }, section "__param", align 4
@__UNIQUE_ID_gpio_mockup_named_linestype228 = internal constant [50 x i8] c"gpio_mockup.parmtype=gpio_mockup_named_lines:bool\00", section ".modinfo", align 1
@gpio_mockup_dbg_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpio_mockup_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_mockup_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_mockup_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_gpio_mockup__229_598_gpio_mockup_init6 = internal global ptr @gpio_mockup_init, section ".initcall6.init", align 4
@__exitcall_gpio_mockup_exit = internal global ptr @gpio_mockup_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [66 x i8] c"gpio_mockup.author=Kamlakant Patel <kamlakant.patel@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"gpio_mockup.author=Bamvor Jian Zhang <bamv2005@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [55 x i8] c"gpio_mockup.author=Bartosz Golaszewski <brgl@bgdev.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [44 x i8] c"gpio_mockup.description=GPIO Testing driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"gpio_mockup.file=drivers/gpio/gpio-mockup\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"gpio_mockup.license=GPL v2\00", section ".modinfo", align 1
@gpio_mockup_num_ranges = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_mockup_ranges = internal global { [20 x i32], [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-mockup\00", [20 x i8] zeroinitializer }, align 32
@gpio_mockup_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-mockup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-base\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip-label\00", [21 x i8] zeroinitializer }, align 32
@gpio_mockup_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@gpio_mockup_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_mockup_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@gpio_mockup_debugfs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @gpio_mockup_debugfs_read, ptr @gpio_mockup_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @gpio_mockup_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@gpio_mockup_pdevs = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@gpio_mockup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gpio_mockup: error registering platform driver\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_mockup_init\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-mockup.c\00", [37 x i8] zeroinitializer }, align 32
@gpio_mockup_init._entry_ptr = internal global ptr @gpio_mockup_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-mockup-%c\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-line-names\00", [16 x i8] zeroinitializer }, align 32
@gpio_mockup_register_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gpio_mockup: error registering device\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpio_mockup_register_chip\00", [38 x i8] zeroinitializer }, align 32
@gpio_mockup_register_chip._entry_ptr = internal global ptr @gpio_mockup_register_chip._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"gpio_mockup_named_lines\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 66, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"gpio_mockup_dbg_dir\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 70, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"gpio_mockup_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 467, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"gpio_mockup_num_ranges\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 63, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"gpio_mockup_ranges\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 62, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 469, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"gpio_mockup_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 461, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 400, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 404, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 408, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 416, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 452, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 359, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"gpio_mockup_debugfs_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 335, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 278, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"gpio_mockup_pdevs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 475, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 573, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 508, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 524, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [30 x i8] c"../drivers/gpio/gpio-mockup.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 540, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_gpio_mockup_named_linestype228, ptr @__UNIQUE_ID_gpio_mockup_rangestype227, ptr @__UNIQUE_ID_license235, ptr @__exitcall_gpio_mockup_exit, ptr @__initcall__kmod_gpio_mockup__229_598_gpio_mockup_init6, ptr @__param_gpio_mockup_named_lines, ptr @__param_gpio_mockup_ranges, ptr @gpio_mockup_exit, ptr @gpio_mockup_init._entry, ptr @gpio_mockup_init._entry_ptr, ptr @gpio_mockup_register_chip._entry, ptr @gpio_mockup_register_chip._entry_ptr, ptr @gpio_mockup_named_lines, ptr @gpio_mockup_dbg_dir, ptr @gpio_mockup_driver, ptr @gpio_mockup_num_ranges, ptr @gpio_mockup_ranges, ptr @.str, ptr @gpio_mockup_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gpio_mockup_probe.__key, ptr @.str.4, ptr @gpio_mockup_probe.lock_key, ptr @gpio_mockup_probe.request_key, ptr @.str.5, ptr @gpio_mockup_debugfs_ops, ptr @.str.6, ptr @gpio_mockup_pdevs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_named_lines to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_dbg_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_num_ranges to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_debugfs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_pdevs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_mockup_register_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_mockup_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @gpio_mockup_dbg_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_mockup_driver) #6
  tail call fastcc void @gpio_mockup_unregister_pdevs()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_mockup_unregister_pdevs() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpio_mockup_pdevs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %0) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %1 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %dev.1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.1 = tail call ptr @dev_fwnode(ptr noundef %dev.1) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %2 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %dev.2 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call.2 = tail call ptr @dev_fwnode(ptr noundef %dev.2) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %2) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %3 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %dev.3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.3 = tail call ptr @dev_fwnode(ptr noundef %dev.3) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.3) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %4 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %dev.4 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call.4 = tail call ptr @dev_fwnode(ptr noundef %dev.4) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %4) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.4) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %5, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.5 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.5 = tail call ptr @dev_fwnode(ptr noundef %dev.5) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.5) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 6), align 4
  %tobool.not.6 = icmp eq ptr %6, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.6 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.6 = tail call ptr @dev_fwnode(ptr noundef %dev.6) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %6) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.6) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %7 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 7), align 4
  %tobool.not.7 = icmp eq ptr %7, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %dev.7 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.7 = tail call ptr @dev_fwnode(ptr noundef %dev.7) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %7) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.7) #6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %8 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 8), align 4
  %tobool.not.8 = icmp eq ptr %8, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

if.end.8:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %dev.8 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.8 = tail call ptr @dev_fwnode(ptr noundef %dev.8) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %8) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.8) #6
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.8, %for.inc.7.for.inc.8_crit_edge
  %9 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 9), align 4
  %tobool.not.9 = icmp eq ptr %9, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.end.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

if.end.9:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %dev.9 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.9 = tail call ptr @dev_fwnode(ptr noundef %dev.9) #6
  tail call void @platform_device_unregister(ptr noundef nonnull %9) #6
  tail call void @fwnode_remove_software_node(ptr noundef %call.9) #6
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end.9, %for.inc.8.for.inc.9_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpio_mockup_num_ranges, align 4
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %0)
  %cmp = icmp sgt i32 %0, 20
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp133 = icmp sgt i32 %0, 1
  br i1 %cmp133, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mul.i = shl nuw i32 %i.034, 1
  %add.i = or i32 %mul.i, 1
  %arrayidx.i = getelementptr [20 x i32], ptr @gpio_mockup_ranges, i32 0, i32 %add.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  store ptr %call5, ptr @gpio_mockup_dbg_dir, align 4
  %call6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_mockup_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond11.preheader, label %do.end

for.cond11.preheader:                             ; preds = %for.end
  br i1 %cmp133, label %for.cond11.preheader.for.body13_crit_edge, label %for.cond11.preheader.cleanup_crit_edge

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup.sink.split

for.cond11:                                       ; preds = %for.body13
  %inc19 = add nuw nsw i32 %i.136, 1
  %exitcond39.not = icmp eq i32 %inc19, %div
  br i1 %exitcond39.not, label %for.cond11.cleanup_crit_edge, label %for.cond11.for.body13_crit_edge

for.cond11.for.body13_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.cond11.cleanup_crit_edge:                     ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body13:                                       ; preds = %for.cond11.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %i.136 = phi i32 [ %inc19, %for.cond11.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %call14 = tail call fastcc i32 @gpio_mockup_register_chip(i32 noundef %i.136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond11, label %if.then16

if.then16:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_mockup_driver) #6
  tail call fastcc void @gpio_mockup_unregister_pdevs()
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16, %do.end
  %retval.0.ph = phi i32 [ %call14, %if.then16 ], [ %call6, %do.end ]
  %4 = load ptr, ptr @gpio_mockup_dbg_dir, align 4
  tail call void @debugfs_remove(ptr noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond11.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond11.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.cond11.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irq.i.i.i = alloca i32, align 4
  %name = alloca ptr, align 4
  %base = alloca i32, align 4
  %ngpio = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #6
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #6
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %base, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ngpio) #6
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ngpio, align 2, !annotation !82
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %base, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %base, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i101 = call i32 @device_property_read_u16_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %ngpio, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool3.not = icmp eq i32 %call.i101, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dev_name.exit_crit_edge

if.then8.dev_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.then8.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %name, align 4
  br label %if.end10

if.end10:                                         ; preds = %dev_name.exit, %if.end5.if.end10_crit_edge
  %call.i102 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 452, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i102, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end10
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call.i102, i32 0, i32 4
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @gpio_mockup_probe.__key) #6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %base16 = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 19
  %11 = ptrtoint ptr %base16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %base16, align 4
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 2
  %ngpio17 = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 20
  %14 = ptrtoint ptr %ngpio17 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ngpio17, align 4
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %17 = ptrtoint ptr %call.i102 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %call.i102, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 4
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 2
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %parent, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 10
  %20 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gpio_mockup_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 12
  %21 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gpio_mockup_set, ptr %set, align 4
  %get_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 11
  %22 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gpio_mockup_get_multiple, ptr %get_multiple, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 13
  %23 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gpio_mockup_set_multiple, ptr %set_multiple, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 9
  %24 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpio_mockup_dirout, ptr %direction_output, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 8
  %25 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpio_mockup_dirin, ptr %direction_input, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 7
  %26 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gpio_mockup_get_direction, ptr %get_direction, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 14
  %27 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gpio_mockup_set_config, ptr %set_config, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 15
  %28 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gpio_mockup_to_irq, ptr %to_irq, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i102, i32 0, i32 6
  %29 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gpio_mockup_free, ptr %free, align 4
  %conv = zext i16 %13 to i32
  %30 = mul nuw nsw i32 %conv, 12
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %30, i32 noundef 3520) #6
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call.i102, i32 0, i32 1
  %31 = ptrtoint ptr %lines to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i, ptr %lines, align 4
  %tobool21.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool21.not, label %do.body.cleanup_crit_edge, label %for.cond.preheader

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body
  %32 = ptrtoint ptr %ngpio17 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp111.not = icmp eq i16 %33, 0
  br i1 %cmp111.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lines, align 4
  %arrayidx = getelementptr %struct.gpio_mockup_line_status, ptr %35, i32 %i.0112
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0112, 1
  %37 = ptrtoint ptr %ngpio17 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ngpio17, align 4
  %conv25 = zext i16 %38 to i32
  %cmp = icmp ult i32 %inc, %conv25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i16 %38 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %call30 = call ptr @devm_irq_domain_create_sim(ptr noundef %dev1, ptr noundef null, i32 noundef %.lcssa) #6
  %irq_sim_domain = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call.i102, i32 0, i32 2
  %39 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call30, ptr %irq_sim_domain, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %call.i103 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @gpio_mockup_dispose_mappings, ptr noundef %call.i102) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.end40, label %if.then.i

if.then.i:                                        ; preds = %if.end36
  %41 = ptrtoint ptr %ngpio17 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ngpio17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp10.not.i.i = icmp eq i16 %42, 0
  br i1 %cmp10.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %43 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_sim_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %45 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !82
  %call.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef %44, i32 noundef %i.011.i.i, ptr noundef nonnull %irq.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %irq_find_mapping.exit.thread.i.i, label %irq_find_mapping.exit.i.i

irq_find_mapping.exit.thread.i.i:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  br label %for.inc.i.i

irq_find_mapping.exit.i.i:                        ; preds = %for.body.i.i
  %46 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

irq_find_mapping.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %irq_find_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %irq_find_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_dispose_mapping(i32 noundef %47) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %irq_find_mapping.exit.i.i.for.inc.i.i_crit_edge, %irq_find_mapping.exit.thread.i.i
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %48 = ptrtoint ptr %ngpio17 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ngpio17, align 4
  %conv.i.i = zext i16 %49 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cleanup_crit_edge

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end40:                                         ; preds = %if.end36
  %call42 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i102, ptr noundef nonnull %call.i102, ptr noundef nonnull @gpio_mockup_probe.lock_key, ptr noundef nonnull @gpio_mockup_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @gpio_mockup_debugfs_setup(ptr noundef %dev1, ptr noundef nonnull %call.i102)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end40.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then33, %do.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %if.then33 ], [ 0, %if.end45 ], [ %call.i101, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ %call.i103, %if.then.i.cleanup_crit_edge ], [ %call.i103, %for.inc.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ngpio) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lines.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %value.i = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset, i32 1
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_mockup_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %lines.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %value2.i = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset, i32 1
  %2 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lnot.ext.i, ptr %value2.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_get_multiple(ptr noundef %gc, ptr noundef %mask, ptr nocapture noundef %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #6
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv319 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv319)
  %cmp20 = icmp ult i32 %call1, %conv319
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lines.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %__assign_bit.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.021 = phi i32 [ %call1, %for.body.lr.ph ], [ %call8, %__assign_bit.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lines.i, align 4
  %value.i = getelementptr %struct.gpio_mockup_line_status, ptr %5, i32 %bit.021, i32 1
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %rem.i.i = and i32 %bit.021, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit.021, 5
  %add.ptr.i.i = getelementptr i32, ptr %bits, i32 %div2.i.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %9, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %14 to i32
  %add = add nuw i32 %bit.021, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv7, i32 noundef %add) #6
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio, align 4
  %conv3 = zext i16 %16 to i32
  %cmp = icmp ult i32 %call8, %conv3
  br i1 %cmp, label %__assign_bit.exit.for.body_crit_edge, label %__assign_bit.exit.for.end_crit_edge

__assign_bit.exit.for.end_crit_edge:              ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

__assign_bit.exit.for.body_crit_edge:             ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %__assign_bit.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_mockup_set_multiple(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #6
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv319 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv319)
  %cmp20 = icmp ult i32 %call1, %conv319
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lines.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.021 = phi i32 [ %call1, %for.body.lr.ph ], [ %call8, %for.body.for.body_crit_edge ]
  %div3.i = lshr i32 %bit.021, 5
  %arrayidx.i = getelementptr i32, ptr %bits, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %bit.021, 31
  %6 = lshr i32 %5, %and.i
  %7 = and i32 %6, 1
  %8 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lines.i, align 4
  %value2.i = getelementptr %struct.gpio_mockup_line_status, ptr %9, i32 %bit.021, i32 1
  %10 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %value2.i, align 4
  %11 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %12 to i32
  %add = add nuw i32 %bit.021, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv7, i32 noundef %add) #6
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  %conv3 = zext i16 %14 to i32
  %cmp = icmp ult i32 %call8, %conv3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_dirout(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines, align 4
  %arrayidx = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %3 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lines, align 4
  %value2.i = getelementptr %struct.gpio_mockup_line_status, ptr %4, i32 %offset, i32 1
  %5 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext.i, ptr %value2.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_dirin(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines, align 4
  %arrayidx = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines, align 4
  %arrayidx = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %entry.cleanup.sink.split_crit_edge
    i8 3, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %call4 = tail call fastcc i32 @gpio_mockup_apply_pull(ptr noundef %call, i32 noundef %offset, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %irq_sim_domain = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_sim_domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %1, i32 noundef %offset, ptr noundef null) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_mockup_free(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines, align 4
  %pull = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %pull to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pull, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i = icmp ne i32 %3, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %value2.i = getelementptr %struct.gpio_mockup_line_status, ptr %1, i32 %offset, i32 1
  %4 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext.i, ptr %value2.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_domain_create_sim(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_mockup_dispose_mappings(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq_sim_domain = getelementptr inbounds %struct.gpio_mockup_chip, ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_sim_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4, !annotation !82
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef %i.011, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %for.inc

irq_find_mapping.exit:                            ; preds = %for.body
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.for.inc_crit_edge, label %if.then

irq_find_mapping.exit.for.inc_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_dispose_mapping(i32 noundef %6) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %irq_find_mapping.exit.for.inc_crit_edge, %irq_find_mapping.exit.thread
  %inc = add nuw nsw i32 %i.011, 1
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_mockup_debugfs_setup(ptr noundef %dev, ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiodev, align 4
  %init_name.i = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = load ptr, ptr @gpio_mockup_dbg_dir, align 4
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %6) #6
  %dbg_dir = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %dbg_dir, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp34.not = icmp eq i16 %9, 0
  br i1 %cmp34.not, label %dev_name.exit.cleanup_crit_edge, label %dev_name.exit.for.body_crit_edge

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  br label %for.body

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %dev_name.exit.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %dev_name.exit.for.body_crit_edge ]
  %call5 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %i.035) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chip, ptr %call.i, align 4
  %offset = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.035, ptr %offset, align 4
  %call11 = tail call ptr @gpiochip_get_desc(ptr noundef %chip, i32 noundef %i.035) #6
  %desc = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %desc, align 4
  %13 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbg_dir, align 4
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull %call5, i16 noundef zeroext 128, ptr noundef %14, ptr noundef nonnull %call.i, ptr noundef nonnull @gpio_mockup_debugfs_ops) #6
  %inc = add nuw nsw i32 %i.035, 1
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_mockup_apply_pull(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_desc(ptr noundef %chip, i32 noundef %offset) #6
  %lock = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.set_value_crit_edge, label %land.lhs.true

entry.set_value_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.set_value_crit_edge

land.lhs.true.set_value_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

if.then:                                          ; preds = %land.lhs.true
  %lines.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 1
  %5 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lines.i, align 4
  %value.i = getelementptr %struct.gpio_mockup_line_status, ptr %6, i32 %offset, i32 1
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %value)
  %cmp = icmp eq i32 %8, %value
  br i1 %cmp, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.then
  %irq_sim_domain = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_sim_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i, align 4, !annotation !82
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef %offset, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  br label %set_value

irq_find_mapping.exit:                            ; preds = %if.end
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %irq_find_mapping.exit.set_value_crit_edge, label %if.end11

irq_find_mapping.exit.set_value_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

if.end11:                                         ; preds = %irq_find_mapping.exit
  %call.i63 = call ptr @irq_get_irq_data(i32 noundef %13) #6
  %tobool.not.i64 = icmp eq ptr %call.i63, null
  br i1 %tobool.not.i64, label %if.end11.set_value_crit_edge, label %irq_get_trigger_type.exit

if.end11.set_value_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

irq_get_trigger_type.exit:                        ; preds = %if.end11
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i63, i32 0, i32 3
  %14 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp13 = icmp ne i32 %value, 1
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp13, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %lor.lhs.false, label %irq_get_trigger_type.exit.if.then20_crit_edge

irq_get_trigger_type.exit.if.then20_crit_edge:    ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp16 = icmp ne i32 %value, 0
  %and18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond58 = select i1 %cmp16, i1 true, i1 %tobool19.not
  br i1 %or.cond58, label %lor.lhs.false.set_value_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false.set_value_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %irq_get_trigger_type.exit.if.then20_crit_edge
  %call21 = call i32 @irq_set_irqchip_state(i32 noundef %13, i32 noundef 0, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.set_value_crit_edge, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then20.set_value_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_value

set_value:                                        ; preds = %if.then20.set_value_crit_edge, %lor.lhs.false.set_value_crit_edge, %if.end11.set_value_crit_edge, %irq_find_mapping.exit.set_value_crit_edge, %irq_find_mapping.exit.thread, %land.lhs.true.set_value_crit_edge, %entry.set_value_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i60 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i60)
  %tobool29.not = icmp eq i32 %and1.i60, 0
  br i1 %tobool29.not, label %set_value.if.then34_crit_edge, label %lor.lhs.false30

set_value.if.then34_crit_edge:                    ; preds = %set_value
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

lor.lhs.false30:                                  ; preds = %set_value
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not = icmp eq i32 %22, 0
  br i1 %tobool33.not, label %lor.lhs.false30.if.then34_crit_edge, label %lor.lhs.false30.out_crit_edge

lor.lhs.false30.out_crit_edge:                    ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false30.if.then34_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false30.if.then34_crit_edge, %set_value.if.then34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %lines.i65 = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 1
  %23 = ptrtoint ptr %lines.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lines.i65, align 4
  %value2.i = getelementptr %struct.gpio_mockup_line_status, ptr %24, i32 %offset, i32 1
  %25 = ptrtoint ptr %value2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnot.ext.i, ptr %value2.i, align 4
  br label %out

out:                                              ; preds = %if.then34, %lor.lhs.false30.out_crit_edge, %if.then20.out_crit_edge, %if.then.out_crit_edge
  %ret.1 = phi i32 [ 0, %lor.lhs.false30.out_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then.out_crit_edge ], [ %call21, %if.then20.out_crit_edge ]
  %lines = getelementptr inbounds %struct.gpio_mockup_chip, ptr %chip, i32 0, i32 1
  %26 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lines, align 4
  %pull = getelementptr %struct.gpio_mockup_line_status, ptr %27, i32 %offset, i32 2
  %28 = ptrtoint ptr %pull to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %value, ptr %pull, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irqchip_state(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %usr_buf, i32 noundef %size, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !82
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !82
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !82
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %offset = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %12) #6
  %lock.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %lines.i.i = getelementptr inbounds %struct.gpio_mockup_chip, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %lines.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lines.i.i, align 4
  %value.i.i = getelementptr %struct.gpio_mockup_line_status, ptr %16, i32 %14, i32 1
  %17 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %18)
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %usr_buf, i32 noundef %size, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_debugfs_write(ptr nocapture noundef readonly %file, ptr noundef %usr_buf, i32 noundef %size, ptr nocapture noundef readonly %ppos) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !82
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtoint_from_user(ptr noundef %usr_buf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %offset = getelementptr inbounds %struct.gpio_mockup_dbgfs_private, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %call7 = call fastcc i32 @gpio_mockup_apply_pull(ptr noundef %10, i32 noundef %12, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %size.call7 = select i1 %tobool8.not, i32 %size, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %size.call7, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mockup_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef null, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_mockup_register_chip(i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %properties = alloca [5 x %struct.property_entry], align 8
  %pdevinfo = alloca %struct.platform_device_info, align 8
  %chip_label = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %properties) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chip_label) #6
  %0 = call ptr @memset(ptr %chip_label, i32 255, i32 32)
  %1 = getelementptr inbounds i8, ptr %properties, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 112)
  %3 = call ptr @memset(ptr %pdevinfo, i32 0, i32 56)
  %add = add i32 %idx, 65
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %chip_label, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %add)
  %4 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %properties, align 8
  %.compoundliteral.sroa.2.0.properties.sroa_idx = getelementptr inbounds i8, ptr %properties, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0.properties.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %.compoundliteral.sroa.2.0.properties.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.properties.sroa_idx = getelementptr inbounds i8, ptr %properties, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0.properties.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %.compoundliteral.sroa.3.0.properties.sroa_idx, align 8
  %.compoundliteral.sroa.4112.0.properties.sroa_idx = getelementptr inbounds i8, ptr %properties, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4112.0.properties.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %.compoundliteral.sroa.4112.0.properties.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.properties.sroa_idx = getelementptr inbounds i8, ptr %properties, i32 16
  %8 = ptrtoint ptr %.compoundliteral.sroa.5.0.properties.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chip_label, ptr %.compoundliteral.sroa.5.0.properties.sroa_idx, align 8
  %.compoundliteral.sroa.6.0.properties.sroa_idx = getelementptr inbounds i8, ptr %properties, i32 20
  %9 = ptrtoint ptr %.compoundliteral.sroa.6.0.properties.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %.compoundliteral.sroa.6.0.properties.sroa_idx, align 4
  %mul.i = shl i32 %idx, 1
  %arrayidx.i = getelementptr [20 x i32], ptr @gpio_mockup_ranges, i32 0, i32 %mul.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp sgt i32 %11, -1
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = or i32 %mul.i, 1
  %arrayidx.i101 = getelementptr [20 x i32], ptr @gpio_mockup_ranges, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i101, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6 = getelementptr inbounds [5 x %struct.property_entry], ptr %properties, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.1, ptr %arrayidx6, align 8
  %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx = getelementptr inbounds [5 x %struct.property_entry], ptr %properties, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx, align 4
  %.compoundliteral7.sroa.3.0.arrayidx6.sroa_idx = getelementptr inbounds [5 x %struct.property_entry], ptr %properties, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %.compoundliteral7.sroa.3.0.arrayidx6.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %.compoundliteral7.sroa.3.0.arrayidx6.sroa_idx, align 8
  %.compoundliteral7.sroa.4111.0.arrayidx6.sroa_idx = getelementptr inbounds [5 x %struct.property_entry], ptr %properties, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %.compoundliteral7.sroa.4111.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %.compoundliteral7.sroa.4111.0.arrayidx6.sroa_idx, align 4
  %.compoundliteral7.sroa.5.0.arrayidx6.sroa_idx = getelementptr inbounds [5 x %struct.property_entry], ptr %properties, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %.compoundliteral7.sroa.5.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %.compoundliteral7.sroa.5.0.arrayidx6.sroa_idx, align 8
  %.compoundliteral7.sroa.6.0.arrayidx6.sroa_idx = getelementptr inbounds i8, ptr %arrayidx6, i32 20
  %19 = ptrtoint ptr %.compoundliteral7.sroa.6.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %.compoundliteral7.sroa.6.0.arrayidx6.sroa_idx, align 4
  %add.i103 = or i32 %mul.i, 1
  %arrayidx.i104 = getelementptr [20 x i32], ptr @gpio_mockup_ranges, i32 0, i32 %add.i103
  %20 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i104, align 4
  %sub = sub i32 %21, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %prop.0108 = phi i32 [ 1, %cond.true ], [ 2, %cond.false ]
  %cond = phi i32 [ %13, %cond.true ], [ %sub, %cond.false ]
  %conv = trunc i32 %cond to i16
  %inc23 = add nuw nsw i32 %prop.0108, 1
  %arrayidx24 = getelementptr [5 x %struct.property_entry], ptr %properties, i32 0, i32 %prop.0108
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.2, ptr %arrayidx24, align 8
  %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx24, i32 4
  %23 = ptrtoint ptr %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %.compoundliteral25.sroa.2.0.arrayidx24.sroa_idx, align 4
  %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx24, i32 8
  %24 = ptrtoint ptr %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %.compoundliteral25.sroa.3.0.arrayidx24.sroa_idx, align 8
  %.compoundliteral25.sroa.4110.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx24, i32 12
  %25 = ptrtoint ptr %.compoundliteral25.sroa.4110.0.arrayidx24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %.compoundliteral25.sroa.4110.0.arrayidx24.sroa_idx, align 4
  %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx24, i32 16
  %26 = ptrtoint ptr %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %.compoundliteral25.sroa.5.0.arrayidx24.sroa_idx, align 8
  %.compoundliteral25.sroa.6.0.arrayidx24.sroa_idx = getelementptr inbounds i8, ptr %arrayidx24, i32 18
  %27 = call ptr @memset(ptr %.compoundliteral25.sroa.6.0.arrayidx24.sroa_idx, i32 0, i32 6)
  %28 = load i8, ptr @gpio_mockup_named_lines, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %cond.end.if.end53_crit_edge, label %if.then38

cond.end.if.end53_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then38:                                        ; preds = %cond.end
  %conv40 = and i32 %cond, 65535
  %call41 = call ptr @kasprintf_strarray(i32 noundef 3264, ptr noundef nonnull %chip_label, i32 noundef %conv40) #6
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then38.cleanup_crit_edge, label %if.end44

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46 = getelementptr [5 x %struct.property_entry], ptr %properties, i32 0, i32 %inc23
  %mul = shl nuw nsw i32 %conv40, 2
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.11, ptr %arrayidx46, align 8
  %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 4
  %30 = ptrtoint ptr %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %.compoundliteral47.sroa.2.0.arrayidx46.sroa_idx, align 4
  %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 8
  %31 = ptrtoint ptr %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral47.sroa.3.0.arrayidx46.sroa_idx, align 8
  %.compoundliteral47.sroa.478.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 12
  %32 = ptrtoint ptr %.compoundliteral47.sroa.478.0.arrayidx46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %.compoundliteral47.sroa.478.0.arrayidx46.sroa_idx, align 4
  %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %arrayidx46, i32 16
  %33 = ptrtoint ptr %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call41, ptr %.compoundliteral47.sroa.5.0.arrayidx46.sroa_idx, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end44, %cond.end.if.end53_crit_edge
  %line_names.0 = phi ptr [ %call41, %if.end44 ], [ null, %cond.end.if.end53_crit_edge ]
  %call55 = call ptr @fwnode_create_software_node(ptr noundef nonnull %properties, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %name60 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %35 = ptrtoint ptr %name60 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str, ptr %name60, align 4
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %36 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %idx, ptr %id, align 8
  %fwnode61 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1
  %37 = ptrtoint ptr %fwnode61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call55, ptr %fwnode61, align 4
  %call62 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #6
  %conv63 = and i32 %cond, 65535
  call void @kfree_strarray(ptr noundef %line_names.0, i32 noundef %conv63) #6
  %cmp.i105 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @fwnode_remove_software_node(ptr noundef %call55) #6
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  %38 = ptrtoint ptr %call62 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx69 = getelementptr [10 x ptr], ptr @gpio_mockup_pdevs, i32 0, i32 %idx
  %39 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call62, ptr %arrayidx69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then65, %if.then57, %if.then38.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %if.then57 ], [ %38, %if.then65 ], [ 0, %if.end68 ], [ -12, %if.then38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chip_label) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %properties) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasprintf_strarray(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_strarray(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !66, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__param_gpio_mockup_ranges, !1, !"__param_gpio_mockup_ranges", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mockup.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpio_mockup_rangestype227, !1, !"__UNIQUE_ID_gpio_mockup_rangestype227", i1 false, i1 false}
!3 = !{ptr @__param_gpio_mockup_named_lines, !4, !"__param_gpio_mockup_named_lines", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-mockup.c", i32 67, i32 1}
!5 = !{ptr @__UNIQUE_ID_gpio_mockup_named_linestype228, !4, !"__UNIQUE_ID_gpio_mockup_named_linestype228", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_gpio_mockup__229_598_gpio_mockup_init6, !7, !"__initcall__kmod_gpio_mockup__229_598_gpio_mockup_init6", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mockup.c", i32 598, i32 1}
!8 = !{ptr @__exitcall_gpio_mockup_exit, !9, !"__exitcall_gpio_mockup_exit", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-mockup.c", i32 599, i32 1}
!10 = !{ptr @__UNIQUE_ID_author230, !11, !"__UNIQUE_ID_author230", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-mockup.c", i32 601, i32 1}
!12 = !{ptr @__UNIQUE_ID_author231, !13, !"__UNIQUE_ID_author231", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-mockup.c", i32 602, i32 1}
!14 = !{ptr @__UNIQUE_ID_author232, !15, !"__UNIQUE_ID_author232", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-mockup.c", i32 603, i32 1}
!16 = !{ptr @__UNIQUE_ID_description233, !17, !"__UNIQUE_ID_description233", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-mockup.c", i32 604, i32 1}
!18 = !{ptr @__UNIQUE_ID_file234, !19, !"__UNIQUE_ID_file234", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-mockup.c", i32 605, i32 1}
!20 = !{ptr @__UNIQUE_ID_license235, !19, !"__UNIQUE_ID_license235", i1 false, i1 false}
!21 = !{ptr @gpio_mockup_named_lines, !22, !"gpio_mockup_named_lines", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-mockup.c", i32 66, i32 13}
!23 = !{ptr @gpio_mockup_dbg_dir, !24, !"gpio_mockup_dbg_dir", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-mockup.c", i32 70, i32 23}
!25 = !{ptr @__param_str_gpio_mockup_ranges, !1, !"__param_str_gpio_mockup_ranges", i1 false, i1 false}
!26 = !{ptr @__param_arr_gpio_mockup_ranges, !1, !"__param_arr_gpio_mockup_ranges", i1 false, i1 false}
!27 = !{ptr @gpio_mockup_num_ranges, !28, !"gpio_mockup_num_ranges", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-mockup.c", i32 63, i32 12}
!29 = !{ptr @gpio_mockup_ranges, !30, !"gpio_mockup_ranges", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-mockup.c", i32 62, i32 12}
!31 = !{ptr @__param_str_gpio_mockup_named_lines, !4, !"__param_str_gpio_mockup_named_lines", i1 false, i1 false}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-mockup.c", i32 469, i32 11}
!34 = !{ptr @gpio_mockup_driver, !35, !"gpio_mockup_driver", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-mockup.c", i32 467, i32 31}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-mockup.c", i32 400, i32 37}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-mockup.c", i32 404, i32 37}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-mockup.c", i32 408, i32 40}
!42 = !{ptr @gpio_mockup_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-mockup.c", i32 416, i32 2}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gpio_mockup_probe.lock_key, !46, !"lock_key", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-mockup.c", i32 452, i32 7}
!47 = !{ptr @gpio_mockup_probe.request_key, !46, !"request_key", i1 false, i1 false}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-mockup.c", i32 359, i32 42}
!50 = !{ptr @gpio_mockup_debugfs_ops, !51, !"gpio_mockup_debugfs_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-mockup.c", i32 335, i32 37}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-mockup.c", i32 278, i32 35}
!54 = !{ptr @gpio_mockup_of_match, !55, !"gpio_mockup_of_match", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-mockup.c", i32 461, i32 34}
!56 = !{ptr @gpio_mockup_pdevs, !57, !"gpio_mockup_pdevs", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-mockup.c", i32 475, i32 32}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-mockup.c", i32 573, i32 3}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gpio_mockup_init._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @gpio_mockup_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-mockup.c", i32 508, i32 43}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-mockup.c", i32 524, i32 24}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-mockup.c", i32 540, i32 3}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @gpio_mockup_register_chip._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @gpio_mockup_register_chip._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i8 0, i8 2}
