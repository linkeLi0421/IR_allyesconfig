; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-cti-core.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-cti-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.coresight_ops_ect = type { ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.cti_assoc_op = type { ptr, ptr }
%struct.cti_drvdata = type { ptr, ptr, %struct.cti_device, %struct.spinlock, %struct.cti_config, %struct.list_head, ptr }
%struct.cti_device = type { i32, i32, %struct.list_head, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cti_config = type { i32, i32, %struct.atomic_t, i8, i8, i32, i32, i32, i8, i8, i32, i8, [32 x i32], [32 x i32], i32, i32 }
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
%struct.cti_trig_con = type { ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.cti_trig_grp = type { i32, i32, [0 x i32] }
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.coresight_sysfs_link = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@cti_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cti_probe, ptr @cti_remove, ptr null, ptr @cti_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_coresight_cti__297_1003_cti_init6 = internal global ptr @cti_init, section ".initcall6.init", align 4
@__exitcall_cti_exit = internal global ptr @cti_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [56 x i8] c"coresight_cti.author=Mike Leach <mike.leach@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [51 x i8] c"coresight_cti.description=Arm CoreSight CTI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [61 x i8] c"coresight_cti.file=drivers/hwtracing/coresight/coresight-cti\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [29 x i8] c"coresight_cti.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight-cti\00", [18 x i8] zeroinitializer }, align 32
@cti_ids = internal constant { [7 x %struct.amba_id], [44 x i8] } { [7 x %struct.amba_id] [%struct.amba_id { i32 768262, i32 1048575, ptr null }, %struct.amba_id { i32 768290, i32 1048575, ptr null }, %struct.amba_id { i32 768424, i32 1048575, ptr null }, %struct.amba_id { i32 768426, i32 1048575, ptr null }, %struct.amba_id { i32 768474, i32 1048575, ptr @uci_id_cti }, %struct.amba_id { i32 768493, i32 1048575, ptr @uci_id_cti }, %struct.amba_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@cti_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@cti_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 891, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"coresight_cti_get_platform_data err\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cti_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/hwtracing/coresight/coresight-cti-core.c\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cti_probe._entry_ptr = internal global ptr @cti_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cti_cpu%d\00", [22 x i8] zeroinitializer }, align 32
@cti_sys_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.19, ptr null }, [20 x i8] zeroinitializer }, align 32
@cti_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 916, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: create dynamic sysfs entries failed\0A\00", [55 x i8] zeroinitializer }, align 32
@cti_probe._entry_ptr.11 = internal global ptr @cti_probe._entry.9, section ".printk_index", align 4
@cti_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr null, ptr null, ptr null, ptr @cti_ops_ect }, [44 x i8] zeroinitializer }, align 32
@ect_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ect_mutex, i64 52), ptr getelementptr (i8, ptr @ect_mutex, i64 52) }, ptr @ect_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ect_net = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ect_net, ptr @ect_net }, [24 x i8] zeroinitializer }, align 32
@cti_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 946, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CTI initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cti_probe._entry_ptr.15 = internal global ptr @cti_probe._entry.12, section ".printk_index", align 4
@cti_set_default_config.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@cti_set_default_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 231, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Limiting HW MaxTrig value(%d) to driver max(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cti_set_default_config\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cti_set_default_config._entry_ptr = internal global ptr @cti_set_default_config._entry, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cti_sys\00", [24 x i8] zeroinitializer }, align 32
@nr_cti_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arm/coresight_cti:starting\00", [37 x i8] zeroinitializer }, align 32
@cti_cpu_pm_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cti_cpu_pm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cti_cpu_drvdata = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@cti_cpu_pm_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cti_ops_ect = internal constant { %struct.coresight_ops_ect, [24 x i8] } { %struct.coresight_ops_ect { ptr @cti_enable, ptr @cti_disable }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ect_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ect_mutex\00", [22 x i8] zeroinitializer }, align 32
@cti_add_sysfs_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 494, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set CTI sysfs link %s<=>%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cti_add_sysfs_link\00", [45 x i8] zeroinitializer }, align 32
@cti_add_sysfs_link._entry_ptr = internal global ptr @cti_add_sysfs_link._entry, section ".printk_index", align 4
@uci_id_cti = internal global { [1 x %struct.amba_cs_uci_id], [16 x i8] } { [1 x %struct.amba_cs_uci_id] [%struct.amba_cs_uci_id { i32 1198529044, i32 -983041, i32 20, ptr null }], [16 x i8] zeroinitializer }, align 32
@cti_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Error registering cti driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cti_init\00", [23 x i8] zeroinitializer }, align 32
@cti_init._entry_ptr = internal global ptr @cti_init._entry, section ".printk_index", align 4
@cti_assoc_ops = internal global { %struct.cti_assoc_op, [24 x i8] } { %struct.cti_assoc_op { ptr @cti_add_assoc_to_csdev, ptr @cti_remove_assoc_from_csdev }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 328, i32 57 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"cti_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 975, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 977, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"cti_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 963, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 884, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 891, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 900, i32 51 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"cti_sys_devs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 915, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"cti_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 814, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"ect_mutex\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"ect_net\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 37, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 946, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 229, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"nr_cti_cpu\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 46, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 760, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"cti_cpu_pm_nb\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 716, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"cti_cpu_drvdata\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 49, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"cti_ops_ect\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 809, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 40, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 492, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"uci_id_cti\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 954, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 992, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"cti_assoc_ops\00", align 1
@___asan_gen_.153 = private constant [52 x i8] c"../drivers/hwtracing/coresight/coresight-cti-core.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 610, i32 28 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_cti_exit, ptr @__initcall__kmod_coresight_cti__297_1003_cti_init6, ptr @cti_add_sysfs_link._entry, ptr @cti_add_sysfs_link._entry_ptr, ptr @cti_exit, ptr @cti_init._entry, ptr @cti_init._entry_ptr, ptr @cti_probe._entry, ptr @cti_probe._entry.12, ptr @cti_probe._entry.9, ptr @cti_probe._entry_ptr, ptr @cti_probe._entry_ptr.11, ptr @cti_probe._entry_ptr.15, ptr @cti_set_default_config._entry, ptr @cti_set_default_config._entry_ptr, ptr @.str, ptr @cti_driver, ptr @.str.1, ptr @cti_ids, ptr @cti_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cti_sys_devs, ptr @.str.10, ptr @cti_ops, ptr @ect_mutex, ptr @ect_net, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nr_cti_cpu, ptr @.str.20, ptr @cti_cpu_pm_nb, ptr @cti_cpu_drvdata, ptr @cti_ops_ect, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @uci_id_cti, ptr @.str.25, ptr @.str.26, ptr @cti_assoc_ops], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_ids to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_sys_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ect_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ect_net to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_set_default_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_cti_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_cpu_pm_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_cpu_drvdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_ops_ect to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_add_sysfs_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uci_id_cti to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_assoc_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cti_write_all_hw_regs(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !95
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_trig_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39 = icmp sgt i32 %5, 0
  br i1 %cmp39, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 12, i32 %i.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata, align 4
  %mul = shl i32 %i.040, 2
  %add = add i32 %mul, 32
  %add.ptr4 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #9, !srcloc !95
  %arrayidx5 = getelementptr %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 13, i32 %i.040
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %add8 = add i32 %mul, 160
  %add.ptr9 = getelementptr i8, ptr %15, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %13) #9, !srcloc !95
  %inc = add nuw nsw i32 %i.040, 1
  %16 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_trig_max, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 14
  %18 = ptrtoint ptr %ctigate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctigate, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata, align 4
  %add.ptr11 = getelementptr i8, ptr %22, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %20) #9, !srcloc !95
  %asicctl = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 15
  %23 = ptrtoint ptr %asicctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asicctl, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drvdata, align 4
  %add.ptr13 = getelementptr i8, ptr %27, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %25) #9, !srcloc !95
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 10
  %28 = ptrtoint ptr %ctiappset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctiappset, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drvdata, align 4
  %add.ptr15 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %30) #9, !srcloc !95
  %33 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 16777216) #9, !srcloc !95
  %35 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i38 = getelementptr i8, ptr %36, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #9, !srcloc !95
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cti_write_single_reg(ptr nocapture noundef readonly %drvdata, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !95
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #9, !srcloc !95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cti_write_intack(ptr nocapture noundef readonly %dev, i32 noundef %ackval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %cti_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cti_active.exit:                                  ; preds = %entry
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.not = icmp eq i8 %7, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end_crit_edge, label %if.then

cti_active.exit.if.end_crit_edge:                 ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %ackval) #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !95
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %14, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %if.then, %cti_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_add_connection_entry(ptr noundef %dev, ptr noundef %drvdata, ptr noundef %tc, ptr noundef %csdev, ptr noundef %assoc_dev_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctidev = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2
  %con_dev = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 2
  %0 = ptrtoint ptr %con_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %csdev, ptr %con_dev, align 4
  %tobool.not = icmp eq ptr %csdev, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.then.dev_name.exit_crit_edge ]
  %con_dev_name = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 3
  %5 = ptrtoint ptr %con_dev_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i, ptr %con_dev_name, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %assoc_dev_name, null
  br i1 %cmp.not, label %if.else.if.end9_crit_edge, label %if.then2

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %if.else
  %call3 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull %assoc_dev_name, i32 noundef 3264) #9
  %con_dev_name4 = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 3
  %6 = ptrtoint ptr %con_dev_name4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %con_dev_name4, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.else.if.end9_crit_edge, %dev_name.exit
  %node = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 4
  %trig_cons = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2
  %prev.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %8, ptr noundef %trig_cons) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev.i, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %trig_cons, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %ctidev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctidev, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %ctidev, align 4
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tc, align 4
  %used_mask = getelementptr inbounds %struct.cti_trig_grp, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %used_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used_mask, align 4
  %trig_in_use = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %trig_in_use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trig_in_use, align 4
  %or = or i32 %20, %18
  store i32 %or, ptr %trig_in_use, align 4
  %con_out = getelementptr inbounds %struct.cti_trig_con, ptr %tc, i32 0, i32 1
  %21 = ptrtoint ptr %con_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %con_out, align 4
  %used_mask10 = getelementptr inbounds %struct.cti_trig_grp, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %used_mask10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used_mask10, align 4
  %trig_out_use = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %trig_out_use to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %trig_out_use, align 4
  %or12 = or i32 %26, %24
  store i32 %or12, ptr %trig_out_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @cti_allocate_trig_con(ptr noundef %dev, i32 noundef %in_sigs, i32 noundef %out_sigs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = shl i32 %in_sigs, 2
  %1 = add i32 %0, 8
  %call.i26 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %1, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i26, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = shl i32 %out_sigs, 2
  %3 = add i32 %2, 8
  %call.i27 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %3, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i27, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i26, ptr %call.i, align 4
  %con_out = getelementptr inbounds %struct.cti_trig_con, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %con_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i27, ptr %con_out, align 4
  %6 = ptrtoint ptr %call.i26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %in_sigs, ptr %call.i26, align 4
  %7 = ptrtoint ptr %call.i27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %out_sigs, ptr %call.i27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_add_default_connection(ptr noundef %dev, ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_trig_max, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = shl i32 %1, 2
  %3 = add i32 %2, 8
  %call.i26.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %3, i32 noundef 3520) #9
  %tobool2.not.i = icmp eq ptr %call.i26.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call.i27.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %3, i32 noundef 3520) #9
  %tobool6.not.i = icmp eq ptr %call.i27.i, null
  br i1 %tobool6.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i26.i, ptr %call.i.i, align 4
  %con_out.i = getelementptr inbounds %struct.cti_trig_con, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %con_out.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i27.i, ptr %con_out.i, align 4
  %6 = ptrtoint ptr %call.i26.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %call.i26.i, align 4
  %7 = ptrtoint ptr %call.i27.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %call.i27.i, align 4
  %sub1 = sub i32 32, %1
  %shr = lshr i32 -1, %sub1
  %used_mask = getelementptr inbounds %struct.cti_trig_grp, ptr %call.i26.i, i32 0, i32 1
  %8 = ptrtoint ptr %used_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %used_mask, align 4
  %used_mask2 = getelementptr inbounds %struct.cti_trig_grp, ptr %call.i27.i, i32 0, i32 1
  %9 = ptrtoint ptr %used_mask2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %used_mask2, align 4
  %ctidev.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2
  %con_dev.i = getelementptr inbounds %struct.cti_trig_con, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %con_dev.i, align 4
  %call3.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 3264) #9
  %con_dev_name4.i = getelementptr inbounds %struct.cti_trig_con, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %con_dev_name4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3.i, ptr %con_dev_name4.i, align 4
  %tobool6.not.i15 = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i15, label %if.end.cleanup_crit_edge, label %if.end9.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %node.i = getelementptr inbounds %struct.cti_trig_con, ptr %call.i.i, i32 0, i32 4
  %trig_cons.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2
  %prev.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %trig_cons.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.list_add_tail.exit.i_crit_edge

