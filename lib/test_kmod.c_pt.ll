; ModuleID = '/llk/IR_all_yes/lib/test_kmod.c_pt.bc'
source_filename = "../lib/test_kmod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kmod_test_device = type { i32, %struct.test_config, %struct.miscdevice, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, i8, %struct.completion, %struct.list_head, ptr }
%struct.test_config = type { ptr, ptr, i32, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kmod_test_device_info = type { i32, ptr, ptr, i32, ptr, i8 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_bool_enable_only = external dso_local constant %struct.kernel_param_ops, align 4
@force_init_test = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_init_test = internal constant %struct.kernel_param { ptr @___asan_gen_.121, ptr @__this_module, ptr @param_ops_bool_enable_only, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @force_init_test } }, section "__param", align 4
@__UNIQUE_ID_force_init_testtype223 = internal constant [42 x i8] c"parmtype=force_init_test:bool_enable_only\00", section ".modinfo", align 1
@__UNIQUE_ID_force_init_test224 = internal constant [73 x i8] c"parm=force_init_test:Force kicking a test immediately after driver loads\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [45 x i8] c"author=Luis R. Rodriguez <mcgrof@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@test_kmod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013test_kmod: Cannot add first test kmod device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_kmod_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/test_kmod.c\00", [16 x i8] zeroinitializer }, align 32
@test_kmod_init._entry_ptr = internal global ptr @test_kmod_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tun\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@reg_dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reg_dev_mutex, i64 52), ptr getelementptr (i8, ptr @reg_dev_mutex, i64 52) }, ptr @reg_dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@num_test_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@register_test_dev_kmod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013test_kmod: reached limit of number of test devices\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"register_test_dev_kmod\00", [41 x i8] zeroinitializer }, align 32
@register_test_dev_kmod._entry_ptr = internal global ptr @register_test_dev_kmod._entry, section ".printk_index", align 4
@register_test_dev_kmod._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013test_kmod: could not register misc device: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@register_test_dev_kmod._entry_ptr.9 = internal global ptr @register_test_dev_kmod._entry.7, section ".printk_index", align 4
@reg_test_devs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @reg_test_devs, ptr @reg_test_devs }, [24 x i8] zeroinitializer }, align 32
@register_test_dev_kmod._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1157, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interface ready\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@register_test_dev_kmod._entry_ptr.14 = internal global ptr @register_test_dev_kmod._entry.10, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_dev_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_dev_mutex\00", [18 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&test_dev->config_mutex\00", [40 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&test_dev->trigger_mutex\00", [39 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&test_dev->thread_mutex\00", [40 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013test_kmod: Cannot alloc kmod_config_init()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc_test_dev_kmod\00", [44 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod._entry_ptr = internal global ptr @alloc_test_dev_kmod._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_kmod%d\00", [20 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013test_kmod: Cannot alloc misc_dev->name\0A\00", [54 x i8] zeroinitializer }, align 32
@alloc_test_dev_kmod._entry_ptr.27 = internal global ptr @alloc_test_dev_kmod._entry.25, section ".printk_index", align 4
@test_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @test_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_module\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xfs\00", [28 x i8] zeroinitializer }, align 32
@test_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @test_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@test_dev_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_trigger_config, ptr @dev_attr_config, ptr @dev_attr_reset, ptr @dev_attr_config_test_driver, ptr @dev_attr_config_test_fs, ptr @dev_attr_config_num_threads, ptr @dev_attr_config_test_case, ptr @dev_attr_test_result, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_trigger_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_config_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_test_driver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_test_driver_show, ptr @config_test_driver_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_test_fs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_test_fs_show, ptr @config_test_fs_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_num_threads = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_num_threads_show, ptr @config_num_threads_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_test_case = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_test_case_show, ptr @config_test_case_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_test_result = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @test_result_show, ptr @test_result_store }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trigger_config\00", [17 x i8] zeroinitializer }, align 32
@trigger_config_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 539, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"General test result: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trigger_config_run\00", [45 x i8] zeroinitializer }, align 32
@trigger_config_run._entry_ptr = internal global ptr @trigger_config_run._entry, section ".printk_index", align 4
@__trigger_config_run._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 522, ptr @.str.36, ptr @.str.13 }, align 1
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid test case requested: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__trigger_config_run\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__trigger_config_run._entry_ptr = internal global ptr @__trigger_config_run._entry, section ".printk_index", align 4
@run_test_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 431, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Test case: %s (%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"run_test_driver\00", [16 x i8] zeroinitializer }, align 32
@run_test_driver._entry_ptr = internal global ptr @run_test_driver._entry, section ".printk_index", align 4
@run_test_driver._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 433, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Test driver to load: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@run_test_driver._entry_ptr.41 = internal global ptr @run_test_driver._entry.39, section ".printk_index", align 4
@run_test_driver._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 435, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Number of threads to run: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@run_test_driver._entry_ptr.44 = internal global ptr @run_test_driver._entry.42, section ".printk_index", align 4
@run_test_driver._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 437, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Thread IDs will range from 0 - %u\0A\00", [61 x i8] zeroinitializer }, align 32
@run_test_driver._entry_ptr.47 = internal global ptr @run_test_driver._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_KMOD_DRIVER\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEST_KMOD_FS_TYPE\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@try_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 411, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No errors were found while initializing threads\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"try_requests\00", [19 x i8] zeroinitializer }, align 32
@try_requests._entry_ptr = internal global ptr @try_requests._entry, section ".printk_index", align 4
@try_requests._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 417, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"At least one thread failed to start, stop all work\0A\00", [44 x i8] zeroinitializer }, align 32
@try_requests._entry_ptr.55 = internal global ptr @try_requests._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_kmod\00", [22 x i8] zeroinitializer }, align 32
@try_one_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 333, ptr @.str.60, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting up thread %u failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"try_one_request\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@try_one_request._entry_ptr = internal global ptr @try_one_request._entry, section ".printk_index", align 4
@try_one_request.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Kicked off thread %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@run_request.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"run_request\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ran thread %u\0A\00", [17 x i8] zeroinitializer }, align 32
@kmod_test_done_check.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmod_test_done_check\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Done thread count: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@kmod_test_done_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 189, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Done: %u threads have all run now\0A\00", [61 x i8] zeroinitializer }, align 32
@kmod_test_done_check._entry_ptr = internal global ptr @kmod_test_done_check._entry, section ".printk_index", align 4
@kmod_test_done_check._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.2, i32 190, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Last thread to run: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@kmod_test_done_check._entry_ptr.70 = internal global ptr @kmod_test_done_check._entry.68, section ".printk_index", align 4
@tally_up_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 301, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Results:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tally_up_work\00", [18 x i8] zeroinitializer }, align 32
@tally_up_work._entry_ptr = internal global ptr @tally_up_work._entry, section ".printk_index", align 4
@tally_work_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 265, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sync thread %d return status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tally_work_test\00", [16 x i8] zeroinitializer }, align 32
@tally_work_test._entry_ptr = internal global ptr @tally_work_test._entry, section ".printk_index", align 4
@tally_work_test._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 273, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sync thread %u fs: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@tally_work_test._entry_ptr.77 = internal global ptr @tally_work_test._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@test_dev_kmod_stop_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 356, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ending request_module() tests\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_dev_kmod_stop_tests\00", [39 x i8] zeroinitializer }, align 32
@test_dev_kmod_stop_tests._entry_ptr = internal global ptr @test_dev_kmod_stop_tests._entry, section ".printk_index", align 4
@test_dev_kmod_stop_tests._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 364, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stopping still-running thread %i\0A\00", [62 x i8] zeroinitializer }, align 32
@test_dev_kmod_stop_tests._entry_ptr.83 = internal global ptr @test_dev_kmod_stop_tests._entry.81, section ".printk_index", align 4
@run_test_fs_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.84, ptr @.str.2, i32 448, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"run_test_fs_type\00", [47 x i8] zeroinitializer }, align 32
@run_test_fs_type._entry_ptr = internal global ptr @run_test_fs_type._entry, section ".printk_index", align 4
@run_test_fs_type._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 450, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Test filesystem to load: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@run_test_fs_type._entry_ptr.87 = internal global ptr @run_test_fs_type._entry.85, section ".printk_index", align 4
@run_test_fs_type._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.84, ptr @.str.2, i32 452, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@run_test_fs_type._entry_ptr.89 = internal global ptr @run_test_fs_type._entry.88, section ".printk_index", align 4
@run_test_fs_type._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.84, ptr @.str.2, i32 454, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@run_test_fs_type._entry_ptr.91 = internal global ptr @run_test_fs_type._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Custom trigger configuration for: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Number of threads:\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Test_case:\09%s (%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"driver:\09%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver:\09EMPTY\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs:\09%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs:\09EMPTY\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 859, ptr @.str.60, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not alloc settings for config trigger: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_store\00", [20 x i8] zeroinitializer }, align 32
@reset_store._entry_ptr = internal global ptr @reset_store._entry, section ".printk_index", align 4
@reset_store._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 863, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@reset_store._entry_ptr.105 = internal global ptr @reset_store._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_test_driver\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_test_fs\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_num_threads\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"config_test_case\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_result\00", [20 x i8] zeroinitializer }, align 32
@unregister_test_dev_kmod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1209, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"removing interface\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unregister_test_dev_kmod\00", [39 x i8] zeroinitializer }, align 32
@unregister_test_dev_kmod._entry_ptr = internal global ptr @unregister_test_dev_kmod._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.121 = private constant [16 x i8] c"force_init_test\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 45, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1175, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1188, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1192, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"reg_dev_mutex\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"num_test_devs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 60, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1140, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1150, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"reg_test_devs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 54, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1157, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 53, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1084, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1085, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1086, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1092, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1100, i32 41 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1102, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"test_dev_groups\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 814, i32 48 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 819, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"test_dev_group\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1061, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"test_dev_attrs\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1047, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant [24 x i8] c"dev_attr_trigger_config\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"dev_attr_config\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [28 x i8] c"dev_attr_config_test_driver\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"dev_attr_config_test_fs\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [28 x i8] c"dev_attr_config_num_threads\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [26 x i8] c"dev_attr_config_test_case\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [21 x i8] c"dev_attr_test_result\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 597, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 538, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 520, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 429, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 432, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 434, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 436, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 151, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 153, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 155, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 410, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 416, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 328, i32 20 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 333, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 337, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 225, i32 20 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 237, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 185, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 188, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 190, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 301, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 263, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 271, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 356, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 363, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 446, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 449, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 451, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 453, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 502, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 470, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 474, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 478, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 484, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 488, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 492, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 496, i32 5 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 872, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 858, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 863, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 697, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 681, i32 33 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 728, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1008, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 960, i32 34 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1032, i32 8 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 973, i32 34 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1043, i32 8 }
@___asan_gen_.511 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.518 = private constant [19 x i8] c"../lib/test_kmod.c\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1209, i32 2 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_force_init_test224, ptr @__UNIQUE_ID_force_init_testtype223, ptr @__UNIQUE_ID_license229, ptr @__param_force_init_test, ptr @__trigger_config_run._entry, ptr @__trigger_config_run._entry_ptr, ptr @alloc_test_dev_kmod._entry, ptr @alloc_test_dev_kmod._entry.25, ptr @alloc_test_dev_kmod._entry_ptr, ptr @alloc_test_dev_kmod._entry_ptr.27, ptr @kmod_test_done_check._entry, ptr @kmod_test_done_check._entry.68, ptr @kmod_test_done_check._entry_ptr, ptr @kmod_test_done_check._entry_ptr.70, ptr @register_test_dev_kmod._entry, ptr @register_test_dev_kmod._entry.10, ptr @register_test_dev_kmod._entry.7, ptr @register_test_dev_kmod._entry_ptr, ptr @register_test_dev_kmod._entry_ptr.14, ptr @register_test_dev_kmod._entry_ptr.9, ptr @reset_store._entry, ptr @reset_store._entry.103, ptr @reset_store._entry_ptr, ptr @reset_store._entry_ptr.105, ptr @run_test_driver._entry, ptr @run_test_driver._entry.39, ptr @run_test_driver._entry.42, ptr @run_test_driver._entry.45, ptr @run_test_driver._entry_ptr, ptr @run_test_driver._entry_ptr.41, ptr @run_test_driver._entry_ptr.44, ptr @run_test_driver._entry_ptr.47, ptr @run_test_fs_type._entry, ptr @run_test_fs_type._entry.85, ptr @run_test_fs_type._entry.88, ptr @run_test_fs_type._entry.90, ptr @run_test_fs_type._entry_ptr, ptr @run_test_fs_type._entry_ptr.87, ptr @run_test_fs_type._entry_ptr.89, ptr @run_test_fs_type._entry_ptr.91, ptr @tally_up_work._entry, ptr @tally_up_work._entry_ptr, ptr @tally_work_test._entry, ptr @tally_work_test._entry.75, ptr @tally_work_test._entry_ptr, ptr @tally_work_test._entry_ptr.77, ptr @test_dev_kmod_stop_tests._entry, ptr @test_dev_kmod_stop_tests._entry.81, ptr @test_dev_kmod_stop_tests._entry_ptr, ptr @test_dev_kmod_stop_tests._entry_ptr.83, ptr @test_kmod_init._entry, ptr @test_kmod_init._entry_ptr, ptr @trigger_config_run._entry, ptr @trigger_config_run._entry_ptr, ptr @try_one_request._entry, ptr @try_one_request._entry_ptr, ptr @try_requests._entry, ptr @try_requests._entry.53, ptr @try_requests._entry_ptr, ptr @try_requests._entry_ptr.55, ptr @unregister_test_dev_kmod._entry, ptr @unregister_test_dev_kmod._entry_ptr, ptr @force_init_test, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @reg_dev_mutex, ptr @num_test_devs, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @reg_test_devs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @alloc_test_dev_kmod.__key, ptr @.str.17, ptr @alloc_test_dev_kmod.__key.18, ptr @.str.19, ptr @alloc_test_dev_kmod.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @test_dev_groups, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @test_dev_group, ptr @test_dev_attrs, ptr @dev_attr_trigger_config, ptr @dev_attr_config, ptr @dev_attr_reset, ptr @dev_attr_config_test_driver, ptr @dev_attr_config_test_fs, ptr @dev_attr_config_num_threads, ptr @dev_attr_config_test_case, ptr @dev_attr_test_result, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_init_test to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_test_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_test_dev_kmod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_test_dev_kmod._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_devs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_test_dev_kmod._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_test_dev_kmod.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_test_dev_kmod.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_test_dev_kmod.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_test_dev_kmod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_test_dev_kmod._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_test_driver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_test_fs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_num_threads to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_test_case to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_test_result to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_config_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_driver._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_driver._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_driver._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_requests._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_one_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmod_test_done_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmod_test_done_check._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tally_up_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tally_work_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tally_work_test._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_kmod_stop_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_kmod_stop_tests._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_fs_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_fs_type._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_fs_type._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_fs_type._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_store._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_test_dev_kmod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_dev_mutex, i32 noundef 0) #11
  %0 = load i32, ptr @num_test_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %0)
  %cmp.i = icmp eq i32 %0, 2147483646
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @vzalloc(i32 noundef 420) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end_crit_edge, label %do.body.i.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i.i:                                      ; preds = %if.end.i
  %config_mutex.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %config_mutex.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_test_dev_kmod.__key) #11
  %trigger_mutex.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %trigger_mutex.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @alloc_test_dev_kmod.__key.18) #11
  %thread_mutex.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %thread_mutex.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @alloc_test_dev_kmod.__key.20) #11
  %kthreads_done.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %kthreads_done.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %kthreads_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #11
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i.i, i32 noundef 0) #11
  %call.i.i.i = tail call fastcc i32 @__kmod_config_init(ptr noundef nonnull %call.i.i) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.end13.i.i

