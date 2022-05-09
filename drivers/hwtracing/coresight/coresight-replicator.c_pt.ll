; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-replicator.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-replicator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.coresight_ops_link = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amba_id = type { i32, i32, ptr }
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
%struct.replicator_drvdata = type { ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@static_replicator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @static_replicator_probe, ptr @static_replicator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @static_replicator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @replicator_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dynamic_replicator_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @replicator_dev_pm_ops, ptr null, ptr null }, ptr @dynamic_replicator_probe, ptr @dynamic_replicator_remove, ptr null, ptr @dynamic_replicator_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_coresight_replicator__299_446_replicator_init6 = internal global ptr @replicator_init, section ".initcall6.init", align 4
@__exitcall_replicator_exit = internal global ptr @replicator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [66 x i8] c"coresight_replicator.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [73 x i8] c"coresight_replicator.author=Mathieu Poirier <mathieu.poirier@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [65 x i8] c"coresight_replicator.description=Arm CoreSight Replicator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [75 x i8] c"coresight_replicator.file=drivers/hwtracing/coresight/coresight-replicator\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [36 x i8] c"coresight_replicator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"coresight-static-replicator\00", [36 x i8] zeroinitializer }, align 32
@static_replicator_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,coresight-replicator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,coresight-static-replicator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@replicator_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @replicator_runtime_suspend, ptr @replicator_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,coresight-replicator\00", [39 x i8] zeroinitializer }, align 32
@replicator_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@replicator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Uses OBSOLETE CoreSight replicator binding\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"replicator_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/hwtracing/coresight/coresight-replicator.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@replicator_probe._entry_ptr = internal global ptr @replicator_probe._entry, section ".printk_index", align 4
@replicator_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.10, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@replicator_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @replicator_mgmt_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,replicator-loses-context\00", [34 x i8] zeroinitializer }, align 32
@replicator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@replicator_cs_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr @replicator_link_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"replicator\00", [21 x i8] zeroinitializer }, align 32
@replicator_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr null, ptr null, ptr @replicator_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@replicator_mgmt_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_idfilter0, ptr @dev_attr_idfilter1, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_idfilter0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idfilter0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idfilter1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idfilter1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idfilter0\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idfilter1\00", [22 x i8] zeroinitializer }, align 32
@replicator_link_ops = internal constant { %struct.coresight_ops_link, [24 x i8] } { %struct.coresight_ops_link { ptr @replicator_enable, ptr @replicator_disable }, [24 x i8] zeroinitializer }, align 32
@replicator_enable.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"coresight_replicator\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"replicator_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPLICATOR enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@replicator_disable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"replicator_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLICATOR disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"coresight-dynamic-replicator\00", [35 x i8] zeroinitializer }, align 32
@dynamic_replicator_ids = internal constant { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 768265, i32 1048575, ptr null }, %struct.amba_id { i32 768492, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@replicator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Error registering platform driver\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"replicator_init\00", [16 x i8] zeroinitializer }, align 32
@replicator_init._entry_ptr = internal global ptr @replicator_init._entry, section ".printk_index", align 4
@replicator_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Error registering amba driver\0A\00", [63 x i8] zeroinitializer }, align 32
@replicator_init._entry_ptr.25 = internal global ptr @replicator_init._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"static_replicator_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 377, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"dynamic_replicator_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 409, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 381, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"static_replicator_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 360, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"replicator_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 355, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 230, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"replicator_devs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 242, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"replicator_groups\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 216, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 265, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 277, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"replicator_cs_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 195, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 27, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"replicator_mgmt_group\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 211, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 213, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"replicator_mgmt_attrs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 205, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"dev_attr_idfilter0\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"dev_attr_idfilter1\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 202, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 203, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"replicator_link_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 190, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 138, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 187, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 411, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"dynamic_replicator_ids\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 401, i32 29 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 427, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [54 x i8] c"../drivers/hwtracing/coresight/coresight-replicator.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 433, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_replicator_exit, ptr @__initcall__kmod_coresight_replicator__299_446_replicator_init6, ptr @replicator_exit, ptr @replicator_init._entry, ptr @replicator_init._entry.23, ptr @replicator_init._entry_ptr, ptr @replicator_init._entry_ptr.25, ptr @replicator_probe._entry, ptr @replicator_probe._entry_ptr, ptr @static_replicator_driver, ptr @dynamic_replicator_driver, ptr @.str, ptr @static_replicator_match, ptr @replicator_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @replicator_devs, ptr @.str.7, ptr @replicator_groups, ptr @.str.8, ptr @replicator_probe.__key, ptr @.str.9, ptr @replicator_cs_ops, ptr @.str.10, ptr @replicator_mgmt_group, ptr @.str.11, ptr @replicator_mgmt_attrs, ptr @dev_attr_idfilter0, ptr @dev_attr_idfilter1, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @replicator_link_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dynamic_replicator_ids, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_replicator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_replicator_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_replicator_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_mgmt_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idfilter0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idfilter1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_link_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_replicator_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @replicator_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @replicator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @static_replicator_driver) #7
  tail call void @amba_driver_unregister(ptr noundef nonnull @dynamic_replicator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @replicator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @static_replicator_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @amba_driver_register(ptr noundef nonnull @dynamic_replicator_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @static_replicator_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_replicator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !94
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call4 = tail call fastcc i32 @replicator_probe(ptr noundef %dev, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !96
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %pm_runtime_put_noidle.exit, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_replicator_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csdev.i = getelementptr inbounds %struct.replicator_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_unregister(ptr noundef %3) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @replicator_probe(ptr noundef %dev, ptr noundef %res) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %tobool.not.i.i = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.if.end8_crit_edge, label %is_of_node.exit

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %2, @of_fwnode_ops
  br i1 %cmp.i, label %land.lhs.true, label %is_of_node.exit.if.end8_crit_edge

is_of_node.exit.if.end8_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %is_of_node.exit
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  %.b108 = load i1, ptr @replicator_probe.__print_once, align 1
  br i1 %.b108, label %do.body.if.end8_crit_edge, label %if.then4

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @replicator_probe.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.body.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %is_of_node.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @replicator_devs, ptr noundef %dev) #7
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %name, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #7
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %atclk = getelementptr inbounds %struct.replicator_drvdata, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %atclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %atclk, align 4
  %cmp.i109 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %call.i110 = tail call i32 @clk_prepare(ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then21
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end27_crit_edge, label %if.then3.i

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call18) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end.i.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %res, null
  br i1 %tobool28.not, label %if.end27.if.end36_crit_edge, label %if.then29

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %if.end27
  %call30 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res) #7
  %cmp.i111 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then29.out_disable_clk_crit_edge, label %if.end34

if.then29.out_disable_clk_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call30, ptr %call.i, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @replicator_groups, ptr %groups, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %9 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.272.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.272.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %.compoundliteral.sroa.272.0.access.sroa_idx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end27.if.end36_crit_edge
  %call37 = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %call38 = tail call zeroext i1 @fwnode_property_present(ptr noundef %call37, ptr noundef nonnull @.str.8) #7
  br i1 %call38, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %check_idfilter_val = getelementptr inbounds %struct.replicator_drvdata, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %check_idfilter_val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %check_idfilter_val, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call41 = tail call ptr @coresight_get_platform_data(ptr noundef %dev) #7
  %cmp.i112 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.end40.out_disable_clk_crit_edge, label %if.end45

if.end40.out_disable_clk_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end45:                                         ; preds = %if.end40
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call41, ptr %platform_data, align 8
  %spinlock = getelementptr inbounds %struct.replicator_drvdata, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @replicator_probe.__key, i16 noundef signext 3) #7
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %desc, align 4
  %link_subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %link_subtype to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %link_subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @replicator_cs_ops, ptr %ops, align 4
  %17 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data, align 8
  %pdata51 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %19 = ptrtoint ptr %pdata51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pdata51, align 4
  %dev52 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %20 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev52, align 4
  %call53 = call ptr @coresight_register(ptr noundef nonnull %desc) #7
  %csdev = getelementptr inbounds %struct.replicator_drvdata, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call53, ptr %csdev, align 4
  %cmp.i113 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.end45.out_disable_clk_crit_edge, label %if.end59