if.end9.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %trig_cons.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cti_trig_con, ptr %call.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end9.i.list_add_tail.exit.i_crit_edge
  %18 = ptrtoint ptr %ctidev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctidev.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %ctidev.i, align 4
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i.i, align 4
  %used_mask.i = getelementptr inbounds %struct.cti_trig_grp, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %used_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used_mask.i, align 4
  %trig_in_use.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %trig_in_use.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trig_in_use.i, align 4
  %or.i = or i32 %25, %23
  store i32 %or.i, ptr %trig_in_use.i, align 4
  %26 = ptrtoint ptr %con_out.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %con_out.i, align 4
  %used_mask10.i = getelementptr inbounds %struct.cti_trig_grp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %used_mask10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used_mask10.i, align 4
  %trig_out_use.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %trig_out_use.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %trig_out_use.i, align 4
  %or12.i = or i32 %31, %29
  store i32 %or12.i, ptr %trig_out_use.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit.i ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_channel_trig_op(ptr nocapture noundef readonly %dev, i32 noundef %op, i32 noundef %direction, i32 noundef %channel_idx, i32 noundef %trigger_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_idx)
  %cmp.not = icmp ugt i32 %5, %channel_idx
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_trig_max = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %nr_trig_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_trig_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %trigger_idx)
  %cmp2.not = icmp ugt i32 %7, %trigger_idx
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shl = shl nuw i32 1, %trigger_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp3 = icmp eq i32 %direction, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %trig_in_use = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 5
  %8 = ptrtoint ptr %trig_in_use to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trig_in_use, align 4
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end16_crit_edge