do.end11.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %err_out_free.i.i

if.end13.i.i:                                     ; preds = %do.body.i.i
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %call.i.i, align 4
  %misc_dev14.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %misc_dev14.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %misc_dev14.i.i, align 4
  %call15.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, i32 noundef %0) #11
  %name.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15.i.i, ptr %name.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool17.not.i.i, label %kmod_config_free.exit.i.i, label %if.end3.i

kmod_config_free.exit.i.i:                        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  %info.i.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i.i.i, align 4
  tail call void @vfree(ptr noundef %6) #11
  %7 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %info.i.i.i, align 4
  %config1.i.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %config1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config1.i.i.i, align 4
  tail call void @kfree_const(ptr noundef %9) #11
  %10 = ptrtoint ptr %config1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %config1.i.i.i, align 4
  %test_fs.i.i.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %test_fs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %test_fs.i.i.i.i, align 4
  tail call void @kfree_const(ptr noundef %12) #11
  %13 = ptrtoint ptr %test_fs.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %test_fs.i.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %config_mutex.i.i) #11
  br label %err_out_free.i.i

err_out_free.i.i:                                 ; preds = %kmod_config_free.exit.i.i, %do.end11.i.i
  tail call void @vfree(ptr noundef nonnull %call.i.i) #11
  br label %do.end

