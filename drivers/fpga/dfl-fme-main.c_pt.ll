; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-main.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_feature_driver = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_feature_id = type { i16 }
%struct.dfl_feature_ops = type { ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dfl_fme = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__initcall__kmod_dfl_fme__379_756_fme_driver_init6 = internal global ptr @fme_driver_init, section ".initcall6.init", align 4
@fme_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fme_probe, ptr @fme_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fme_dev_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fme_driver_exit = internal global ptr @fme_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description380 = internal constant [50 x i8] c"dfl_fme.description=FPGA Management Engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author381 = internal constant [33 x i8] c"dfl_fme.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file382 = internal constant [34 x i8] c"dfl_fme.file=drivers/fpga/dfl-fme\00", section ".modinfo", align 1
@__UNIQUE_ID_license383 = internal constant [23 x i8] c"dfl_fme.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias384 = internal constant [31 x i8] c"dfl_fme.alias=platform:dfl-fme\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl-fme\00", [24 x i8] zeroinitializer }, align 32
@fme_dev_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @fme_hdr_group, ptr @fme_global_err_group, ptr null], [20 x i8] zeroinitializer }, align 32
@fme_feature_drvs = internal global { [7 x %struct.dfl_feature_driver], [40 x i8] } { [7 x %struct.dfl_feature_driver] [%struct.dfl_feature_driver { ptr @fme_hdr_id_table, ptr @fme_hdr_ops }, %struct.dfl_feature_driver { ptr @fme_pr_mgmt_id_table, ptr @fme_pr_mgmt_ops }, %struct.dfl_feature_driver { ptr @fme_global_err_id_table, ptr @fme_global_err_ops }, %struct.dfl_feature_driver { ptr @fme_thermal_mgmt_id_table, ptr @fme_thermal_mgmt_ops }, %struct.dfl_feature_driver { ptr @fme_power_mgmt_id_table, ptr @fme_power_mgmt_ops }, %struct.dfl_feature_driver { ptr @fme_perf_id_table, ptr @fme_perf_ops }, %struct.dfl_feature_driver zeroinitializer], [40 x i8] zeroinitializer }, align 32
@fme_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fme_ioctl, ptr null, ptr null, i32 0, ptr @fme_open, ptr null, ptr @fme_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fme_hdr_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 254 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fme_hdr_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr null, ptr null, ptr @fme_hdr_ioctl }, [20 x i8] zeroinitializer }, align 32
@fme_pr_mgmt_id_table = external dso_local constant [0 x %struct.dfl_feature_id], align 2
@fme_pr_mgmt_ops = external dso_local constant %struct.dfl_feature_ops, align 4
@fme_global_err_id_table = external dso_local constant [0 x %struct.dfl_feature_id], align 2
@fme_global_err_ops = external dso_local constant %struct.dfl_feature_ops, align 4
@fme_thermal_mgmt_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 1 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fme_thermal_mgmt_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @fme_thermal_mgmt_init, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@fme_power_mgmt_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 2 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fme_power_mgmt_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @fme_power_mgmt_init, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@fme_perf_id_table = external dso_local constant [0 x %struct.dfl_feature_id], align 2
@fme_perf_ops = external dso_local constant %struct.dfl_feature_ops, align 4
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/fpga/dfl-fme-main.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dfl_fme_thermal\00", [16 x i8] zeroinitializer }, align 32
@thermal_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @thermal_hwmon_ops, ptr @thermal_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@thermal_extra_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @thermal_extra_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fme_thermal_mgmt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail to register thermal hwmon\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fme_thermal_mgmt_init\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fme_thermal_mgmt_init._entry_ptr = internal global ptr @fme_thermal_mgmt_init._entry, section ".printk_index", align 4
@thermal_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @thermal_hwmon_attrs_visible, ptr @thermal_hwmon_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@thermal_hwmon_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.7, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 199298, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@thermal_extra_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @thermal_extra_attrs_visible, ptr null, ptr @thermal_extra_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@thermal_extra_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_temp1_max_policy, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_temp1_max_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_max_policy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_max_policy\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dfl_fme_power\00", [18 x i8] zeroinitializer }, align 32
@power_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @power_hwmon_ops, ptr @power_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@power_extra_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @power_extra_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fme_power_mgmt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.1, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail to register power hwmon\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fme_power_mgmt_init\00", [44 x i8] zeroinitializer }, align 32
@fme_power_mgmt_init._entry_ptr = internal global ptr @fme_power_mgmt_init._entry, section ".printk_index", align 4
@power_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @power_hwmon_attrs_visible, ptr @power_hwmon_read, ptr null, ptr @power_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@power_hwmon_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.14, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 337117696, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.13 }, [24 x i8] zeroinitializer }, align 32
@power_extra_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @power_extra_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@power_extra_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_power1_xeon_limit, ptr @dev_attr_power1_fpga_limit, ptr @dev_attr_power1_ltr, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_power1_xeon_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power1_xeon_limit_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power1_fpga_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power1_fpga_limit_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power1_ltr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power1_ltr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power1_xeon_limit\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power1_fpga_limit\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power1_ltr\00", [21 x i8] zeroinitializer }, align 32
@fme_ioctl.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.1, ptr @.str.20, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_fme\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fme_ioctl\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s cmd 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@fme_open.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.21, ptr @.str.1, ptr @.str.22, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fme_open\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device File Opened %d Times\0A\00", [35 x i8] zeroinitializer }, align 32
@fme_release.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.1, ptr @.str.24, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fme_release\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device File Release\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/fpga/dfl.h\00", [45 x i8] zeroinitializer }, align 32
@fme_hdr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fme_hdr_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_global_err_group = external dso_local constant %struct.attribute_group, align 4
@fme_hdr_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_ports_num, ptr @dev_attr_bitstream_id, ptr @dev_attr_bitstream_metadata, ptr @dev_attr_cache_size, ptr @dev_attr_fabric_version, ptr @dev_attr_socket_id, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_ports_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ports_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bitstream_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bitstream_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bitstream_metadata = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bitstream_metadata_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cache_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cache_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fabric_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fabric_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_socket_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @socket_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ports_num\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bitstream_id\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bitstream_metadata\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_size\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fabric_version\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket_id\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074050689, i64 1074050690]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 7, i64 9, i64 11, i64 16, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 9, i64 19, i64 20, i64 26, i64 28]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 9, i64 19, i64 20, i64 26, i64 28]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 20]
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"fme_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 747, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 749, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"fme_dev_groups\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 741, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"fme_feature_drvs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 561, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"fme_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 699, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"fme_hdr_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 177, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"fme_hdr_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 182, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"fme_thermal_mgmt_id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 349, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"fme_thermal_mgmt_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 354, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"fme_power_mgmt_id_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 552, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"fme_power_mgmt_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 557, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 143, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 338, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"thermal_hwmon_chip_info\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 275, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"thermal_extra_groups\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 312, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 342, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"thermal_hwmon_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 263, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"thermal_hwmon_info\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 268, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"thermal_extra_group\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 308, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"thermal_extra_attrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 294, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [26 x i8] c"dev_attr_temp1_max_policy\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 292, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 288, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 541, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"power_hwmon_chip_info\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 475, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"power_extra_groups\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 545, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"power_hwmon_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 462, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"power_hwmon_info\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 468, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"power_extra_group\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 533, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"power_extra_attrs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 526, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"dev_attr_power1_xeon_limit\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"dev_attr_power1_fpga_limit\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"dev_attr_power1_ltr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 522, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 523, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 524, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 646, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 610, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 625, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"../drivers/fpga/dfl.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 312, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant [14 x i8] c"fme_hdr_group\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 133, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"fme_hdr_attrs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 123, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"dev_attr_ports_num\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"dev_attr_bitstream_id\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [28 x i8] c"dev_attr_bitstream_metadata\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"dev_attr_cache_size\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"dev_attr_fabric_version\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"dev_attr_socket_id\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 40, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 58, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 56, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 76, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 91, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 106, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [31 x i8] c"../drivers/fpga/dfl-fme-main.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 121, i32 8 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias384, ptr @__UNIQUE_ID_author381, ptr @__UNIQUE_ID_description380, ptr @__UNIQUE_ID_file382, ptr @__UNIQUE_ID_license383, ptr @__exitcall_fme_driver_exit, ptr @__initcall__kmod_dfl_fme__379_756_fme_driver_init6, ptr @fme_driver_exit, ptr @fme_power_mgmt_init._entry, ptr @fme_power_mgmt_init._entry_ptr, ptr @fme_thermal_mgmt_init._entry, ptr @fme_thermal_mgmt_init._entry_ptr, ptr @fme_driver, ptr @.str, ptr @fme_dev_groups, ptr @fme_feature_drvs, ptr @fme_fops, ptr @fme_hdr_id_table, ptr @fme_hdr_ops, ptr @fme_thermal_mgmt_id_table, ptr @fme_thermal_mgmt_ops, ptr @fme_power_mgmt_id_table, ptr @fme_power_mgmt_ops, ptr @.str.1, ptr @.str.2, ptr @thermal_hwmon_chip_info, ptr @thermal_extra_groups, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @thermal_hwmon_ops, ptr @thermal_hwmon_info, ptr @.compoundliteral, ptr @.compoundliteral.7, ptr @thermal_extra_group, ptr @thermal_extra_attrs, ptr @dev_attr_temp1_max_policy, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @power_hwmon_chip_info, ptr @power_extra_groups, ptr @.str.11, ptr @.str.12, ptr @power_hwmon_ops, ptr @power_hwmon_info, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @power_extra_group, ptr @power_extra_attrs, ptr @dev_attr_power1_xeon_limit, ptr @dev_attr_power1_fpga_limit, ptr @dev_attr_power1_ltr, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @fme_hdr_group, ptr @fme_hdr_attrs, ptr @dev_attr_ports_num, ptr @dev_attr_bitstream_id, ptr @dev_attr_bitstream_metadata, ptr @dev_attr_cache_size, ptr @dev_attr_fabric_version, ptr @dev_attr_socket_id, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_dev_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_feature_drvs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_hdr_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_hdr_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_thermal_mgmt_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_thermal_mgmt_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_power_mgmt_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_power_mgmt_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_extra_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_thermal_mgmt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_hwmon_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_extra_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_extra_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_max_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_extra_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_power_mgmt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_hwmon_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_extra_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_extra_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power1_xeon_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power1_fpga_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power1_ltr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_hdr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_hdr_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ports_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bitstream_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bitstream_metadata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cache_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fabric_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_socket_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fme_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fme_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fme_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata3.i = getelementptr inbounds %struct.dfl_fme, ptr %call.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pdata3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata3.i, align 4
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %private1.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %private1.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %call1 = tail call i32 @dfl_fpga_dev_feature_init(ptr noundef %pdev, ptr noundef nonnull @fme_feature_drvs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.dev_destroy_crit_edge

if.end.dev_destroy_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_destroy

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @dfl_fpga_dev_ops_register(ptr noundef %pdev, ptr noundef nonnull @fme_fops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %feature_uinit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

feature_uinit:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dfl_fpga_dev_feature_uinit(ptr noundef %pdev) #8
  br label %dev_destroy

dev_destroy:                                      ; preds = %feature_uinit, %if.end.dev_destroy_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.dev_destroy_crit_edge ], [ %call5, %feature_uinit ]
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i17 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i17, i32 noundef 0) #8
  %private1.i.i18 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %private1.i.i18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private1.i.i18, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i17) #8
  br label %cleanup