if.then4.if.end16_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %trig_out_use = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %trig_out_use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trig_out_use, align 4
  %and7 = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %trig_filter_enable = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %trig_filter_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %trig_filter_enable, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %trig_out_filter = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %trig_out_filter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trig_out_filter, align 4
  %and12 = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge, %if.then4.if.end16_crit_edge
  %cond.v = phi i32 [ 160, %if.end10.if.end16_crit_edge ], [ 160, %land.lhs.true.if.end16_crit_edge ], [ 32, %if.then4.if.end16_crit_edge ]
  %shl17 = shl nuw i32 1, %channel_idx
  %mul = shl i32 %trigger_idx, 2
  %cond = add i32 %cond.v, %mul
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %arrayidx = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 12, i32 %trigger_idx
  %arrayidx24 = getelementptr %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 13, i32 %trigger_idx
  %cond26.in = select i1 %cmp3, ptr %arrayidx, ptr %arrayidx24
  %16 = ptrtoint ptr %cond26.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond26 = load i32, ptr %cond26.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp27 = icmp eq i32 %op, 0
  %or = or i32 %cond26, %shl17
  %neg = xor i32 %shl17, -1
  %and30 = and i32 %cond26, %neg
  %reg_value.0 = select i1 %cmp27, i32 %or, i32 %and30
  %arrayidx.arrayidx24 = select i1 %cmp3, ptr %arrayidx, ptr %arrayidx24
  %17 = ptrtoint ptr %arrayidx.arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %reg_value.0, ptr %arrayidx.arrayidx24, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end16.if.end42_crit_edge, label %cti_active.exit

if.end16.if.end42_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

cti_active.exit:                                  ; preds = %if.end16
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.i.not = icmp eq i8 %21, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end42_crit_edge, label %if.then41

cti_active.exit.if.end42_crit_edge:               ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %reg_value.0) #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #9, !srcloc !95
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %28, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !95
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %cti_active.exit.if.end42_crit_edge, %if.end16.if.end42_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_channel_gate_op(ptr nocapture noundef readonly %dev, i32 noundef %op, i32 noundef %channel_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_idx)
  %cmp.not = icmp ugt i32 %5, %channel_idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %channel_idx
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %ctigate = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 14
  %6 = ptrtoint ptr %ctigate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctigate, align 4
  %8 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %if.end.if.end9_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, %shl
  br label %if.then4

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  br label %if.then4

if.then4:                                         ; preds = %sw.bb2, %sw.bb
  %reg_value.0.ph = phi i32 [ %or, %sw.bb ], [ %and, %sw.bb2 ]
  %9 = ptrtoint ptr %ctigate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %reg_value.0.ph, ptr %ctigate, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then4.if.end9_crit_edge, label %cti_active.exit

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cti_active.exit:                                  ; preds = %if.then4
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i.not = icmp eq i8 %13, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end9_crit_edge, label %if.then7

cti_active.exit.if.end9_crit_edge:                ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %reg_value.0.ph) #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #9, !srcloc !95
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %20, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !95
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %cti_active.exit.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %err.031 = phi i32 [ 0, %cti_active.exit.if.end9_crit_edge ], [ 0, %if.then7 ], [ -22, %if.end.if.end9_crit_edge ], [ 0, %if.then4.if.end9_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.031, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_channel_setop(ptr nocapture noundef readonly %dev, i32 noundef %op, i32 noundef %channel_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %channel_idx)
  %cmp.not = icmp ugt i32 %5, %channel_idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %channel_idx
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %ctiappset = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 10
  %6 = ptrtoint ptr %ctiappset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctiappset, align 4
  %8 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %op, label %if.end.if.end13_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, %shl
  br label %land.lhs.true

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  br label %land.lhs.true

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %neg7 = xor i32 %shl, -1
  %and9 = and i32 %7, %neg7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb6, %sw.bb4, %sw.bb
  %and9.sink = phi i32 [ %and9, %sw.bb6 ], [ %and, %sw.bb4 ], [ %or, %sw.bb ]
  %reg_value.0.ph = phi i32 [ %shl, %sw.bb6 ], [ %shl, %sw.bb4 ], [ %or, %sw.bb ]
  %reg_offset.0.ph = phi i32 [ 28, %sw.bb6 ], [ 24, %sw.bb4 ], [ 20, %sw.bb ]
  %9 = ptrtoint ptr %ctiappset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and9.sink, ptr %ctiappset, align 4
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end13_crit_edge, label %cti_active.exit

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

cti_active.exit:                                  ; preds = %land.lhs.true
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i.not = icmp eq i8 %13, 0
  br i1 %tobool1.i.not, label %cti_active.exit.if.end13_crit_edge, label %if.then12

cti_active.exit.if.end13_crit_edge:               ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %cti_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %reg_value.0.ph) #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %reg_offset.0.ph
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #9, !srcloc !95
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %20, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !95
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %cti_active.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %err.041 = phi i32 [ 0, %if.then12 ], [ 0, %cti_active.exit.if.end13_crit_edge ], [ -22, %if.end.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.041, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_enable(ptr nocapture noundef readonly %csdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %csdev.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csdev.i, align 4
  %parent.i = getelementptr inbounds %struct.coresight_device, ptr %5, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.cti_state_unchanged.i_crit_edge

entry.cti_state_unchanged.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_state_unchanged.i

lor.lhs.false.i:                                  ; preds = %entry
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not.i = icmp eq i8 %11, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.cti_state_unchanged.i_crit_edge, label %if.end.i

lor.lhs.false.i.cti_state_unchanged.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_state_unchanged.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csdev.i, align 4
  %call11.i = tail call i32 @coresight_claim_device(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.cti_err_not_enabled.i_crit_edge

if.end.i.cti_err_not_enabled.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_err_not_enabled.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cti_write_all_hw_regs(ptr noundef %3) #9
  %14 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hw_enabled.i, align 4
  %enable_req_count.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enable_req_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %enable_req_count.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enable_req_count.i, ptr %enable_req_count.i, i32 1, ptr elementtype(i32) %enable_req_count.i) #9, !srcloc !99
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call5.i) #9
  br label %cti_enable_hw.exit

cti_state_unchanged.i:                            ; preds = %lor.lhs.false.i.cti_state_unchanged.i_crit_edge, %entry.cti_state_unchanged.i_crit_edge
  %enable_req_count19.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 2
  %call.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enable_req_count19.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %enable_req_count19.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enable_req_count19.i, ptr %enable_req_count19.i, i32 1, ptr elementtype(i32) %enable_req_count19.i) #9, !srcloc !99
  br label %cti_err_not_enabled.i