if.end3.i:                                        ; preds = %if.end13.i.i
  %groups.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @test_dev_groups, ptr %groups.i.i, align 4
  %call4.i = tail call i32 @misc_register(ptr noundef %misc_dev14.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end12.i, label %free_test_dev_kmod.exit.i

free_test_dev_kmod.exit.i:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call4.i) #12
  %15 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i.i, align 4
  tail call void @kfree_const(ptr noundef %16) #11
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %name.i.i, align 4
  %info.i.i28.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %info.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i.i28.i, align 4
  tail call void @vfree(ptr noundef %19) #11
  %20 = ptrtoint ptr %info.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %info.i.i28.i, align 4
  %config1.i.i29.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i.i, i32 noundef 0) #11
  %21 = ptrtoint ptr %config1.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config1.i.i29.i, align 4
  tail call void @kfree_const(ptr noundef %22) #11
  %23 = ptrtoint ptr %config1.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %config1.i.i29.i, align 4
  %test_fs.i.i.i30.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %test_fs.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %test_fs.i.i.i30.i, align 4
  tail call void @kfree_const(ptr noundef %25) #11
  %26 = ptrtoint ptr %test_fs.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %test_fs.i.i.i30.i, align 4
  tail call void @mutex_unlock(ptr noundef %config_mutex.i.i) #11
  tail call void @vfree(ptr noundef nonnull %call.i.i) #11
  br label %if.end

if.end12.i:                                       ; preds = %if.end3.i
  %this_device.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %this_device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %this_device.i, align 4
  %dev.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev.i, align 4
  %list.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 10
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reg_test_devs, i32 0, i32 1), align 4
  %call.i.i32.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %30, ptr noundef nonnull @reg_test_devs) #11
  br i1 %call.i.i32.i, label %if.end.i.i.i, label %if.end12.i.list_add_tail.exit.i_crit_edge

if.end12.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @reg_test_devs, i32 0, i32 1), align 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @reg_test_devs, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %call.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %30, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end12.i.list_add_tail.exit.i_crit_edge
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.11) #12
  %36 = load i32, ptr @num_test_devs, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr @num_test_devs, align 4
  br label %if.end

do.end:                                           ; preds = %err_out_free.i.i, %if.end.i.do.end_crit_edge, %do.end.i
  tail call void @mutex_unlock(ptr noundef nonnull @reg_dev_mutex) #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit.i, %free_test_dev_kmod.exit.i
  tail call void @mutex_unlock(ptr noundef nonnull @reg_dev_mutex) #11
  %37 = load i8, ptr @force_init_test, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not = icmp eq i8 %37, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @trigger_config_run_type(ptr noundef nonnull %call.i.i, i32 noundef 1, ptr noundef nonnull @.str.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end33, label %do.end17, !prof !255

do.end17:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1189, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end33:                                         ; preds = %if.then3
  %call34 = tail call fastcc i32 @trigger_config_run_type(ptr noundef nonnull %call.i.i, i32 noundef 2, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %do.end52, !prof !255

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end52:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1193, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end33.cleanup_crit_edge, %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end17 ], [ %call34, %do.end52 ], [ -19, %do.end ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_dev_mutex, i32 noundef 0) #11
  %0 = load ptr, ptr @reg_test_devs, align 4
  %cmp.not17 = icmp eq ptr %0, @reg_test_devs
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %unregister_test_dev_kmod.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in18 = phi ptr [ %.pn, %unregister_test_dev_kmod.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %test_dev.0 = getelementptr i8, ptr %.pn.in18, i32 -408
  %1 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in18, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in18) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %trigger_mutex.i = getelementptr i8, ptr %.pn.in18, i32 -248
  tail call void @mutex_lock_nested(ptr noundef %trigger_mutex.i, i32 noundef 0) #11
  %config_mutex.i = getelementptr i8, ptr %.pn.in18, i32 -340
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  tail call fastcc void @test_dev_kmod_stop_tests(ptr noundef %test_dev.0) #11
  %dev.i = getelementptr i8, ptr %.pn.in18, i32 -344
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.114) #12
  %misc_dev.i = getelementptr i8, ptr %.pn.in18, i32 -384
  tail call void @misc_deregister(ptr noundef %misc_dev.i) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  tail call void @mutex_unlock(ptr noundef %trigger_mutex.i) #11
  %tobool.not.i.i = icmp eq ptr %test_dev.0, null
  br i1 %tobool.not.i.i, label %list_del.exit.unregister_test_dev_kmod.exit_crit_edge, label %kmod_config_free.exit.i.i

list_del.exit.unregister_test_dev_kmod.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_test_dev_kmod.exit

kmod_config_free.exit.i.i:                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr i8, ptr %.pn.in18, i32 -380
  %12 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i.i, align 4
  tail call void @kfree_const(ptr noundef %13) #11
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %name.i.i, align 4
  %info.i.i.i = getelementptr i8, ptr %.pn.in18, i32 8
  %15 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i.i.i, align 4
  tail call void @vfree(ptr noundef %16) #11
  %17 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %info.i.i.i, align 4
  %config1.i.i.i = getelementptr i8, ptr %.pn.in18, i32 -404
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  %18 = ptrtoint ptr %config1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config1.i.i.i, align 4
  tail call void @kfree_const(ptr noundef %19) #11
  %20 = ptrtoint ptr %config1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %config1.i.i.i, align 4
  %test_fs.i.i.i.i = getelementptr i8, ptr %.pn.in18, i32 -400
  %21 = ptrtoint ptr %test_fs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %test_fs.i.i.i.i, align 4
  tail call void @kfree_const(ptr noundef %22) #11
  %23 = ptrtoint ptr %test_fs.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %test_fs.i.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  tail call void @vfree(ptr noundef nonnull %test_dev.0) #11
  br label %unregister_test_dev_kmod.exit

unregister_test_dev_kmod.exit:                    ; preds = %kmod_config_free.exit.i.i, %list_del.exit.unregister_test_dev_kmod.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, @reg_test_devs
  br i1 %cmp.not, label %unregister_test_dev_kmod.exit.for.end_crit_edge, label %unregister_test_dev_kmod.exit.for.body_crit_edge