cleanup:                                          ; preds = %dev_destroy, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %ret.0, %dev_destroy ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dfl_fpga_dev_ops_unregister(ptr noundef %pdev) #8
  tail call void @dfl_fpga_dev_feature_uinit(ptr noundef %pdev) #8
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %private1.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private1.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_dev_feature_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_dev_ops_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_dev_feature_uinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_hdr_ioctl(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1074050689, label %sw.bb
    i32 1074050690, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dfl_cdev.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dfl_cdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfl_cdev.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 143) #8
  %5 = inttoptr i32 %arg to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !128) #8
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !138
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1226833921) #8, !srcloc !141
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult1.i = extractvalue { i32, i32 } %9, 1
  %call3.i = tail call i32 @dfl_fpga_cdev_release_port(ptr noundef %4, i32 noundef %asmresult1.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %dfl_cdev.i6 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dfl_cdev.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dfl_cdev.i6, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 155) #8
  %12 = inttoptr i32 %arg to ptr
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #8
  %and.i.i.i.i7 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i7 to ptr
  %cpu_domain.i.i.i8 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i8) #3, !srcloc !138
  %and.i.i9 = and i32 %15, -13
  %or.i.i10 = or i32 %and.i.i9, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i10) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %12, i32 -1226833921) #8, !srcloc !142
  %asmresult.i11 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i11)
  %tobool.not.i12 = icmp eq i32 %asmresult.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i15:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult1.i13 = extractvalue { i32, i32 } %16, 1
  %call3.i14 = tail call i32 @dfl_fpga_cdev_assign_port(ptr noundef %11, i32 noundef %asmresult1.i13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i15, %sw.bb2.cleanup_crit_edge, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3.i, %if.end.i ], [ -14, %sw.bb.cleanup_crit_edge ], [ %call3.i14, %if.end.i15 ], [ -14, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_cdev_release_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_cdev_assign_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_thermal_mgmt_init(ptr noundef %pdev, ptr noundef %feature) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %feature, ptr noundef nonnull @thermal_hwmon_chip_info, ptr noundef nonnull @thermal_extra_groups) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @thermal_hwmon_attrs_visible(ptr nocapture noundef readonly %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp = icmp eq i32 %attr, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %drvdata, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %4 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.i = icmp eq i32 %4, 0
  %conv = select i1 %tobool13.i, i16 292, i16 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %if.end ], [ 292, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %attr, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb14
    i32 9, label %sw.bb38
    i32 11, label %sw.bb62
    i32 16, label %sw.bb86
    i32 17, label %sw.bb109
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %7 = lshr i32 %5, 24
  %8 = and i32 %7, 127
  %conv = mul nuw nsw i32 %8, 1000
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr15 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr15, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i148 = getelementptr i8, ptr %10, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %13 = lshr i32 %11, 24
  %14 = and i32 %13, 127
  %conv37 = mul nuw nsw i32 %14, 1000
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr39 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr39, align 4
  %add.ptr40 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i149 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %19 = lshr i32 %17, 16
  %20 = and i32 %19, 127
  %conv61 = mul nuw nsw i32 %20, 1000
  br label %cleanup.sink.split

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr63 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr63, align 4
  %add.ptr64 = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i150 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %25 = and i32 %23, 127
  %conv85 = mul nuw nsw i32 %25, 1000
  br label %cleanup.sink.split

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr87 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr87, align 4
  %add.ptr88 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i151 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %30 = lshr i32 %29, 24
  %conv108 = and i32 %30, 1
  br label %cleanup.sink.split

sw.bb109:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr110 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %ioaddr110 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr110, align 4
  %add.ptr111 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i152 = getelementptr i8, ptr %32, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %35 = lshr i32 %34, 25
  %conv131 = and i32 %35, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb109, %sw.bb86, %sw.bb62, %sw.bb38, %sw.bb14, %sw.bb
  %conv.sink = phi i32 [ %conv, %sw.bb ], [ %conv37, %sw.bb14 ], [ %conv61, %sw.bb38 ], [ %conv85, %sw.bb62 ], [ %conv108, %sw.bb86 ], [ %conv131, %sw.bb109 ]
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @thermal_extra_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %6 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.i = icmp eq i32 %6, 0
  br i1 %tobool13.i, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %8, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %6 = lshr i32 %5, 20
  %conv = and i32 %6, 1
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_power_mgmt_init(ptr noundef %pdev, ptr noundef %feature) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %feature, ptr noundef nonnull @power_hwmon_chip_info, ptr noundef nonnull @power_extra_groups) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @power_hwmon_attrs_visible(ptr nocapture noundef readnone %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %attr, label %sw.epilog [
    i32 9, label %entry.return_crit_edge
    i32 26, label %entry.return_crit_edge2
    i32 28, label %entry.return_crit_edge3
    i32 19, label %entry.sw.bb1_crit_edge
    i32 20, label %entry.sw.bb1_crit_edge4
  ]

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge4
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i16 [ 0, %sw.epilog ], [ 420, %sw.bb1 ], [ 292, %entry.return_crit_edge ], [ 292, %entry.return_crit_edge2 ], [ 292, %entry.return_crit_edge3 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %attr, label %entry.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 19, label %sw.bb14
    i32 20, label %sw.bb38
    i32 26, label %sw.bb62
    i32 28, label %sw.bb85
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %7 = and i32 %5, -64768
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %conv = mul i32 %8, 1000000
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr15 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr15, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i121 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %13 = lshr i32 %11, 24
  %14 = and i32 %13, 127
  %conv37 = mul nuw nsw i32 %14, 1000000
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr39 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr39, align 4
  %add.ptr40 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i122 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %19 = lshr i32 %17, 16
  %20 = and i32 %19, 127
  %conv61 = mul nuw nsw i32 %20, 1000000
  br label %cleanup.sink.split

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr63 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr63, align 4
  %add.ptr64 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i123 = getelementptr i8, ptr %22, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %25 = lshr i32 %23, 8
  %conv84 = and i32 %25, 1
  br label %cleanup.sink.split

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr86 = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr86, align 4
  %add.ptr87 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i124 = getelementptr i8, ptr %27, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %30 = lshr i32 %28, 9
  %conv107 = and i32 %30, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb85, %sw.bb62, %sw.bb38, %sw.bb14, %sw.bb
  %conv.sink = phi i32 [ %conv, %sw.bb ], [ %conv37, %sw.bb14 ], [ %conv61, %sw.bb38 ], [ %conv84, %sw.bb62 ], [ %conv107, %sw.bb85 ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %val)
  %cmp = icmp sgt i32 %val, 999999
  %div = sdiv i32 %val, 1000000
  %6 = tail call i32 @llvm.smin.i32(i32 %div, i32 127)
  %7 = select i1 %cmp, i32 %6, i32 0
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %attr, label %entry.sw.epilog_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %.masked93 = and i64 %15, -9151314447111815168
  %16 = or i64 %.masked93, %13
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %18 = and i32 %7, 127
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr28 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %21 = trunc i64 %17 to i32
  %conv.i = or i32 %18, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %22) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %shr.i = lshr i64 %17, 32
  %conv3.i = trunc i64 %shr.i to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %add.ptr.i87 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %23) #8, !srcloc !147
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr30 = getelementptr inbounds %struct.dfl_feature, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %ioaddr30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr30, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i88 = getelementptr i8, ptr %25, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %.masked = and i64 %30, -35747326337220608
  %31 = or i64 %.masked, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %conv57 = sext i32 %7 to i64
  %shl58 = shl nsw i64 %conv57, 8
  %and59 = and i64 %shl58, 32512
  %or60 = or i64 %32, %and59
  %33 = ptrtoint ptr %ioaddr30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr30, align 4
  %add.ptr62 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %conv.i89 = trunc i64 %or60 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv.i89) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %35) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %shr.i90 = lshr i64 %32, 32
  %conv3.i91 = trunc i64 %shr.i90 to i32
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv3.i91) #8
  %add.ptr.i92 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %36) #8, !srcloc !147
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb29 ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power1_xeon_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %6 = call i32 @llvm.bswap.i32(i32 %4)
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %conv = and i32 %6, 32767
  %phi.bo = mul nuw i32 %conv, 100000
  %xeon_limit.0 = select i1 %tobool.not, i32 0, i32 %phi.bo
  %call33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %xeon_limit.0)
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power1_fpga_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %6 = call i32 @llvm.bswap.i32(i32 %4)
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %conv = and i32 %6, 32767
  %phi.bo = mul nuw i32 %conv, 100000
  %fpga_limit.0 = select i1 %tobool.not, i32 0, i32 %phi.bo
  %call33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %fpga_limit.0)
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power1_ltr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %6 = lshr i32 %4, 10
  %conv = and i32 %6, 1
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_ioctl.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_ioctl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_ioctl.__UNIQUE_ID_ddebug378, ptr noundef %dev3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %cmd) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 46592, i32 %4)
  %switch = icmp eq i32 %4, 46592
  br i1 %switch, label %do.end.cleanup_crit_edge, label %sw.default

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %do.end
  %features = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %add.ptr38 = getelementptr %struct.dfl_feature, ptr %features, i32 %6
  %cmp39 = icmp ult ptr %features, %add.ptr38
  br i1 %cmp39, label %sw.default.for.body_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.default.for.body_crit_edge
  %f.040 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %features, %sw.default.for.body_crit_edge ]
  %ops = getelementptr inbounds %struct.dfl_feature, ptr %f.040, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ioctl = getelementptr inbounds %struct.dfl_feature_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioctl, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  %call14 = tail call i32 %10(ptr noundef %3, ptr noundef %f.040, i32 noundef %cmd, i32 noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, -19
  br i1 %cmp15.not, label %if.then11.for.inc_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.dfl_feature, ptr %f.040, i32 1
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %add.ptr = getelementptr %struct.dfl_feature, ptr %features, i32 %12
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ %call14, %if.then11.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev.i = getelementptr i8, ptr %2, i32 160
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !150

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 604, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %excl_open.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %excl_open.i, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.if.end45_crit_edge

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end.i:                                         ; preds = %if.end24
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.i.do.body29_crit_edge, label %if.then2.i

if.end.i.do.body29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

if.then2.i:                                       ; preds = %if.end.i
  %open_count.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then2.i.if.end45_crit_edge

if.then2.i.if.end45_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %excl_open.i, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.end5.i, %if.end.i.do.body29_crit_edge
  %open_count8.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 8
  %14 = ptrtoint ptr %open_count8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_count8.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %open_count8.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_open.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_open, %if.then39)) #8
          to label %do.end44 [label %if.then39], !srcloc !149

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %open_count8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %open_count8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_open.__UNIQUE_ID_ddebug376, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %17) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body29
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %private_data, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.then2.i.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %retval.0.i5862 = phi i32 [ 0, %do.end44 ], [ -16, %if.end24.if.end45_crit_edge ], [ -16, %if.then2.i.if.end45_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval.0.i5862, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_release.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_release.__UNIQUE_ID_ddebug377, ptr noundef %dev3, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %excl_open.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %excl_open.i, align 4
  %open_count.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %do.end.i, label %if.end21.critedge.i, !prof !150

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 312, i32 noundef 9, ptr noundef null) #8
  %7 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %open_count.i, align 4
  br label %dfl_feature_dev_use_end.exit