cti_err_not_enabled.i:                            ; preds = %cti_state_unchanged.i, %if.end.i.cti_err_not_enabled.i_crit_edge
  %rc.0.i = phi i32 [ 0, %cti_state_unchanged.i ], [ %call11.i, %if.end.i.cti_err_not_enabled.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call5.i) #9
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %call.i41.i = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #9
  br label %cti_enable_hw.exit

cti_enable_hw.exit:                               ; preds = %cti_err_not_enabled.i, %if.end14.i
  %retval.0.i = phi i32 [ %rc.0.i, %cti_err_not_enabled.i ], [ 0, %if.end14.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cti_disable(ptr nocapture noundef readonly %csdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %csdev.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csdev.i, align 4
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #9
  %enable_req_count.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enable_req_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %enable_req_count.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enable_req_count.i, ptr %enable_req_count.i, i32 1, ptr elementtype(i32) %enable_req_count.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %entry.cti_not_disabled.i_crit_edge, label %if.end.i

entry.cti_not_disabled.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_not_disabled.i

if.end.i:                                         ; preds = %entry
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_enabled.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i.cti_not_disabled.i_crit_edge, label %lor.lhs.false.i

if.end.i.cti_not_disabled.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_not_disabled.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_powered.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.cti_not_disabled.i_crit_edge, label %if.end8.i

lor.lhs.false.i.cti_not_disabled.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_not_disabled.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !95
  %15 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %hw_enabled.i, align 4
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %5) #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %add.ptr.i1.i = getelementptr i8, ptr %17, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #9, !srcloc !95
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #9
  %parent.i = getelementptr inbounds %struct.coresight_device, ptr %5, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #9
  br label %cti_disable_hw.exit

cti_not_disabled.i:                               ; preds = %lor.lhs.false.i.cti_not_disabled.i_crit_edge, %if.end.i.cti_not_disabled.i_crit_edge, %entry.cti_not_disabled.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #9
  br label %cti_disable_hw.exit

cti_disable_hw.exit:                              ; preds = %cti_not_disabled.i, %if.end8.i
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cti_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coresight_remove_cti_ops() #9
  tail call void @amba_driver_unregister(ptr noundef nonnull @cti_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_remove_cti_ops() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cti_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @cti_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @coresight_set_cti_ops(ptr noundef nonnull @cti_assoc_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cti_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %cti_desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cti_desc) #9
  %0 = call ptr @memset(ptr %cti_desc, i32 255, i32 44)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 392, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 7
  %3 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.274.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %.compoundliteral.sroa.274.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %.compoundliteral.sroa.274.0.access.sroa_idx, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i, align 4
  %ctidev = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2
  %cpu = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cpu, align 4
  %7 = ptrtoint ptr %ctidev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ctidev, align 4
  %ctm_id = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %ctm_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ctm_id, align 4
  %trig_cons = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %trig_cons to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %trig_cons, ptr %trig_cons, align 4
  %prev.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %trig_cons, ptr %prev.i, align 4
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cti_probe.__key, i16 noundef signext 3) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4040
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !103
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %and.i = lshr i32 %14, 8
  %shr.i = and i32 %and.i, 255
  %nr_trig_max.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %nr_trig_max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i, ptr %nr_trig_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i)
  %cmp.i119 = icmp ugt i32 %shr.i, 32
  br i1 %cmp.i119, label %do.body.i, label %if.end7.cti_set_default_config.exit_crit_edge

if.end7.cti_set_default_config.exit_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_set_default_config.exit

do.body.i:                                        ; preds = %if.end7
  %.b26.i = load i1, ptr @cti_set_default_config.__print_once, align 1
  br i1 %.b26.i, label %do.body.i.do.end7.i_crit_edge, label %if.then3.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cti_set_default_config.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %adev, ptr noundef nonnull @.str.16, i32 noundef %shr.i, i32 noundef 32) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then3.i, %do.body.i.do.end7.i_crit_edge
  %16 = ptrtoint ptr %nr_trig_max.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %nr_trig_max.i, align 4
  br label %cti_set_default_config.exit

cti_set_default_config.exit:                      ; preds = %do.end7.i, %if.end7.cti_set_default_config.exit_crit_edge
  %config1.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4
  %and10.i = lshr i32 %14, 16
  %shr11.i = and i32 %and10.i, 15
  %17 = ptrtoint ptr %config1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr11.i, ptr %config1.i, align 4
  %trig_filter_enable.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %trig_filter_enable.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %trig_filter_enable.i, align 4
  %sub13.i = sub nuw nsw i32 32, %shr11.i
  %shr14.i = lshr i32 -1, %sub13.i
  %ctigate.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4, i32 14
  %19 = ptrtoint ptr %ctigate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr14.i, ptr %ctigate.i, align 4
  %enable_req_count.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enable_req_count.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %enable_req_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %enable_req_count.i, align 4
  %call13 = tail call ptr @coresight_cti_get_platform_data(ptr noundef %adev) #9
  %cmp.i120 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %do.end18, label %if.end20