unregister_test_dev_kmod.exit.for.body_crit_edge: ; preds = %unregister_test_dev_kmod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

unregister_test_dev_kmod.exit.for.end_crit_edge:  ; preds = %unregister_test_dev_kmod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %unregister_test_dev_kmod.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @reg_dev_mutex) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trigger_config_run_type(ptr noundef %test_dev, i32 noundef %test_case, ptr noundef %test_str) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %config_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %0 = zext i32 %test_case to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %test_case, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %config1 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config1, align 4
  tail call void @kfree_const(ptr noundef %2) #11
  %3 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %config1, align 4
  %call = tail call i32 @strlen(ptr noundef %test_str) #14
  %call.i.i = tail call ptr @kstrndup(ptr noundef %test_str, i32 noundef %call, i32 noundef 3264) #11
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %config1, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog.thread_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.bb4:                                           ; preds = %entry
  %test_fs = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %test_fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %test_fs, align 4
  tail call void @kfree_const(ptr noundef %6) #11
  %7 = ptrtoint ptr %test_fs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %test_fs, align 4
  %call6 = tail call i32 @strlen(ptr noundef %test_str) #14
  %call.i.i34 = tail call ptr @kstrndup(ptr noundef %test_str, i32 noundef %call6, i32 noundef 3264) #11
  %8 = ptrtoint ptr %test_fs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i34, ptr %test_fs, align 4
  %tobool.not.i.i35 = icmp eq ptr %call.i.i34, null
  br i1 %tobool.not.i.i35, label %sw.bb4.sw.epilog.thread_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4.sw.epilog.thread_crit_edge:                ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  br label %cleanup

sw.epilog.thread:                                 ; preds = %sw.bb4.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  %test_case939 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %test_case939 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %test_case, ptr %test_case939, align 4
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  br label %if.then

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %copied.0 = phi i32 [ %call6, %sw.bb4.sw.epilog_crit_edge ], [ %call, %sw.bb.sw.epilog_crit_edge ]
  %test_case9 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %test_case9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %test_case, ptr %test_case9, align 4
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %copied.0)
  %cmp = icmp slt i32 %copied.0, 1
  br i1 %cmp, label %sw.epilog.if.then_crit_edge, label %lor.lhs.false

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %call11 = tail call i32 @strlen(ptr noundef %test_str) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %call11)
  %cmp12.not = icmp eq i32 %copied.0, %call11
  br i1 %cmp12.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge, %sw.epilog.thread
  %test_is_oom = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %11 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %test_is_oom, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %test_is_oom13 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %12 = ptrtoint ptr %test_is_oom13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %test_is_oom13, align 4
  %call14 = tail call fastcc i32 @trigger_config_run(ptr noundef %test_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ -12, %if.then ], [ %call14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__kmod_config_init(ptr noundef %test_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %config1 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %config1, null
  br i1 %tobool.not.i, label %entry.__kmod_config_free.exit_crit_edge, label %if.end.i

entry.__kmod_config_free.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__kmod_config_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  tail call void @kfree_const(ptr noundef %1) #11
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %config1, align 4
  %test_fs.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %test_fs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test_fs.i, align 4
  tail call void @kfree_const(ptr noundef %4) #11
  %5 = ptrtoint ptr %test_fs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %test_fs.i, align 4
  br label %__kmod_config_free.exit

__kmod_config_free.exit:                          ; preds = %if.end.i, %entry.__kmod_config_free.exit_crit_edge
  %call.i.i = tail call ptr @kstrndup(ptr noundef nonnull @.str.29, i32 noundef 11, i32 noundef 3264) #11
  %6 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %config1, align 4
  %tobool.not.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i.not, label %__kmod_config_free.exit.err_out_crit_edge, label %if.end

__kmod_config_free.exit.err_out_crit_edge:        ; preds = %__kmod_config_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %__kmod_config_free.exit
  %test_fs.i49 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 1
  %call.i.i50 = tail call ptr @kstrndup(ptr noundef nonnull @.str.30, i32 noundef 3, i32 noundef 3264) #11
  %7 = ptrtoint ptr %test_fs.i49 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i50, ptr %test_fs.i49, align 4
  %tobool.not.i.i51.not = icmp eq ptr %call.i.i50, null
  br i1 %tobool.not.i.i51.not, label %if.end.err_out_crit_edge, label %if.end5

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end5:                                          ; preds = %if.end
  %num_threads = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %num_threads to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %num_threads, align 4
  %test_result = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %test_result, align 4
  %test_case = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %test_case to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %test_case, align 4
  %info.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 11
  %11 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info.i.i, align 4
  tail call void @vfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %info.i.i, align 4
  %14 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_threads, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 24) #11
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %retval.0.i.i = select i1 %17, i32 -1, i32 %18
  %call2.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #13
  %19 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %info.i.i, align 4
  %tobool.not.i53.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i53.not, label %if.end5.err_out_crit_edge, label %if.end9

if.end5.err_out_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %test_is_oom = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %20 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %test_is_oom, align 4
  br label %cleanup

err_out:                                          ; preds = %if.end5.err_out_crit_edge, %if.end.err_out_crit_edge, %__kmod_config_free.exit.err_out_crit_edge
  %test_is_oom10 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %21 = ptrtoint ptr %test_is_oom10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %test_is_oom10, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 838, i32 noundef 9, ptr noundef null) #11
  br i1 %tobool.not.i, label %err_out.cleanup_crit_edge, label %if.end.i56

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i56:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config1, align 4
  tail call void @kfree_const(ptr noundef %23) #11
  %24 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %config1, align 4
  %test_fs.i55 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %test_fs.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %test_fs.i55, align 4
  tail call void @kfree_const(ptr noundef %26) #11
  %27 = ptrtoint ptr %test_fs.i55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %test_fs.i55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i56, %err_out.cleanup_crit_edge, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %err_out.cleanup_crit_edge ], [ -12, %if.end.i56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_config_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %test_is_oom = getelementptr i8, ptr %1, i32 324
  %2 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %test_is_oom, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -24
  %call1 = tail call fastcc i32 @trigger_config_run(ptr noundef %add.ptr.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5, !prof !256

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp6.not = icmp eq i32 %call1, 0
  br i1 %cmp6.not, label %if.end5.cleanup_crit_edge, label %do.end, !prof !255

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 590, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %count, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trigger_config_run(ptr noundef %test_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %trigger_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %trigger_mutex, i32 noundef 0) #11
  %config_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %done.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 7
  %0 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done.i, align 4
  %test_case.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %test_case.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %test_case.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %2, label %__trigger_config_run.exit.thread [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config1.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, i32 noundef 1) #12
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %8 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config1.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.40, ptr noundef %9) #12
  br label %__trigger_config_run.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i10.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.49, i32 noundef 2) #12
  %12 = ptrtoint ptr %dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i10.i, align 4
  %test_fs.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %test_fs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %test_fs.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.86, ptr noundef %15) #12
  br label %__trigger_config_run.exit

__trigger_config_run.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef %2) #12
  br label %out

__trigger_config_run.exit:                        ; preds = %sw.bb2.i, %sw.bb.i
  %dev.i.i.sink16 = phi ptr [ %dev.i.i, %sw.bb.i ], [ %dev.i10.i, %sw.bb2.i ]
  %18 = ptrtoint ptr %dev.i.i.sink16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i.sink16, align 4
  %num_threads.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %num_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_threads.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %21) #12
  %22 = ptrtoint ptr %dev.i.i.sink16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i.sink16, align 4
  %24 = ptrtoint ptr %num_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_threads.i.i, align 4
  %sub.i.i = add i32 %25, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.46, i32 noundef %sub.i.i) #12
  %call16.i.i = tail call fastcc i32 @try_requests(ptr noundef %test_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp = icmp slt i32 %call16.i.i, 0
  br i1 %cmp, label %__trigger_config_run.exit.out_crit_edge, label %do.end

__trigger_config_run.exit.out_crit_edge:          ; preds = %__trigger_config_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %__trigger_config_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %test_result = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %test_result to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %test_result, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %29) #12
  br label %out