if.end45.out_disable_clk_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end59:                                         ; preds = %if.end45
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %tobool.not.i114 = icmp eq ptr %23, null
  br i1 %tobool.not.i114, label %if.end59.out_disable_clk.thread_crit_edge, label %if.then.i

if.end59.out_disable_clk.thread_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk.thread

if.then.i:                                        ; preds = %if.end59
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1439608005) #7, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @arm_heavy_mb() #7
  %call.i.i = call i32 @coresight_claim_device_unlocked(ptr noundef %call53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i115 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i115, label %if.then.i.i, label %if.then.i.dynamic_replicator_reset.exit.i_crit_edge

if.then.i.dynamic_replicator_reset.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dynamic_replicator_reset.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -16777216) #7, !srcloc !98
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 -16777216) #7, !srcloc !98
  call void @coresight_disclaim_device_unlocked(ptr noundef %call53) #7
  br label %dynamic_replicator_reset.exit.i

dynamic_replicator_reset.exit.i:                  ; preds = %if.then.i.i, %if.then.i.dynamic_replicator_reset.exit.i_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  call void @arm_heavy_mb() #7
  %add.ptr.i11.i.i = getelementptr i8, ptr %29, i32 4016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 0) #7, !srcloc !98
  br label %out_disable_clk.thread