if.end21.critedge.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add nsw i32 %6, -1
  %8 = ptrtoint ptr %open_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %open_count.i, align 4
  br label %dfl_feature_dev_use_end.exit

dfl_feature_dev_use_end.exit:                     ; preds = %if.end21.critedge.i, %do.end.i
  %9 = phi i32 [ %.pr, %do.end.i ], [ %dec.i, %if.end21.critedge.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then6, label %dfl_feature_dev_use_end.exit.if.end10_crit_edge

dfl_feature_dev_use_end.exit.if.end10_crit_edge:  ; preds = %dfl_feature_dev_use_end.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %dfl_feature_dev_use_end.exit
  %features = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %add.ptr24 = getelementptr %struct.dfl_feature, ptr %features, i32 %11
  %cmp25 = icmp ult ptr %features, %add.ptr24
  br i1 %cmp25, label %if.then6.for.body_crit_edge, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then6.for.body_crit_edge
  %feature.026 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %features, %if.then6.for.body_crit_edge ]
  %nr_irqs = getelementptr inbounds %struct.dfl_feature, ptr %feature.026, i32 0, i32 6
  %12 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_irqs, align 4
  %call9 = tail call i32 @dfl_fpga_set_irq_triggers(ptr noundef %feature.026, i32 noundef 0, i32 noundef %13, ptr noundef null) #8
  %incdec.ptr = getelementptr %struct.dfl_feature, ptr %feature.026, i32 1
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  %add.ptr = getelementptr %struct.dfl_feature, ptr %features, i32 %15
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %if.then6.if.end10_crit_edge, %dfl_feature_dev_use_end.exit.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_set_irq_triggers(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_dev_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ports_num_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = lshr i32 %8, 9
  %conv = and i32 %10, 7
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %conv) #8
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitstream_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, i64 noundef %14) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitstream_metadata_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, i64 noundef %14) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = and i32 %9, -15794176
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %11)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fabric_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = lshr i32 %8, 24
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %10)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socket_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 392, i32 noundef 9, ptr noundef null) #8
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %10 = lshr i32 %8, 16
  %conv = and i32 %10, 1
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !82, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !113, !114, !116, !118, !119, !121, !122, !124, !125, !127}
!llvm.named.register.sp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_dfl_fme__379_756_fme_driver_init6, !1, !"__initcall__kmod_dfl_fme__379_756_fme_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-main.c", i32 756, i32 1}
!2 = !{ptr @__exitcall_fme_driver_exit, !1, !"__exitcall_fme_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description380, !4, !"__UNIQUE_ID_description380", i1 false, i1 false}
!4 = !{!"../drivers/fpga/dfl-fme-main.c", i32 758, i32 1}
!5 = !{ptr @__UNIQUE_ID_author381, !6, !"__UNIQUE_ID_author381", i1 false, i1 false}
!6 = !{!"../drivers/fpga/dfl-fme-main.c", i32 759, i32 1}
!7 = !{ptr @__UNIQUE_ID_file382, !8, !"__UNIQUE_ID_file382", i1 false, i1 false}
!8 = !{!"../drivers/fpga/dfl-fme-main.c", i32 760, i32 1}
!9 = !{ptr @__UNIQUE_ID_license383, !8, !"__UNIQUE_ID_license383", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias384, !11, !"__UNIQUE_ID_alias384", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-fme-main.c", i32 761, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl-fme-main.c", i32 749, i32 17}
!14 = !{ptr @fme_driver, !15, !"fme_driver", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-fme-main.c", i32 747, i32 31}
!16 = !{ptr @fme_feature_drvs, !17, !"fme_feature_drvs", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-fme-main.c", i32 561, i32 34}
!18 = !{ptr @fme_hdr_id_table, !19, !"fme_hdr_id_table", i1 false, i1 false}
!19 = !{!"../drivers/fpga/dfl-fme-main.c", i32 177, i32 36}
!20 = !{ptr @fme_hdr_ops, !21, !"fme_hdr_ops", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-fme-main.c", i32 182, i32 37}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/fpga/dfl-fme-main.c", i32 143, i32 6}
!24 = !{ptr @fme_thermal_mgmt_id_table, !25, !"fme_thermal_mgmt_id_table", i1 false, i1 false}
!25 = !{!"../drivers/fpga/dfl-fme-main.c", i32 349, i32 36}
!26 = !{ptr @fme_thermal_mgmt_ops, !27, !"fme_thermal_mgmt_ops", i1 false, i1 false}
!27 = !{!"../drivers/fpga/dfl-fme-main.c", i32 354, i32 37}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/fpga/dfl-fme-main.c", i32 338, i32 12}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/fpga/dfl-fme-main.c", i32 342, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fme_thermal_mgmt_init._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @fme_thermal_mgmt_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @thermal_hwmon_chip_info, !38, !"thermal_hwmon_chip_info", i1 false, i1 false}
!38 = !{!"../drivers/fpga/dfl-fme-main.c", i32 275, i32 37}
!39 = !{ptr @thermal_hwmon_ops, !40, !"thermal_hwmon_ops", i1 false, i1 false}
!40 = !{!"../drivers/fpga/dfl-fme-main.c", i32 263, i32 31}
!41 = !{ptr @thermal_hwmon_info, !42, !"thermal_hwmon_info", i1 false, i1 false}
!42 = !{!"../drivers/fpga/dfl-fme-main.c", i32 268, i32 41}
!43 = !{ptr @thermal_extra_groups, !44, !"thermal_extra_groups", i1 false, i1 false}
!44 = !{!"../drivers/fpga/dfl-fme-main.c", i32 312, i32 1}
!45 = !{ptr @thermal_extra_group, !46, !"thermal_extra_group", i1 false, i1 false}
!46 = !{!"../drivers/fpga/dfl-fme-main.c", i32 308, i32 37}
!47 = !{ptr @thermal_extra_attrs, !48, !"thermal_extra_attrs", i1 false, i1 false}
!48 = !{!"../drivers/fpga/dfl-fme-main.c", i32 294, i32 26}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/fpga/dfl-fme-main.c", i32 292, i32 8}
!51 = !{ptr @dev_attr_temp1_max_policy, !50, !"dev_attr_temp1_max_policy", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/fpga/dfl-fme-main.c", i32 288, i32 22}
!54 = !{ptr @fme_power_mgmt_id_table, !55, !"fme_power_mgmt_id_table", i1 false, i1 false}
!55 = !{!"../drivers/fpga/dfl-fme-main.c", i32 552, i32 36}
!56 = !{ptr @fme_power_mgmt_ops, !57, !"fme_power_mgmt_ops", i1 false, i1 false}
!57 = !{!"../drivers/fpga/dfl-fme-main.c", i32 557, i32 37}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/fpga/dfl-fme-main.c", i32 541, i32 12}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/fpga/dfl-fme-main.c", i32 545, i32 3}
!62 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fme_power_mgmt_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fme_power_mgmt_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @power_hwmon_chip_info, !66, !"power_hwmon_chip_info", i1 false, i1 false}
!66 = !{!"../drivers/fpga/dfl-fme-main.c", i32 475, i32 37}
!67 = !{ptr @power_hwmon_ops, !68, !"power_hwmon_ops", i1 false, i1 false}
!68 = !{!"../drivers/fpga/dfl-fme-main.c", i32 462, i32 31}
!69 = !{ptr @power_hwmon_info, !70, !"power_hwmon_info", i1 false, i1 false}
!70 = !{!"../drivers/fpga/dfl-fme-main.c", i32 468, i32 41}
!71 = !{ptr @power_extra_groups, !72, !"power_extra_groups", i1 false, i1 false}
!72 = !{!"../drivers/fpga/dfl-fme-main.c", i32 533, i32 1}
!73 = !{ptr @power_extra_group, !72, !"power_extra_group", i1 false, i1 false}
!74 = !{ptr @power_extra_attrs, !75, !"power_extra_attrs", i1 false, i1 false}
!75 = !{!"../drivers/fpga/dfl-fme-main.c", i32 526, i32 26}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/fpga/dfl-fme-main.c", i32 522, i32 8}
!78 = !{ptr @dev_attr_power1_xeon_limit, !77, !"dev_attr_power1_xeon_limit", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/fpga/dfl-fme-main.c", i32 523, i32 8}
!81 = !{ptr @dev_attr_power1_fpga_limit, !80, !"dev_attr_power1_fpga_limit", i1 false, i1 false}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/fpga/dfl-fme-main.c", i32 524, i32 8}
!84 = !{ptr @dev_attr_power1_ltr, !83, !"dev_attr_power1_ltr", i1 false, i1 false}
!85 = !{ptr @fme_fops, !86, !"fme_fops", i1 false, i1 false}
!86 = !{!"../drivers/fpga/dfl-fme-main.c", i32 699, i32 37}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/fpga/dfl-fme-main.c", i32 646, i32 2}
!89 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @fme_ioctl.__UNIQUE_ID_ddebug378, !88, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/fpga/dfl-fme-main.c", i32 610, i32 3}
!94 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fme_open.__UNIQUE_ID_ddebug376, !93, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/fpga/dfl-fme-main.c", i32 625, i32 2}
!98 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @fme_release.__UNIQUE_ID_ddebug377, !97, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/fpga/dfl.h", i32 312, i32 6}
!102 = !{ptr @fme_dev_groups, !103, !"fme_dev_groups", i1 false, i1 false}
!103 = !{!"../drivers/fpga/dfl-fme-main.c", i32 741, i32 38}
!104 = !{ptr @fme_hdr_group, !105, !"fme_hdr_group", i1 false, i1 false}
!105 = !{!"../drivers/fpga/dfl-fme-main.c", i32 133, i32 37}
!106 = !{ptr @fme_hdr_attrs, !107, !"fme_hdr_attrs", i1 false, i1 false}
!107 = !{!"../drivers/fpga/dfl-fme-main.c", i32 123, i32 26}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/fpga/dfl-fme-main.c", i32 40, i32 8}
!110 = !{ptr @dev_attr_ports_num, !109, !"dev_attr_ports_num", i1 false, i1 false}
!111 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/fpga/dfl-fme-main.c", i32 58, i32 8}
!113 = !{ptr @dev_attr_bitstream_id, !112, !"dev_attr_bitstream_id", i1 false, i1 false}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/fpga/dfl-fme-main.c", i32 56, i32 35}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/fpga/dfl-fme-main.c", i32 76, i32 8}
!118 = !{ptr @dev_attr_bitstream_metadata, !117, !"dev_attr_bitstream_metadata", i1 false, i1 false}
!119 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/fpga/dfl-fme-main.c", i32 91, i32 8}
!121 = !{ptr @dev_attr_cache_size, !120, !"dev_attr_cache_size", i1 false, i1 false}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/fpga/dfl-fme-main.c", i32 106, i32 8}
!124 = !{ptr @dev_attr_fabric_version, !123, !"dev_attr_fabric_version", i1 false, i1 false}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/fpga/dfl-fme-main.c", i32 121, i32 8}
!127 = !{ptr @dev_attr_socket_id, !126, !"dev_attr_socket_id", i1 false, i1 false}
!128 = !{!"sp"}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 4831666}
!139 = !{i64 4831863}
!140 = !{i64 2152317096}
!141 = !{i64 2154222685, i64 2154222965, i64 2154223299, i64 2154223633}
!142 = !{i64 2154234934, i64 2154235214, i64 2154235548, i64 2154235882}
!143 = !{i64 5692342}
!144 = !{i64 2153800158}
!145 = !{i64 2153800596}
!146 = !{i64 2153800966}
!147 = !{i64 5691924}
!148 = !{i64 2153801339}
!149 = !{i64 2148808326, i64 2148808331, i64 2148808344, i64 2148808388, i64 2148808422, i64 2148808443}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i8 0, i8 2}