out:                                              ; preds = %do.end, %__trigger_config_run.exit.out_crit_edge, %__trigger_config_run.exit.thread
  %ret.0 = phi i32 [ %call16.i.i, %__trigger_config_run.exit.out_crit_edge ], [ 0, %do.end ], [ -22, %__trigger_config_run.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  tail call void @mutex_unlock(ptr noundef %trigger_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_requests(ptr noundef %test_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %num_threads = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.if.then6.critedge_crit_edge, label %for.body.lr.ph

entry.if.then6.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.critedge

for.body.lr.ph:                                   ; preds = %entry
  %test_is_oom = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %idx.031, 1
  %2 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_threads, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.then6.critedge_crit_edge

for.cond.if.then6.critedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.critedge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %idx.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %test_is_oom, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end:                                           ; preds = %for.body
  %call = tail call fastcc i32 @try_one_request(ptr noundef %test_dev, i32 noundef %idx.031)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.cond, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6.critedge:                                ; preds = %for.cond.if.then6.critedge_crit_edge, %entry.if.then6.critedge_crit_edge
  %test_is_oom7 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %6 = ptrtoint ptr %test_is_oom7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %test_is_oom7, align 4
  %dev = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.51) #12
  %kthreads_done = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 9
  tail call void @wait_for_completion(ptr noundef %kthreads_done) #11
  %thread_mutex.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %thread_mutex.i, i32 noundef 0) #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.71) #12
  %11 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.not.i = icmp eq i32 %12, 0
  br i1 %cmp13.not.i, label %if.then6.critedge.tally_up_work.exit_crit_edge, label %for.body.lr.ph.i

if.then6.critedge.tally_up_work.exit_crit_edge:   ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %tally_up_work.exit

for.body.lr.ph.i:                                 ; preds = %if.then6.critedge
  %info2.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %tally_work_test.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %err_ret.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %tally_work_test.exit.i.for.body.i_crit_edge ]
  %idx.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %tally_work_test.exit.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info2.i, align 4
  %test_dev1.i.i = getelementptr %struct.kmod_test_device_info, ptr %14, i32 %idx.014.i, i32 4
  %15 = ptrtoint ptr %test_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %test_dev1.i.i, align 4
  %test_case.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %test_case.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %test_case.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %18, label %do.body15.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.kmod_test_device_info, ptr %14, i32 %idx.014.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %dev.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %thread_idx.i.i = getelementptr %struct.kmod_test_device_info, ptr %14, i32 %idx.014.i, i32 3
  %24 = ptrtoint ptr %thread_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %thread_idx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.73, i32 noundef %25, i32 noundef %21) #12
  br label %tally_work_test.exit.i

sw.bb5.i.i:                                       ; preds = %for.body.i
  %fs_sync.i.i = getelementptr %struct.kmod_test_device_info, ptr %14, i32 %idx.014.i, i32 1
  %26 = ptrtoint ptr %fs_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs_sync.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  %spec.select31.i.i = select i1 %tobool.not.i.i, i32 -22, i32 0
  %dev11.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %16, i32 0, i32 3
  %28 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev11.i.i, align 4
  %thread_idx12.i.i = getelementptr %struct.kmod_test_device_info, ptr %14, i32 %idx.014.i, i32 3
  %30 = ptrtoint ptr %thread_idx12.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %thread_idx12.i.i, align 4
  br i1 %tobool.not.i.i, label %sw.bb5.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

sw.bb5.i.i.cond.end.i.i_crit_edge:                ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %test_fs.i.i = getelementptr inbounds %struct.kmod_test_device, ptr %16, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %test_fs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %test_fs.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %sw.bb5.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %33, %cond.true.i.i ], [ @.str.78, %sw.bb5.i.i.cond.end.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.76, i32 noundef %31, ptr noundef %cond.i.i) #12
  br label %tally_work_test.exit.i

do.body15.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_kmod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 276, 0\0A.popsection", ""() #11, !srcloc !257
  unreachable

tally_work_test.exit.i:                           ; preds = %cond.end.i.i, %sw.bb.i.i
  %err_ret.2.i.i = phi i32 [ %spec.select31.i.i, %cond.end.i.i ], [ %21, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_ret.2.i.i)
  %tobool.not.i = icmp eq i32 %err_ret.2.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %err_ret.016.i, i32 %err_ret.2.i.i
  %inc.i = add nuw i32 %idx.014.i, 1
  %34 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_threads, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %tally_work_test.exit.i.for.body.i_crit_edge, label %tally_work_test.exit.i.tally_up_work.exit_crit_edge

tally_work_test.exit.i.tally_up_work.exit_crit_edge: ; preds = %tally_work_test.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tally_up_work.exit

tally_work_test.exit.i.for.body.i_crit_edge:      ; preds = %tally_work_test.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tally_up_work.exit:                               ; preds = %tally_work_test.exit.i.tally_up_work.exit_crit_edge, %if.then6.critedge.tally_up_work.exit_crit_edge
  %err_ret.0.lcssa.i = phi i32 [ 0, %if.then6.critedge.tally_up_work.exit_crit_edge ], [ %spec.select.i, %tally_work_test.exit.i.tally_up_work.exit_crit_edge ]
  %test_result.i = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %test_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %err_ret.0.lcssa.i, ptr %test_result.i, align 4
  tail call void @mutex_unlock(ptr noundef %thread_mutex.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end.if.else_crit_edge, %for.body.if.else_crit_edge
  %37 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %test_is_oom, align 4
  %dev12 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %38 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.54) #12
  tail call fastcc void @test_dev_kmod_stop_tests(ptr noundef %test_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %tally_up_work.exit
  %retval.0 = phi i32 [ -12, %if.else ], [ 0, %tally_up_work.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_one_request(ptr noundef %test_dev, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %info1 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 11
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %arrayidx = getelementptr %struct.kmod_test_device_info, ptr %1, i32 %idx
  %thread_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %thread_mutex, i32 noundef 0) #11
  %thread_idx = getelementptr %struct.kmod_test_device_info, ptr %1, i32 %idx, i32 3
  %2 = ptrtoint ptr %thread_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %idx, ptr %thread_idx, align 4
  %test_dev2 = getelementptr %struct.kmod_test_device_info, ptr %1, i32 %idx, i32 4
  %3 = ptrtoint ptr %test_dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %test_dev, ptr %test_dev2, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @run_request, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %idx) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %task_sync = getelementptr %struct.kmod_test_device_info, ptr %1, i32 %idx, i32 2
  %4 = ptrtoint ptr %task_sync to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %task_sync, align 4
  br label %if.then8

if.end.thread:                                    ; preds = %entry
  %call4 = tail call i32 @wake_up_process(ptr noundef %call) #11
  %task_sync47 = getelementptr %struct.kmod_test_device_info, ptr %1, i32 %idx, i32 2
  %5 = ptrtoint ptr %task_sync47 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %task_sync47, align 4
  %tobool.not48 = icmp eq ptr %call, null
  br i1 %tobool.not48, label %if.end.thread.if.then8_crit_edge, label %do.body10

if.end.thread.if.then8_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end.thread.if.then8_crit_edge, %if.end
  %task_sync50 = phi ptr [ %task_sync47, %if.end.thread.if.then8_crit_edge ], [ %task_sync, %if.end ]
  %test_is_oom = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 8
  %6 = ptrtoint ptr %test_is_oom to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %test_is_oom, align 4
  %dev = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.58, i32 noundef %idx) #12
  %9 = ptrtoint ptr %task_sync50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %task_sync50, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -12, ptr %arrayidx, align 4
  br label %cleanup