do.end18:                                         ; preds = %cti_set_default_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.3) #12
  %21 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end20:                                         ; preds = %cti_set_default_config.exit
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %hw_powered to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %hw_powered, align 1
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp = icmp sgt i32 %24, -1
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %adev, i32 noundef 3264, ptr noundef nonnull @.str.8, i32 noundef %24) #9
  br label %if.end29

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @cti_sys_devs, ptr noundef %adev) #9
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  %call27.sink = phi ptr [ %call26, %if.then23 ], [ %call27, %if.else ]
  %25 = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call27.sink, ptr %25, align 4
  %tobool31.not = icmp eq ptr %call27.sink, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i121 = icmp eq i32 %28, -1
  br i1 %cmp.i121, label %if.end33.if.end37_crit_edge, label %if.end.i

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end.i:                                         ; preds = %if.end33
  %29 = load i32, ptr @nr_cti_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.done.i_crit_edge

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end2.i:                                        ; preds = %if.end.i
  tail call void @cpus_read_lock() #9
  %call.i.i = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 144, ptr noundef nonnull @.str.20, i1 noundef zeroext false, ptr noundef nonnull @cti_starting_cpu, ptr noundef nonnull @cti_dying_cpu, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cpus_read_unlock() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end2.i
  %call6.i = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @cti_cpu_pm_nb) #9
  tail call void @cpus_read_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.done.i_crit_edge, label %if.then8.i

if.end5.i.done.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__cpuhp_remove_state(i32 noundef 144, i1 noundef zeroext false) #9
  br label %cleanup

done.i:                                           ; preds = %if.end5.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %30 = load i32, ptr @nr_cti_cpu, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr @nr_cti_cpu, align 4
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %done.i, %if.end33.if.end37_crit_edge
  %call38 = tail call i32 @cti_create_cons_sysfs(ptr noundef %adev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.10, ptr noundef %35) #12
  br label %pm_release

if.end45:                                         ; preds = %if.end37
  %pdata46 = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 3
  %36 = ptrtoint ptr %pdata46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call13, ptr %pdata46, align 4
  %37 = ptrtoint ptr %cti_desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %cti_desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 1
  %38 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 2
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cti_ops, ptr %ops, align 4
  %con_groups = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %con_groups to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %con_groups, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 5
  %42 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %groups, align 4
  %dev48 = getelementptr inbounds %struct.coresight_desc, ptr %cti_desc, i32 0, i32 4
  %43 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %adev, ptr %dev48, align 4
  %call49 = call ptr @coresight_register(ptr noundef nonnull %cti_desc) #9
  %csdev = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call49, ptr %csdev, align 4
  %cmp.i122 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call49 to i32
  br label %pm_release

if.end55:                                         ; preds = %if.end45
  call void @mutex_lock_nested(ptr noundef nonnull @ect_mutex, i32 noundef 0) #9
  %node = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 5
  %46 = load ptr, ptr @ect_net, align 4
  %call.i.i123 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @ect_net, ptr noundef %46) #9
  br i1 %call.i.i123, label %if.end.i.i, label %if.end55.list_add.exit_crit_edge

if.end55.list_add.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ect_net, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @ect_net, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end55.list_add.exit_crit_edge
  call fastcc void @cti_update_conn_xrefs(ptr noundef nonnull %call.i)
  call void @mutex_unlock(ptr noundef nonnull @ect_mutex) #9
  %50 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csdev, align 4
  %release = getelementptr inbounds %struct.coresight_device, ptr %51, i32 0, i32 5, i32 35
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  %csdev_release = getelementptr inbounds %struct.cti_drvdata, ptr %call.i, i32 0, i32 6
  %54 = ptrtoint ptr %csdev_release to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %csdev_release, align 4
  store ptr @cti_device_release, ptr %release, align 4
  %call.i124 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #9
  %55 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csdev, align 4
  %dev67 = getelementptr inbounds %struct.coresight_device, ptr %56, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.13) #12
  br label %cleanup

pm_release:                                       ; preds = %if.then52, %do.end43
  %ret.0 = phi i32 [ %call38, %do.end43 ], [ %45, %if.then52 ]
  %57 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i126 = icmp eq i32 %58, -1
  br i1 %cmp.i126, label %pm_release.cleanup_crit_edge, label %if.end.i128

pm_release.cleanup_crit_edge:                     ; preds = %pm_release
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i128:                                      ; preds = %pm_release
  %arrayidx.i127 = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx.i127, align 4
  %60 = load i32, ptr @nr_cti_cpu, align 4
  %dec.i = add i32 %60, -1
  store i32 %dec.i, ptr @nr_cti_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %if.then4.i130, label %if.end.i128.cleanup_crit_edge

if.end.i128.cleanup_crit_edge:                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i130:                                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  %call.i129 = call i32 @cpu_pm_unregister_notifier(ptr noundef nonnull @cti_cpu_pm_nb) #9
  call void @__cpuhp_remove_state(i32 noundef 144, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i130, %if.end.i128.cleanup_crit_edge, %pm_release.cleanup_crit_edge, %list_add.exit, %if.then8.i, %if.then4.i, %if.end29.cleanup_crit_edge, %do.end18, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %21, %do.end18 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ %call.i.i, %if.then4.i ], [ %call6.i, %if.then8.i ], [ %ret.0, %pm_release.cleanup_crit_edge ], [ %ret.0, %if.end.i128.cleanup_crit_edge ], [ %ret.0, %if.then4.i130 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cti_desc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cti_remove(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  %link_info.i.i = alloca %struct.coresight_sysfs_link, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ect_mutex, i32 noundef 0) #9
  %trig_cons.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %trig_cons.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn17.i = load ptr, ptr %trig_cons.i, align 4
  %cmp.not18.i = icmp eq ptr %.pn17.i, %trig_cons.i
  br i1 %cmp.not18.i, label %entry.cti_remove_conn_xrefs.exit_crit_edge, label %for.body.lr.ph.i

entry.cti_remove_conn_xrefs.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_remove_conn_xrefs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %3 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 2
  %csdev.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn19.i = phi ptr [ %.pn17.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %con_dev.i = getelementptr i8, ptr %.pn19.i, i32 -8
  %6 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_dev.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @coresight_set_assoc_ectdev_mutex(ptr noundef nonnull %7, ptr noundef null) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_info.i.i) #9
  %8 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csdev.i.i, align 4
  %10 = ptrtoint ptr %link_info.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %link_info.i.i, align 4
  %con_dev_name.i.i = getelementptr i8, ptr %.pn19.i, i32 -4
  %11 = ptrtoint ptr %con_dev_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con_dev_name.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %3, align 4
  %14 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %con_dev.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %4, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %9, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.cti_remove_sysfs_link.exit.i_crit_edge

if.then.i.cti_remove_sysfs_link.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_remove_sysfs_link.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  br label %cti_remove_sysfs_link.exit.i

cti_remove_sysfs_link.exit.i:                     ; preds = %if.end.i.i.i, %if.then.i.cti_remove_sysfs_link.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %20, %if.end.i.i.i ], [ %18, %if.then.i.cti_remove_sysfs_link.exit.i_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.i.i, ptr %5, align 4
  call void @coresight_remove_sysfs_link(ptr noundef nonnull %link_info.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i.i) #9
  %22 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %con_dev.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cti_remove_sysfs_link.exit.i, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %trig_cons.i
  br i1 %cmp.not.i, label %for.inc.i.cti_remove_conn_xrefs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cti_remove_conn_xrefs.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_remove_conn_xrefs.exit

cti_remove_conn_xrefs.exit:                       ; preds = %for.inc.i.cti_remove_conn_xrefs.exit_crit_edge, %entry.cti_remove_conn_xrefs.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ect_mutex) #9
  %csdev = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csdev, align 4
  call void @coresight_unregister(ptr noundef %25) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_cti_get_platform_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_create_cons_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cti_update_conn_xrefs(ptr noundef readonly %drvdata) unnamed_addr #0 align 64 {