out_disable_clk.thread:                           ; preds = %dynamic_replicator_reset.exit.i, %if.end59.out_disable_clk.thread_crit_edge
  %call.i117 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

out_disable_clk:                                  ; preds = %if.end45.out_disable_clk_crit_edge, %if.end40.out_disable_clk_crit_edge, %if.then29.out_disable_clk_crit_edge
  %ret.1.in = phi ptr [ %call30, %if.then29.out_disable_clk_crit_edge ], [ %call41, %if.end40.out_disable_clk_crit_edge ], [ %call53, %if.end45.out_disable_clk_crit_edge ]
  %ret.1 = ptrtoint ptr %ret.1.in to i32
  %30 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %atclk, align 4
  %tobool.not.i118 = icmp eq ptr %31, null
  %cmp.i119 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i118, %cmp.i119
  br i1 %spec.select.i, label %out_disable_clk.cleanup_crit_edge, label %if.then65

out_disable_clk.cleanup_crit_edge:                ; preds = %out_disable_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %out_disable_clk
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef nonnull %31) #7
  call void @clk_unprepare(ptr noundef nonnull %31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %out_disable_clk.cleanup_crit_edge, %out_disable_clk.thread, %if.then3.i, %if.then21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %ret.1, %if.then65 ], [ %ret.1, %out_disable_clk.cleanup_crit_edge ], [ 0, %out_disable_clk.thread ], [ %call1.i, %if.then3.i ], [ %call.i110, %if.then21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idfilter0_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idfilter1_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @replicator_enable(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.replicator_drvdata, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %outport
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then, label %if.end34.critedge

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body23.critedge, label %if.then9

if.then9:                                         ; preds = %if.then
  %csdev1.i = getelementptr inbounds %struct.replicator_drvdata, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csdev1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !101
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !101
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %check_idfilter_val.i = getelementptr inbounds %struct.replicator_drvdata, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %check_idfilter_val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %check_idfilter_val.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.i = icmp eq i32 %18, 0
  %spec.select1.i = select i1 %cmp9.i, i32 255, i32 0
  %22 = select i1 %or.cond.i, i1 %cmp9.i, i1 false
  %id1val.0.i = select i1 %22, i32 255, i32 %19
  %id0val.0.i = select i1 %or.cond.i, i32 %spec.select1.i, i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id0val.0.i)
  %cmp10.i = icmp eq i32 %id0val.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id1val.0.i)
  %cmp12.i = icmp eq i32 %id1val.0.i, 255
  %or.cond2.i = select i1 %cmp10.i, i1 %cmp12.i, i1 false
  br i1 %or.cond2.i, label %if.end15.i, label %if.then9.if.then17.i_crit_edge