do.body10:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_one_request.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_one_request, %if.then16)) #11
          to label %cleanup [label %if.then16], !srcloc !258

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @try_one_request.__UNIQUE_ID_ddebug227, ptr noundef %12, ptr noundef nonnull @.str.61, i32 noundef %idx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body10, %if.then8
  %retval.0 = phi i32 [ -12, %if.then8 ], [ 0, %do.body10 ], [ 0, %if.then16 ]
  tail call void @mutex_unlock(ptr noundef %thread_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_dev_kmod_stop_tests(ptr noundef %test_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.79) #12
  %thread_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %thread_mutex, i32 noundef 0) #11
  %num_threads = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33.not = icmp eq i32 %3, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %info2 = getelementptr inbounds %struct.kmod_test_device, ptr %test_dev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info2, align 4
  %task_sync = getelementptr %struct.kmod_test_device_info, ptr %5, i32 %i.034, i32 2
  %6 = ptrtoint ptr %task_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task_sync, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.land.lhs.true12_crit_edge, label %if.end

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true12

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef %i.034) #12
  %10 = ptrtoint ptr %task_sync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task_sync, align 4
  %call9 = tail call i32 @kthread_stop(ptr noundef %11) #11
  %12 = ptrtoint ptr %task_sync to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %task_sync, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %if.end.for.inc_crit_edge, label %if.end.land.lhs.true12_crit_edge

if.end.land.lhs.true12_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true12:                                  ; preds = %if.end.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %need_mod_put = getelementptr %struct.kmod_test_device_info, ptr %5, i32 %i.034, i32 5
  %13 = ptrtoint ptr %need_mod_put to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_mod_put, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not = icmp eq i8 %14, 0
  br i1 %tobool13.not, label %land.lhs.true12.for.inc_crit_edge, label %if.then14

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true12
  %15 = ptrtoint ptr %need_mod_put to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %need_mod_put, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then14.for.inc_crit_edge, label %if.end.i

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %if.then14
  %test_dev1.i = getelementptr %struct.kmod_test_device_info, ptr %5, i32 %i.034, i32 4
  %17 = ptrtoint ptr %test_dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %test_dev1.i, align 4
  %test_case.i = getelementptr inbounds %struct.kmod_test_device, ptr %18, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %test_case.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %test_case.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %20, label %do.body.i [
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %fs_sync.i = getelementptr %struct.kmod_test_device_info, ptr %5, i32 %i.034, i32 1
  %22 = ptrtoint ptr %fs_sync.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_sync.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %owner.i = getelementptr inbounds %struct.file_system_type, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i, align 4
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %if.then6.i

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @module_put(ptr noundef nonnull %25) #11
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_kmod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #11, !srcloc !259
  unreachable

sw.epilog.i:                                      ; preds = %if.then6.i, %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %26 = ptrtoint ptr %need_mod_put to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %need_mod_put, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.i, %if.then14.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.034, 1
  %27 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_threads, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %thread_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @run_request(ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %test_dev1 = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %test_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test_dev1, align 4
  %test_case = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %test_case to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test_case, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %3, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config2 = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config2, align 4
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.62, ptr noundef %6) #11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %data, align 4
  br label %do.body8

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %test_fs = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %test_fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %test_fs, align 4
  %call4 = tail call ptr @get_fs_type(ptr noundef %9) #11
  %fs_sync = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %fs_sync to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %fs_sync, align 4
  %need_mod_put = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %need_mod_put to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %need_mod_put, align 4
  br label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_kmod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #11, !srcloc !260
  unreachable

do.body8:                                         ; preds = %sw.bb3, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_request.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_request, %if.then)) #11
          to label %do.end13 [label %if.then], !srcloc !258

if.then:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %thread_idx = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %thread_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %thread_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @run_request.__UNIQUE_ID_ddebug226, ptr noundef %13, ptr noundef nonnull @.str.64, i32 noundef %15) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then, %do.body8
  %need_mod_put.i = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %need_mod_put.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_mod_put.i, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end13.test_kmod_put_module.exit_crit_edge, label %if.end.i

do.end13.test_kmod_put_module.exit_crit_edge:     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_kmod_put_module.exit

if.end.i:                                         ; preds = %do.end13
  %18 = ptrtoint ptr %test_dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %test_dev1, align 4
  %test_case.i = getelementptr inbounds %struct.kmod_test_device, ptr %19, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %test_case.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %test_case.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %21, label %do.body.i [
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %fs_sync.i = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %fs_sync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_sync.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %owner.i = getelementptr inbounds %struct.file_system_type, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner.i, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %if.then6.i

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @module_put(ptr noundef nonnull %26) #11
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_kmod.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #11, !srcloc !259
  unreachable

sw.epilog.i:                                      ; preds = %if.then6.i, %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %27 = ptrtoint ptr %need_mod_put.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %need_mod_put.i, align 4
  br label %test_kmod_put_module.exit

test_kmod_put_module.exit:                        ; preds = %sw.epilog.i, %do.end13.test_kmod_put_module.exit_crit_edge
  %thread_mutex = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %thread_mutex, i32 noundef 0) #11
  %task_sync = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %task_sync to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %task_sync, align 4
  %thread_idx14 = getelementptr inbounds %struct.kmod_test_device_info, ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %thread_idx14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %thread_idx14, align 4
  %done.i = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %done.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %done.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmod_test_done_check.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_request, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !258

if.then.i:                                        ; preds = %test_kmod_put_module.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %done.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmod_test_done_check.__UNIQUE_ID_ddebug225, ptr noundef %34, ptr noundef nonnull @.str.66, i32 noundef %36) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %test_kmod_put_module.exit
  %37 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %done.i, align 4
  %num_threads.i = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %num_threads.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_threads.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i = icmp eq i32 %38, %40
  br i1 %cmp.i, label %do.end9.i, label %do.end.i.kmod_test_done_check.exit_crit_edge

do.end.i.kmod_test_done_check.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmod_test_done_check.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.67, i32 noundef %38) #12
  %43 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.69, i32 noundef %30) #12
  %kthreads_done.i = getelementptr inbounds %struct.kmod_test_device, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %kthreads_done.i) #11
  br label %kmod_test_done_check.exit

kmod_test_done_check.exit:                        ; preds = %do.end9.i, %do.end.i.kmod_test_done_check.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %thread_mutex) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config1 = getelementptr i8, ptr %1, i32 -20
  %config_mutex = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.93, ptr noundef %retval.0.i)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call3
  %sub = sub i32 4096, %call3
  %num_threads = getelementptr i8, ptr %1, i32 -12
  %6 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_threads, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.94, i32 noundef %7)
  %add5 = add i32 %call4, %call3
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %sub7 = sub i32 4096, %add5
  %test_case = getelementptr i8, ptr %1, i32 -8
  %8 = ptrtoint ptr %test_case to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %test_case, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.49, ptr @.str.50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.selectcmp2.i = icmp eq i32 %9, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.48, ptr %switch.select.i
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.95, ptr noundef nonnull %switch.select3.i, i32 noundef %9)
  %add11 = add i32 %call10, %add5
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config1, align 4
  %tobool.not = icmp eq ptr %11, null
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add11
  %sub18 = sub i32 4096, %add11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.96, ptr noundef nonnull %11)
  br label %if.end

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.97)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call15.pn = phi i32 [ %call15, %if.then ], [ %call19, %if.else ]
  %len.0 = add i32 %call15.pn, %add11
  %test_fs = getelementptr i8, ptr %1, i32 -16
  %12 = ptrtoint ptr %test_fs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %test_fs, align 4
  %tobool21.not = icmp eq ptr %13, null
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %len.0
  %sub30 = sub i32 4096, %len.0
  br i1 %tobool21.not, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.98, ptr noundef nonnull %13)
  br label %if.end33