entry:
  %link_info.i = alloca %struct.coresight_sysfs_link, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trig_cons = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %trig_cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %trig_cons, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %trig_cons
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 3
  %csdev.i = getelementptr inbounds %struct.cti_drvdata, ptr %drvdata, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %con_dev = getelementptr i8, ptr %.pn22, i32 -8
  %4 = ptrtoint ptr %con_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_info.i) #9
  %6 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csdev.i, align 4
  %8 = ptrtoint ptr %link_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %link_info.i, align 4
  %con_dev_name.i = getelementptr i8, ptr %.pn22, i32 -4
  %9 = ptrtoint ptr %con_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_dev_name.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %1, align 4
  %12 = ptrtoint ptr %con_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con_dev, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %2, align 4
  %init_name.i.i = getelementptr inbounds %struct.coresight_device, ptr %7, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.dev_name.exit.i_crit_edge

if.then.dev_name.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.dev_name.exit.i_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i.i, ptr %3, align 4
  %call2.i = call i32 @coresight_add_sysfs_link(ptr noundef nonnull %link_info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i) #9
  %20 = ptrtoint ptr %con_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_dev, align 4
  %22 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csdev.i, align 4
  call void @coresight_set_assoc_ectdev_mutex(ptr noundef %21, ptr noundef %23) #9
  br label %for.inc

if.else:                                          ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.coresight_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.23, ptr noundef %27, ptr noundef %29) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i) #9
  %30 = ptrtoint ptr %con_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %con_dev, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %trig_cons
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cti_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ect_mutex, i32 noundef 0) #9
  %cpu.i = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %entry.for.cond.preheader_crit_edge, label %if.end.i

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  %7 = load i32, ptr @nr_cti_cpu, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr @nr_cti_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.cond.preheader_crit_edge

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @cpu_pm_unregister_notifier(ptr noundef nonnull @cti_cpu_pm_nb) #9
  tail call void @__cpuhp_remove_state(i32 noundef 144, i1 noundef zeroext false) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then4.i, %if.end.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in.in = phi ptr [ %.pn.in, %for.body.for.cond_crit_edge ], [ @ect_net, %for.cond.preheader ]
  %8 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @ect_net
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ect_item.0 = getelementptr i8, ptr %.pn.in, i32 -380
  %cmp5 = icmp eq ptr %ect_item.0, %3
  br i1 %cmp5, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ect_mutex) #9
  %csdev_release = getelementptr inbounds %struct.cti_drvdata, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %csdev_release to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csdev_release, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.end.if.end14_crit_edge, label %if.then12

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %18(ptr noundef %dev) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cti_starting_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #9
  %hw_powered.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %hw_powered.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hw_powered.i, align 1
  %enable_req_count.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_req_count.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %enable_req_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %enable_req_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.cti_cpuhp_enable_hw.exit_crit_edge, label %if.end.i

if.end.cti_cpuhp_enable_hw.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_cpuhp_enable_hw.exit