if.then9.if.then17.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.end15.i:                                       ; preds = %if.then9
  %call14.i = tail call i32 @coresight_claim_device_unlocked(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.then17.i_crit_edge, label %if.end15.i.if.end14_crit_edge

if.end15.i.if.end14_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end15.i.if.then17.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i.if.then17.i_crit_edge, %if.then9.if.then17.i_crit_edge
  %23 = zext i32 %outport to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %outport, label %do.end.i [
    i32 0, label %if.then17.i.if.then39.i_crit_edge
    i32 1, label %sw.bb18.i
  ]

if.then17.i.if.then39.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

sw.bb18.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

do.end.i:                                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %if.end14

if.then39.i:                                      ; preds = %sw.bb18.i, %if.then17.i.if.then39.i_crit_edge
  %id1val.1.ph.i = phi i32 [ %id1val.0.i, %if.then17.i.if.then39.i_crit_edge ], [ 0, %sw.bb18.i ]
  %id0val.1.ph.i = phi i32 [ %outport, %if.then17.i.if.then39.i_crit_edge ], [ %id0val.0.i, %sw.bb18.i ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %id0val.1.ph.i) #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !98
  %27 = tail call i32 @llvm.bswap.i32(i32 %id1val.1.ph.i) #7
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %add.ptr43.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %27) #7, !srcloc !98
  br label %if.end14

if.end14:                                         ; preds = %if.then39.i, %do.end.i, %if.end15.i.if.end14_crit_edge
  %rc.112.i = phi i32 [ 0, %if.then39.i ], [ %call14.i, %if.end15.i.if.end14_crit_edge ], [ -22, %do.end.i ]
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %add.ptr.i3.i = getelementptr i8, ptr %31, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.112.i)
  %tobool15.not = icmp eq i32 %rc.112.i, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %refcnt, align 8
  %arrayidx18 = getelementptr %struct.atomic_t, ptr %33, i32 %outport
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx18, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18, ptr %arrayidx18, i32 1, ptr elementtype(i32) %arrayidx18) #7, !srcloc !94
  br label %do.body23

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %if.end34

do.body23.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %refcnt, align 8
  %arrayidx18.c61 = getelementptr %struct.atomic_t, ptr %36, i32 %outport
  %call.i.i46.c62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18.c61, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx18.c61, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18.c61, ptr %arrayidx18.c61, i32 1, ptr elementtype(i32) %arrayidx18.c61) #7, !srcloc !94
  br label %do.body23

do.body23:                                        ; preds = %do.body23.critedge, %if.then16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replicator_enable.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replicator_enable, %if.then29)) #7
          to label %if.end34 [label %if.then29], !srcloc !103

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @replicator_enable.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %if.end34

if.end34.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %refcnt, align 8
  %arrayidx18.c = getelementptr %struct.atomic_t, ptr %39, i32 %outport
  %call.i.i46.c = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18.c, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx18.c, i32 1, i32 3, i32 1) #7
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18.c, ptr %arrayidx18.c, i32 1, ptr elementtype(i32) %arrayidx18.c) #7, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end34.critedge, %if.then29, %do.body23, %if.end19
  %rc.15258 = phi i32 [ 0, %if.then29 ], [ %rc.112.i, %if.end19 ], [ 0, %do.body23 ], [ 0, %if.end34.critedge ]
  ret i32 %rc.15258
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @replicator_disable(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.replicator_drvdata, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %outport
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #7, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp7 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp7, label %if.then, label %if.end25.critedge

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.do.body14_crit_edge, label %if.then9

if.then.do.body14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

if.then9:                                         ; preds = %if.then
  %csdev1.i = getelementptr inbounds %struct.replicator_drvdata, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csdev1.i, align 4
  %11 = zext i32 %outport to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %outport, label %do.end.i [
    i32 0, label %if.then9.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.then9.sw.epilog.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 156, i32 noundef 9, ptr noundef null) #7
  br label %do.body14

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.then9.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ 4, %sw.bb2.i ], [ %outport, %if.then9.sw.epilog.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #7, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #7, !srcloc !98
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %16)
  %cmp.i = icmp eq i32 %16, -16777216
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.if.end28.i_crit_edge

sw.epilog.i.if.end28.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr23.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %19)
  %cmp26.i = icmp eq i32 %19, -16777216
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %10) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end28.i_crit_edge, %sw.epilog.i.if.end28.i_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.i = getelementptr i8, ptr %21, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #7, !srcloc !98
  br label %do.body14

do.body14:                                        ; preds = %if.end28.i, %do.end.i, %if.then.do.body14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @replicator_disable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@replicator_disable, %if.then20)) #7
          to label %if.end25 [label %if.then20], !srcloc !103

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @replicator_disable.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %if.end25