if.else28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.99)
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.then22
  %call26.pn = phi i32 [ %call26, %if.then22 ], [ %call31, %if.else28 ]
  %len.1 = add i32 %call26.pn, %len.0
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  ret i32 %len.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -24
  %trigger_mutex = getelementptr i8, ptr %1, i32 136
  tail call void @mutex_lock_nested(ptr noundef %trigger_mutex, i32 noundef 0) #11
  %config_mutex = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %call1 = tail call fastcc i32 @__kmod_config_init(ptr noundef %add.ptr.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %do.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef -12) #12
  br label %out

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.104) #12
  br label %out

out:                                              ; preds = %do.end4, %if.then
  %ret.0 = phi i32 [ -12, %if.then ], [ %count, %do.end4 ]
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  tail call void @mutex_unlock(ptr noundef %trigger_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_driver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config1 = getelementptr i8, ptr %1, i32 -20
  %config_mutex = getelementptr i8, ptr %1, i32 44
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.107, ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_driver_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config1 = getelementptr i8, ptr %1, i32 -20
  %config_mutex = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  tail call void @kfree_const(ptr noundef %3) #11
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %config1, align 4
  %call.i.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #11
  %5 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %config1, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %.count.i.i = select i1 %tobool.not.i.i, i32 -28, i32 %count
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  ret i32 %.count.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_fs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config_mutex = getelementptr i8, ptr %1, i32 44
  %test_fs = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %test_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test_fs, align 4
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.107, ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_fs_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %config_mutex = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex, i32 noundef 0) #11
  %test_fs = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %test_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test_fs, align 4
  tail call void @kfree_const(ptr noundef %3) #11
  %4 = ptrtoint ptr %test_fs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %test_fs, align 4
  %call.i.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #11
  %5 = ptrtoint ptr %test_fs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %test_fs, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %.count.i.i = select i1 %tobool.not.i.i, i32 -28, i32 %count
  tail call void @mutex_unlock(ptr noundef %config_mutex) #11
  ret i32 %.count.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_num_threads_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_threads = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_threads, align 4
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.110, i32 noundef %3) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_num_threads_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_threads = getelementptr i8, ptr %1, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !261
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.test_dev_config_update_uint_sync.exit_crit_edge

entry.test_dev_config_update_uint_sync.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_uint_sync.exit

if.end.i:                                         ; preds = %entry
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  %3 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_threads, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  store i32 %6, ptr %num_threads, align 4
  %info.i.i.i = getelementptr i8, ptr %1, i32 392
  %7 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.i.i.i, align 4
  call void @vfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %info.i.i.i, align 4
  %10 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_threads, align 4
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 24) #11
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %retval.0.i.i.i = select i1 %13, i32 -1, i32 %14
  %call2.i.i = call noalias ptr @vzalloc(i32 noundef %retval.0.i.i.i) #13
  %15 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i.i, ptr %info.i.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.not.i, label %if.then3.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then3.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %num_threads to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %4, ptr %num_threads, align 4
  call void @vfree(ptr noundef null) #11
  %17 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %info.i.i.i, align 4
  %18 = ptrtoint ptr %num_threads to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_threads, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 24) #11
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %retval.0.i.i3.i = select i1 %21, i32 -1, i32 %22
  %call2.i4.i = call noalias ptr @vzalloc(i32 noundef %retval.0.i.i3.i) #13
  %23 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2.i4.i, ptr %info.i.i.i, align 4
  %tobool.not.i5.not.i = icmp eq ptr %call2.i4.i, null
  br i1 %tobool.not.i5.not.i, label %do.end.i, label %if.then3.i.cleanup.sink.split.i_crit_edge, !prof !256

if.then3.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 897, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i, %if.then3.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -22, %do.end.i ], [ -22, %if.then3.i.cleanup.sink.split.i_crit_edge ], [ %count, %if.end.i.cleanup.sink.split.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  br label %test_dev_config_update_uint_sync.exit

test_dev_config_update_uint_sync.exit:            ; preds = %cleanup.sink.split.i, %entry.test_dev_config_update_uint_sync.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.test_dev_config_update_uint_sync.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_case_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %test_case = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %test_case to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test_case, align 4
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.112, i32 noundef %3) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_test_case_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %test_case = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !261
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.test_dev_config_update_uint_range.exit_crit_edge

entry.test_dev_config_update_uint_range.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_uint_range.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %5 = add i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %if.end.i.test_dev_config_update_uint_range.exit_crit_edge, label %if.end3.i

if.end.i.test_dev_config_update_uint_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_uint_range.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %9 = ptrtoint ptr %test_case to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %test_case, align 4
  call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  br label %test_dev_config_update_uint_range.exit

test_dev_config_update_uint_range.exit:           ; preds = %if.end3.i, %if.end.i.test_dev_config_update_uint_range.exit_crit_edge, %entry.test_dev_config_update_uint_range.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end3.i ], [ %call.i, %entry.test_dev_config_update_uint_range.exit_crit_edge ], [ -22, %if.end.i.test_dev_config_update_uint_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_result_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %test_result = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %test_result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test_result, align 4
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  tail call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.110, i32 noundef %3) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_result_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !261
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.test_dev_config_update_int.exit_crit_edge

entry.test_dev_config_update_int.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_int.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %test_result = getelementptr i8, ptr %1, i32 -4
  %config_mutex.i = getelementptr i8, ptr %1, i32 44
  call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %5 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %test_result, align 4
  call void @mutex_unlock(ptr noundef %config_mutex.i) #11
  br label %test_dev_config_update_int.exit