if.end.i:                                         ; preds = %if.end
  %csdev.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csdev.i, align 4
  %call3.i = tail call i32 @coresight_claim_device(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cti_cpuhp_enable_hw.exit_crit_edge

if.end.i.cti_cpuhp_enable_hw.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_cpuhp_enable_hw.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cti_write_all_hw_regs(ptr noundef nonnull %1) #9
  %hw_enabled.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hw_enabled.i, align 4
  br label %cti_cpuhp_enable_hw.exit

cti_cpuhp_enable_hw.exit:                         ; preds = %if.end6.i, %if.end.i.cti_cpuhp_enable_hw.exit_crit_edge, %if.end.cti_cpuhp_enable_hw.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cti_cpuhp_enable_hw.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cti_dying_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %hw_powered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hw_powered, align 1
  %hw_enabled = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %hw_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_enabled, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %csdev = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csdev, align 4
  tail call void @coresight_disclaim_device(ptr noundef %6) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cti_cpu_pm_notify(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @cti_cpu_drvdata, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %csdev3 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %csdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csdev3, align 4
  %cpu4 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp.not = icmp eq i32 %9, %3
  br i1 %cmp.not, label %if.end44, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b102 = load i1, ptr @cti_cpu_pm_notify.__already_done, align 1
  br i1 %.b102, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !104

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cti_cpu_pm_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 669, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end
  %spinlock = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #9
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %if.end44.cti_notify_exit_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
    i32 2, label %sw.bb63
  ]

if.end44.cti_notify_exit_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

sw.bb:                                            ; preds = %if.end44
  %hw_powered = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %hw_powered to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hw_powered, align 1
  %hw_enabled = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %hw_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_enabled, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool46.not = icmp eq i8 %13, 0
  br i1 %tobool46.not, label %sw.bb.cti_notify_exit_crit_edge, label %if.then47

sw.bb.cti_notify_exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

if.then47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coresight_disclaim_device(ptr noundef %7) #9
  br label %cti_notify_exit

sw.bb49:                                          ; preds = %if.end44
  %hw_powered51 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %hw_powered51 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hw_powered51, align 1
  %hw_enabled53 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %hw_enabled53 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw_enabled53, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool54.not = icmp eq i8 %16, 0
  br i1 %tobool54.not, label %sw.bb49.cti_notify_exit_crit_edge, label %if.then55

sw.bb49.cti_notify_exit_crit_edge:                ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

if.then55:                                        ; preds = %sw.bb49
  %call56 = tail call i32 @coresight_claim_device(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.cti_notify_exit_crit_edge, label %if.then58

if.then55.cti_notify_exit_crit_edge:              ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %hw_enabled53 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %hw_enabled53, align 4
  br label %cti_notify_exit

sw.bb63:                                          ; preds = %if.end44
  %hw_powered65 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %hw_powered65 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %hw_powered65, align 1
  %hw_enabled67 = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %hw_enabled67 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %hw_enabled67, align 4
  %enable_req_count = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 4, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_req_count, i32 noundef 4) #9
  %20 = ptrtoint ptr %enable_req_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %enable_req_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool70.not = icmp eq i32 %21, 0
  br i1 %tobool70.not, label %sw.bb63.cti_notify_exit_crit_edge, label %if.then71

sw.bb63.cti_notify_exit_crit_edge:                ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

if.then71:                                        ; preds = %sw.bb63
  %call72 = tail call i32 @coresight_claim_device(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then71.cti_notify_exit_crit_edge

if.then71.cti_notify_exit_crit_edge:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_notify_exit

if.end75:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %hw_enabled67 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %hw_enabled67, align 4
  tail call void @cti_write_all_hw_regs(ptr noundef nonnull %5)
  br label %cti_notify_exit

cti_notify_exit:                                  ; preds = %if.end75, %if.then71.cti_notify_exit_crit_edge, %sw.bb63.cti_notify_exit_crit_edge, %if.then58, %if.then55.cti_notify_exit_crit_edge, %sw.bb49.cti_notify_exit_crit_edge, %if.then47, %sw.bb.cti_notify_exit_crit_edge, %if.end44.cti_notify_exit_crit_edge
  %notify_res.0 = phi i32 [ 1, %if.then71.cti_notify_exit_crit_edge ], [ 1, %if.end75 ], [ 1, %sw.bb63.cti_notify_exit_crit_edge ], [ 1, %if.then58 ], [ 1, %if.then55.cti_notify_exit_crit_edge ], [ 1, %sw.bb49.cti_notify_exit_crit_edge ], [ 1, %if.then47 ], [ 1, %sw.bb.cti_notify_exit_crit_edge ], [ 0, %if.end44.cti_notify_exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %cti_notify_exit, %if.then12, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %notify_res.0, %cti_notify_exit ], [ 1, %entry.cleanup_crit_edge ], [ 32770, %if.then12 ], [ 32770, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_set_assoc_ectdev_mutex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_add_sysfs_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_remove_sysfs_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_set_cti_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cti_add_assoc_to_csdev(ptr noundef %csdev) #0 align 64 {
entry:
  %link_info.i.i = alloca %struct.coresight_sysfs_link, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ect_mutex, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %entry.cti_add_done_crit_edge, label %lor.lhs.false

entry.cti_add_done_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_add_done

lor.lhs.false:                                    ; preds = %entry
  %2 = load volatile ptr, ptr @ect_net, align 4
  %cmp.i.not = icmp eq ptr %2, @ect_net
  br i1 %cmp.i.not, label %lor.lhs.false.cti_add_done_crit_edge, label %if.end

lor.lhs.false.cti_add_done_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_add_done

if.end:                                           ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call1 = tail call ptr @dev_fwnode(ptr noundef %4) #9
  %call2 = tail call ptr @cti_plat_get_node_name(ptr noundef %call1) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cti_add_done_crit_edge, label %for.cond.preheader

if.end.cti_add_done_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_add_done

for.cond.preheader:                               ; preds = %if.end
  %.pn28 = load ptr, ptr @ect_net, align 4
  %cmp6.not29 = icmp eq ptr %.pn28, @ect_net
  br i1 %cmp6.not29, label %for.cond.preheader.cti_add_done_crit_edge, label %for.body.lr.ph

for.cond.preheader.cti_add_done_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_add_done

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %init_name.i.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 3
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %5 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cti_match_fixup_csdev.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn30 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %cti_match_fixup_csdev.exit.for.body_crit_edge ]
  %trig_cons.i = getelementptr i8, ptr %.pn30, i32 -364
  %8 = ptrtoint ptr %trig_cons.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn34.i = load ptr, ptr %trig_cons.i, align 4
  %cmp.not35.i = icmp eq ptr %.pn34.i, %trig_cons.i
  br i1 %cmp.not35.i, label %for.body.cti_match_fixup_csdev.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.cti_match_fixup_csdev.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_match_fixup_csdev.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn36.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn34.i, %for.body.for.body.i_crit_edge ]
  %con_dev_name.i = getelementptr i8, ptr %.pn36.i, i32 -4
  %9 = ptrtoint ptr %con_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_dev_name.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i = call i32 @strcmp(ptr noundef nonnull %call2, ptr noundef nonnull %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then7.i:                                       ; preds = %if.then.i
  %con_dev_name.i.le = getelementptr i8, ptr %.pn36.i, i32 -4
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then7.i.dev_name.exit.i_crit_edge

if.then7.i.dev_name.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then7.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then7.i.dev_name.exit.i_crit_edge ]
  %15 = ptrtoint ptr %con_dev_name.i.le to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i.i, ptr %con_dev_name.i.le, align 4
  %con_dev.i = getelementptr i8, ptr %.pn36.i, i32 -8
  %16 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %csdev, ptr %con_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_info.i.i) #9
  %csdev.i.i = getelementptr i8, ptr %.pn30, i32 -376
  %17 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csdev.i.i, align 4
  %19 = ptrtoint ptr %link_info.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %link_info.i.i, align 4
  %20 = ptrtoint ptr %con_dev_name.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_dev_name.i.le, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %5, align 4
  %23 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %con_dev.i, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %6, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %18, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %dev_name.exit.i.dev_name.exit.i.i_crit_edge

dev_name.exit.i.dev_name.exit.i.i_crit_edge:      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.coresight_device, ptr %18, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %dev_name.exit.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i.i ], [ %27, %dev_name.exit.i.dev_name.exit.i.i_crit_edge ]
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i.i.i, ptr %7, align 4
  %call2.i.i = call i32 @coresight_add_sysfs_link(ptr noundef nonnull %link_info.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i31.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i31.i, label %if.then9, label %if.end.i

if.end.i:                                         ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csdev.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.coresight_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.23, ptr noundef %34, ptr noundef %36) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i.i) #9
  %37 = ptrtoint ptr %con_dev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %con_dev.i, align 4
  br label %cti_match_fixup_csdev.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn36.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %trig_cons.i
  br i1 %cmp.not.i, label %for.inc.i.cti_match_fixup_csdev.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cti_match_fixup_csdev.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_match_fixup_csdev.exit