if.end25.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end25.critedge, %if.then20, %do.body14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @replicator_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.replicator_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @replicator_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.replicator_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_replicator_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call = tail call fastcc i32 @replicator_probe(ptr noundef %adev, ptr noundef %res)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dynamic_replicator_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csdev.i = getelementptr inbounds %struct.replicator_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_unregister(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_coresight_replicator__299_446_replicator_init6, !1, !"__initcall__kmod_coresight_replicator__299_446_replicator_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 446, i32 1}
!2 = !{ptr @__exitcall_replicator_exit, !3, !"__exitcall_replicator_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 447, i32 1}
!4 = !{ptr @__UNIQUE_ID_author300, !5, !"__UNIQUE_ID_author300", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 449, i32 1}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 450, i32 1}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 451, i32 1}
!10 = !{ptr @__UNIQUE_ID_file303, !11, !"__UNIQUE_ID_file303", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 452, i32 1}
!12 = !{ptr @__UNIQUE_ID_license304, !11, !"__UNIQUE_ID_license304", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 381, i32 13}
!15 = !{ptr @static_replicator_driver, !16, !"static_replicator_driver", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 377, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 230, i32 44}
!19 = distinct !{null, !20, !"__print_once", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 231, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @replicator_probe._entry, !20, !"_entry", i1 false, i1 false}
!27 = !{ptr @replicator_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 242, i32 37}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 265, i32 9}
!32 = !{ptr @replicator_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 277, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 27, i32 1}
!37 = !{ptr @replicator_devs, !36, !"replicator_devs", i1 false, i1 false}
!38 = !{ptr @replicator_groups, !39, !"replicator_groups", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 216, i32 38}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 213, i32 10}
!42 = !{ptr @replicator_mgmt_group, !43, !"replicator_mgmt_group", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 211, i32 37}
!44 = !{ptr @replicator_mgmt_attrs, !45, !"replicator_mgmt_attrs", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 205, i32 26}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 202, i32 1}
!48 = !{ptr @dev_attr_idfilter0, !47, !"dev_attr_idfilter0", i1 false, i1 false}
!49 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 203, i32 1}
!52 = !{ptr @dev_attr_idfilter1, !51, !"dev_attr_idfilter1", i1 false, i1 false}
!53 = !{ptr @replicator_cs_ops, !54, !"replicator_cs_ops", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 195, i32 35}
!55 = !{ptr @replicator_link_ops, !56, !"replicator_link_ops", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 190, i32 40}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 138, i32 3}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @replicator_enable.__UNIQUE_ID_ddebug297, !58, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 187, i32 3}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @replicator_disable.__UNIQUE_ID_ddebug298, !63, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!66 = !{ptr @static_replicator_match, !67, !"static_replicator_match", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 360, i32 34}
!68 = !{ptr @replicator_dev_pm_ops, !69, !"replicator_dev_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 355, i32 32}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 411, i32 11}
!72 = !{ptr @dynamic_replicator_driver, !73, !"dynamic_replicator_driver", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 409, i32 27}
!74 = !{ptr @dynamic_replicator_ids, !75, !"dynamic_replicator_ids", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 401, i32 29}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 427, i32 3}
!78 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @replicator_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @replicator_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwtracing/coresight/coresight-replicator.c", i32 433, i32 3}
!83 = !{ptr @replicator_init._entry.23, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @replicator_init._entry_ptr.25, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148312869, i64 2148312895, i64 2148312924, i64 2148312958, i64 2148312989, i64 2148313012}
!95 = !{i64 2148312288}
!96 = !{i64 797111, i64 797136, i64 797158, i64 797174, i64 797186, i64 797206, i64 797230, i64 797246, i64 797258}
!97 = !{i64 2148312476}
!98 = !{i64 6830893}
!99 = !{i64 2155983850}
!100 = !{i64 2155983154}
!101 = !{i64 6831311}
!102 = !{i8 0, i8 2}
!103 = !{i64 2148957161, i64 2148957166, i64 2148957179, i64 2148957223, i64 2148957257, i64 2148957278}
!104 = !{i64 2148401333}
!105 = !{i64 2148316054, i64 2148316086, i64 2148316115, i64 2148316149, i64 2148316180, i64 2148316203}
!106 = !{i64 2148401562}