test_dev_config_update_int.exit:                  ; preds = %if.end.i, %entry.test_dev_config_update_int.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i, %entry.test_dev_config_update_int.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !70, !72, !73, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !129, !130, !132, !133, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !223, !225, !226, !228, !229, !231, !233, !234, !236, !238, !239, !241, !243, !244, !245}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__param_force_init_test, !1, !"__param_force_init_test", i1 false, i1 false}
!1 = !{!"../lib/test_kmod.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_init_testtype223, !1, !"__UNIQUE_ID_force_init_testtype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_init_test224, !4, !"__UNIQUE_ID_force_init_test224", i1 false, i1 false}
!4 = !{!"../lib/test_kmod.c", i32 47, i32 1}
!5 = !{ptr @__UNIQUE_ID_author228, !6, !"__UNIQUE_ID_author228", i1 false, i1 false}
!6 = !{!"../lib/test_kmod.c", i32 1231, i32 1}
!7 = !{ptr @__UNIQUE_ID_license229, !8, !"__UNIQUE_ID_license229", i1 false, i1 false}
!8 = !{!"../lib/test_kmod.c", i32 1232, i32 1}
!9 = !{ptr @___asan_gen_.121, !1, !"__param_str_force_init_test", i1 false, i1 false}
!10 = !{ptr @force_init_test, !11, !"force_init_test", i1 false, i1 false}
!11 = !{!"../lib/test_kmod.c", i32 45, i32 13}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_kmod.c", i32 1175, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @test_kmod_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_kmod_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/test_kmod.c", i32 1188, i32 30}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/test_kmod.c", i32 1192, i32 31}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_kmod.c", i32 1140, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @register_test_dev_kmod._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @register_test_dev_kmod._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_kmod.c", i32 1150, i32 3}
!29 = !{ptr @register_test_dev_kmod._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @register_test_dev_kmod._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_kmod.c", i32 1157, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @register_test_dev_kmod._entry.10, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @register_test_dev_kmod._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_kmod.c", i32 53, i32 8}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @reg_dev_mutex, !38, !"reg_dev_mutex", i1 false, i1 false}
!41 = !{ptr @num_test_devs, !42, !"num_test_devs", i1 false, i1 false}
!42 = !{!"../lib/test_kmod.c", i32 60, i32 12}
!43 = !{ptr @alloc_test_dev_kmod.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../lib/test_kmod.c", i32 1084, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @alloc_test_dev_kmod.__key.18, !47, !"__key", i1 false, i1 false}
!47 = !{!"../lib/test_kmod.c", i32 1085, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @alloc_test_dev_kmod.__key.20, !50, !"__key", i1 false, i1 false}
!50 = !{!"../lib/test_kmod.c", i32 1086, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/test_kmod.c", i32 1092, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @alloc_test_dev_kmod._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @alloc_test_dev_kmod._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_kmod.c", i32 1100, i32 41}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_kmod.c", i32 1102, i32 3}
!61 = !{ptr @alloc_test_dev_kmod._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @alloc_test_dev_kmod._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_kmod.c", i32 814, i32 48}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/test_kmod.c", i32 819, i32 39}
!70 = !{ptr @test_dev_groups, !71, !"test_dev_groups", i1 false, i1 false}
!71 = !{!"../lib/test_kmod.c", i32 1061, i32 1}
!72 = !{ptr @test_dev_group, !71, !"test_dev_group", i1 false, i1 false}
!73 = !{ptr @test_dev_attrs, !74, !"test_dev_attrs", i1 false, i1 false}
!74 = !{!"../lib/test_kmod.c", i32 1047, i32 26}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test_kmod.c", i32 597, i32 8}
!77 = !{ptr @dev_attr_trigger_config, !76, !"dev_attr_trigger_config", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/test_kmod.c", i32 538, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @trigger_config_run._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @trigger_config_run._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test_kmod.c", i32 520, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__trigger_config_run._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @__trigger_config_run._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test_kmod.c", i32 429, i32 2}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @run_test_driver._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @run_test_driver._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/test_kmod.c", i32 432, i32 2}
!96 = !{ptr @run_test_driver._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @run_test_driver._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/test_kmod.c", i32 434, i32 2}
!100 = !{ptr @run_test_driver._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @run_test_driver._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../lib/test_kmod.c", i32 436, i32 2}
!104 = !{ptr @run_test_driver._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @run_test_driver._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_kmod.c", i32 151, i32 10}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/test_kmod.c", i32 153, i32 10}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/test_kmod.c", i32 155, i32 10}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_kmod.c", i32 410, i32 3}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @try_requests._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @try_requests._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/test_kmod.c", i32 416, i32 3}
!119 = !{ptr @try_requests._entry.53, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @try_requests._entry_ptr.55, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test_kmod.c", i32 328, i32 20}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../lib/test_kmod.c", i32 333, i32 3}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @try_one_request._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @try_one_request._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../lib/test_kmod.c", i32 337, i32 3}
!132 = !{ptr @try_one_request.__UNIQUE_ID_ddebug227, !131, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/test_kmod.c", i32 225, i32 20}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test_kmod.c", i32 237, i32 2}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @run_request.__UNIQUE_ID_ddebug226, !136, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/test_kmod.c", i32 185, i32 2}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @kmod_test_done_check.__UNIQUE_ID_ddebug225, !140, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../lib/test_kmod.c", i32 188, i32 3}
!145 = !{ptr @kmod_test_done_check._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @kmod_test_done_check._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test_kmod.c", i32 190, i32 3}
!149 = !{ptr @kmod_test_done_check._entry.68, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @kmod_test_done_check._entry_ptr.70, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../lib/test_kmod.c", i32 301, i32 2}
!153 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tally_up_work._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @tally_up_work._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_kmod.c", i32 263, i32 3}
!158 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @tally_work_test._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @tally_work_test._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/test_kmod.c", i32 271, i32 3}
!163 = !{ptr @tally_work_test._entry.75, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @tally_work_test._entry_ptr.77, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../lib/test_kmod.c", i32 356, i32 2}
!168 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @test_dev_kmod_stop_tests._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @test_dev_kmod_stop_tests._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/test_kmod.c", i32 363, i32 4}
!173 = !{ptr @test_dev_kmod_stop_tests._entry.81, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @test_dev_kmod_stop_tests._entry_ptr.83, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../lib/test_kmod.c", i32 446, i32 2}
!177 = !{ptr @run_test_fs_type._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @run_test_fs_type._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../lib/test_kmod.c", i32 449, i32 2}
!181 = !{ptr @run_test_fs_type._entry.85, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @run_test_fs_type._entry_ptr.87, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @run_test_fs_type._entry.88, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../lib/test_kmod.c", i32 451, i32 2}
!185 = !{ptr @run_test_fs_type._entry_ptr.89, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @run_test_fs_type._entry.90, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../lib/test_kmod.c", i32 453, i32 2}
!188 = !{ptr @run_test_fs_type._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../lib/test_kmod.c", i32 502, i32 8}
!191 = !{ptr @dev_attr_config, !190, !"dev_attr_config", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../lib/test_kmod.c", i32 470, i32 4}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../lib/test_kmod.c", i32 474, i32 4}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../lib/test_kmod.c", i32 478, i32 4}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../lib/test_kmod.c", i32 484, i32 5}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../lib/test_kmod.c", i32 488, i32 5}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../lib/test_kmod.c", i32 492, i32 5}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../lib/test_kmod.c", i32 496, i32 5}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../lib/test_kmod.c", i32 872, i32 8}
!208 = !{ptr @dev_attr_reset, !207, !"dev_attr_reset", i1 false, i1 false}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../lib/test_kmod.c", i32 858, i32 3}
!211 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @reset_store._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @reset_store._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../lib/test_kmod.c", i32 863, i32 2}
!216 = !{ptr @reset_store._entry.103, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @reset_store._entry_ptr.105, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../lib/test_kmod.c", i32 697, i32 8}
!220 = !{ptr @dev_attr_config_test_driver, !219, !"dev_attr_config_test_driver", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../lib/test_kmod.c", i32 681, i32 33}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../lib/test_kmod.c", i32 728, i32 8}
!225 = !{ptr @dev_attr_config_test_fs, !224, !"dev_attr_config_test_fs", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../lib/test_kmod.c", i32 1008, i32 8}
!228 = !{ptr @dev_attr_config_num_threads, !227, !"dev_attr_config_num_threads", i1 false, i1 false}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../lib/test_kmod.c", i32 960, i32 34}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../lib/test_kmod.c", i32 1032, i32 8}
!233 = !{ptr @dev_attr_config_test_case, !232, !"dev_attr_config_test_case", i1 false, i1 false}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../lib/test_kmod.c", i32 973, i32 34}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test_kmod.c", i32 1043, i32 8}
!238 = !{ptr @dev_attr_test_result, !237, !"dev_attr_test_result", i1 false, i1 false}
!239 = !{ptr @reg_test_devs, !240, !"reg_test_devs", i1 false, i1 false}
!240 = !{!"../lib/test_kmod.c", i32 54, i32 8}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../lib/test_kmod.c", i32 1209, i32 2}
!243 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @unregister_test_dev_kmod._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @unregister_test_dev_kmod._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{i8 0, i8 2}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{i64 2153455301, i64 2153455781, i64 2153455338, i64 2153455394, i64 2153455428, i64 2153455452, i64 2153455493, i64 2153455514, i64 2153455542, i64 2153455576}
!258 = !{i64 2148719748, i64 2148719753, i64 2148719766, i64 2148719810, i64 2148719844, i64 2148719865}
!259 = !{i64 2153446542, i64 2153447022, i64 2153446579, i64 2153446635, i64 2153446669, i64 2153446693, i64 2153446734, i64 2153446755, i64 2153446783, i64 2153446817}
!260 = !{i64 2153448062, i64 2153448542, i64 2153448099, i64 2153448155, i64 2153448189, i64 2153448213, i64 2153448254, i64 2153448275, i64 2153448303, i64 2153448337}
!261 = !{!"auto-init"}