cti_match_fixup_csdev.exit:                       ; preds = %for.inc.i.cti_match_fixup_csdev.exit_crit_edge, %if.end.i, %for.body.cti_match_fixup_csdev.exit_crit_edge
  %39 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp6.not = icmp eq ptr %.pn, @ect_net
  br i1 %cmp6.not, label %cti_match_fixup_csdev.exit.cti_add_done_crit_edge, label %cti_match_fixup_csdev.exit.for.body_crit_edge

cti_match_fixup_csdev.exit.for.body_crit_edge:    ; preds = %cti_match_fixup_csdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cti_match_fixup_csdev.exit.cti_add_done_crit_edge: ; preds = %cti_match_fixup_csdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_add_done

if.then9:                                         ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i.i) #9
  %40 = ptrtoint ptr %csdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csdev.i.i, align 4
  %ect_dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 12
  %42 = ptrtoint ptr %ect_dev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %ect_dev, align 8
  br label %cti_add_done

cti_add_done:                                     ; preds = %if.then9, %cti_match_fixup_csdev.exit.cti_add_done_crit_edge, %for.cond.preheader.cti_add_done_crit_edge, %if.end.cti_add_done_crit_edge, %lor.lhs.false.cti_add_done_crit_edge, %entry.cti_add_done_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ect_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cti_remove_assoc_from_csdev(ptr noundef %csdev) #0 align 64 {
entry:
  %link_info.i = alloca %struct.coresight_sysfs_link, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ect_mutex, i32 noundef 0) #9
  %ect_dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 12
  %0 = ptrtoint ptr %ect_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ect_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %trig_cons = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 2, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %.pn.in = phi ptr [ %trig_cons, %if.then ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %trig_cons
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %con_dev = getelementptr i8, ptr %.pn, i32 -8
  %7 = ptrtoint ptr %con_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %con_dev, align 4
  %cmp4 = icmp eq ptr %8, %csdev
  br i1 %cmp4, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then5:                                         ; preds = %for.body
  %con_dev.le = getelementptr i8, ptr %.pn, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_info.i) #9
  %9 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 2
  %csdev.i = getelementptr inbounds %struct.cti_drvdata, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csdev.i, align 4
  %13 = ptrtoint ptr %link_info.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %link_info.i, align 4
  %con_dev_name.i = getelementptr i8, ptr %.pn, i32 -4
  %14 = ptrtoint ptr %con_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %con_dev_name.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %9, align 4
  %17 = ptrtoint ptr %con_dev.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %con_dev.le, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %10, align 4
  %init_name.i.i = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.cti_remove_sysfs_link.exit_crit_edge

if.then5.cti_remove_sysfs_link.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cti_remove_sysfs_link.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  br label %cti_remove_sysfs_link.exit

cti_remove_sysfs_link.exit:                       ; preds = %if.end.i.i, %if.then5.cti_remove_sysfs_link.exit_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then5.cti_remove_sysfs_link.exit_crit_edge ]
  %24 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %link_info.i, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i, ptr %24, align 4
  call void @coresight_remove_sysfs_link(ptr noundef nonnull %link_info.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_info.i) #9
  %26 = ptrtoint ptr %con_dev.le to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %con_dev.le, align 4
  br label %for.end

for.end:                                          ; preds = %cti_remove_sysfs_link.exit, %for.cond.for.end_crit_edge
  %27 = ptrtoint ptr %ect_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ect_dev, align 8
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry.if.end13_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ect_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cti_plat_get_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 328, i32 57}
!2 = !{ptr @__initcall__kmod_coresight_cti__297_1003_cti_init6, !3, !"__initcall__kmod_coresight_cti__297_1003_cti_init6", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 1003, i32 1}
!4 = !{ptr @__exitcall_cti_exit, !5, !"__exitcall_cti_exit", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 1004, i32 1}
!6 = !{ptr @__UNIQUE_ID_author298, !7, !"__UNIQUE_ID_author298", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 1006, i32 1}
!8 = !{ptr @__UNIQUE_ID_description299, !9, !"__UNIQUE_ID_description299", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 1007, i32 1}
!10 = !{ptr @__UNIQUE_ID_file300, !11, !"__UNIQUE_ID_file300", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 1008, i32 1}
!12 = !{ptr @__UNIQUE_ID_license301, !11, !"__UNIQUE_ID_license301", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 977, i32 11}
!15 = !{ptr @cti_driver, !16, !"cti_driver", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 975, i32 27}
!17 = !{ptr @cti_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 884, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 891, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cti_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cti_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 900, i32 51}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 915, i32 3}
!32 = !{ptr @cti_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cti_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 946, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cti_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cti_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__print_once", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 229, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cti_set_default_config._entry, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @cti_set_default_config._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 58, i32 1}
!48 = !{ptr @cti_sys_devs, !47, !"cti_sys_devs", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 760, i32 4}
!51 = !{ptr @nr_cti_cpu, !52, !"nr_cti_cpu", i1 false, i1 false}
!52 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 46, i32 12}
!53 = !{ptr @cti_cpu_pm_nb, !54, !"cti_cpu_pm_nb", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 716, i32 30}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 669, i32 6}
!57 = !{ptr @cti_cpu_drvdata, !58, !"cti_cpu_drvdata", i1 false, i1 false}
!58 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 49, i32 28}
!59 = !{ptr @cti_ops, !60, !"cti_ops", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 814, i32 35}
!61 = !{ptr @cti_ops_ect, !62, !"cti_ops_ect", i1 false, i1 false}
!62 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 809, i32 39}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 40, i32 8}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ect_mutex, !64, !"ect_mutex", i1 false, i1 false}
!67 = !{ptr @ect_net, !68, !"ect_net", i1 false, i1 false}
!68 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 37, i32 8}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 492, i32 3}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cti_add_sysfs_link._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @cti_add_sysfs_link._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @cti_ids, !75, !"cti_ids", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 963, i32 29}
!76 = !{ptr @uci_id_cti, !77, !"uci_id_cti", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 954, i32 30}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 992, i32 3}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cti_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cti_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @cti_assoc_ops, !84, !"cti_assoc_ops", i1 false, i1 false}
!84 = !{!"../drivers/hwtracing/coresight/coresight-cti-core.c", i32 610, i32 28}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 5863670}
!96 = !{i64 2155430607}
!97 = !{i64 2155429911}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148269999, i64 2148270025, i64 2148270054, i64 2148270088, i64 2148270119, i64 2148270142}
!100 = !{i64 2148358451}
!101 = !{i64 2148273184, i64 2148273216, i64 2148273245, i64 2148273279, i64 2148273310, i64 2148273333}
!102 = !{i64 2148358680}
!103 = !{i64 5864088}
!104 = !{!"branch_weights", i32 2000, i32 1}
