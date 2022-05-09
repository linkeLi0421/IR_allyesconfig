; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-funnel.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-funnel.c"
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
%struct.funnel_drvdata = type { ptr, ptr, ptr, i32, %struct.spinlock }
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

@static_funnel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @static_funnel_probe, ptr @static_funnel_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @static_funnel_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @funnel_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dynamic_funnel_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @funnel_dev_pm_ops, ptr null, ptr null }, ptr @dynamic_funnel_probe, ptr @dynamic_funnel_remove, ptr null, ptr @dynamic_funnel_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_coresight_funnel__299_433_funnel_init6 = internal global ptr @funnel_init, section ".initcall6.init", align 4
@__exitcall_funnel_exit = internal global ptr @funnel_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [62 x i8] c"coresight_funnel.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [69 x i8] c"coresight_funnel.author=Mathieu Poirier <mathieu.poirier@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [57 x i8] c"coresight_funnel.description=Arm CoreSight Funnel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [67 x i8] c"coresight_funnel.file=drivers/hwtracing/coresight/coresight-funnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [32 x i8] c"coresight_funnel.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"coresight-static-funnel\00", [40 x i8] zeroinitializer }, align 32
@static_funnel_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,coresight-static-funnel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@funnel_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @funnel_runtime_suspend, ptr @funnel_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm,coresight-funnel\00", [43 x i8] zeroinitializer }, align 32
@funnel_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@funnel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Uses OBSOLETE CoreSight funnel binding\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"funnel_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/hwtracing/coresight/coresight-funnel.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@funnel_probe._entry_ptr = internal global ptr @funnel_probe._entry, section ".printk_index", align 4
@funnel_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.9, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@coresight_funnel_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @coresight_funnel_group, ptr null], [24 x i8] zeroinitializer }, align 32
@funnel_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@funnel_cs_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr @funnel_link_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"funnel\00", [25 x i8] zeroinitializer }, align 32
@coresight_funnel_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @coresight_funnel_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_funnel_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_funnel_ctrl, ptr @dev_attr_priority, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_funnel_ctrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @funnel_ctrl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_priority = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @priority_show, ptr @priority_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"funnel_ctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@funnel_link_ops = internal constant { %struct.coresight_ops_link, [24 x i8] } { %struct.coresight_ops_link { ptr @funnel_enable, ptr @funnel_disable }, [24 x i8] zeroinitializer }, align 32
@funnel_enable.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coresight_funnel\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"funnel_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FUNNEL inport %d enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@funnel_disable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"funnel_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FUNNEL inport %d disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coresight-dynamic-funnel\00", [39 x i8] zeroinitializer }, align 32
@dynamic_funnel_ids = internal constant { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 768264, i32 1048575, ptr null }, %struct.amba_id { i32 768491, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@funnel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Error registering platform driver\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"funnel_init\00", [20 x i8] zeroinitializer }, align 32
@funnel_init._entry_ptr = internal global ptr @funnel_init._entry, section ".printk_index", align 4
@funnel_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Error registering amba driver\0A\00", [63 x i8] zeroinitializer }, align 32
@funnel_init._entry_ptr.24 = internal global ptr @funnel_init._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"static_funnel_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 357, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"dynamic_funnel_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 396, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 361, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"static_funnel_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 341, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"funnel_dev_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 311, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 217, i32 44 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 218, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"funnel_devs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 228, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"coresight_funnel_groups\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 259, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"funnel_cs_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 144, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 33, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"coresight_funnel_group\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 206, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"coresight_funnel_attrs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 201, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"dev_attr_funnel_ctrl\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"dev_attr_priority\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 199, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 197, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 172, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 154, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"funnel_link_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 139, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 97, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 136, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 398, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"dynamic_funnel_ids\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 381, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 414, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [50 x i8] c"../drivers/hwtracing/coresight/coresight-funnel.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 420, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_funnel_exit, ptr @__initcall__kmod_coresight_funnel__299_433_funnel_init6, ptr @funnel_exit, ptr @funnel_init._entry, ptr @funnel_init._entry.22, ptr @funnel_init._entry_ptr, ptr @funnel_init._entry_ptr.24, ptr @funnel_probe._entry, ptr @funnel_probe._entry_ptr, ptr @static_funnel_driver, ptr @dynamic_funnel_driver, ptr @.str, ptr @static_funnel_match, ptr @funnel_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @funnel_devs, ptr @.str.7, ptr @coresight_funnel_groups, ptr @funnel_probe.__key, ptr @.str.8, ptr @funnel_cs_ops, ptr @.str.9, ptr @coresight_funnel_group, ptr @coresight_funnel_attrs, ptr @dev_attr_funnel_ctrl, ptr @dev_attr_priority, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @funnel_link_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dynamic_funnel_ids, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_funnel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_funnel_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_funnel_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_funnel_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_funnel_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_funnel_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_funnel_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_priority to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_link_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_funnel_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funnel_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @funnel_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @static_funnel_driver) #9
  tail call void @amba_driver_unregister(ptr noundef nonnull @dynamic_funnel_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @funnel_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @static_funnel_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @amba_driver_register(ptr noundef nonnull @dynamic_funnel_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @static_funnel_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_funnel_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !92
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call4 = tail call fastcc i32 @funnel_probe(ptr noundef %dev, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %pm_runtime_put_noidle.exit, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_funnel_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csdev.i = getelementptr inbounds %struct.funnel_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_unregister(ptr noundef %3) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @funnel_probe(ptr noundef %dev, ptr noundef %res) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #9
  %0 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #9
  %tobool.not.i.i = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.if.end8_crit_edge, label %is_of_node.exit

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %2, @of_fwnode_ops
  br i1 %cmp.i, label %land.lhs.true, label %is_of_node.exit.if.end8_crit_edge

is_of_node.exit.if.end8_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %is_of_node.exit
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  %.b100 = load i1, ptr @funnel_probe.__print_once, align 1
  br i1 %.b100, label %do.body.if.end8_crit_edge, label %if.then4

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @funnel_probe.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.body.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %is_of_node.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @funnel_devs, ptr noundef %dev) #9
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %name, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #9
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %atclk = getelementptr inbounds %struct.funnel_drvdata, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %atclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %atclk, align 4
  %cmp.i101 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %call.i102 = tail call i32 @clk_prepare(ptr noundef %call18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then21
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end27_crit_edge, label %if.then3.i

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call18) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end.i.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %res, null
  br i1 %tobool28.not, label %if.end27.if.end36_crit_edge, label %if.then29

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29:                                        ; preds = %if.end27
  %call30 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res) #9
  %cmp.i103 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then29.out_disable_clk_crit_edge, label %if.end34

if.then29.out_disable_clk_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_clk

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call30, ptr %call.i, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @coresight_funnel_groups, ptr %groups, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %9 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.267.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.267.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %.compoundliteral.sroa.267.0.access.sroa_idx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end27.if.end36_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call37 = tail call ptr @coresight_get_platform_data(ptr noundef %dev) #9
  %cmp.i104 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.end36.out_disable_clk_crit_edge, label %if.end41

if.end36.out_disable_clk_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_clk

if.end41:                                         ; preds = %if.end36
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call37, ptr %platform_data, align 8
  %spinlock = getelementptr inbounds %struct.funnel_drvdata, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @funnel_probe.__key, i16 noundef signext 3) #9
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %desc, align 4
  %link_subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %link_subtype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %link_subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @funnel_cs_ops, ptr %ops, align 4
  %pdata46 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %pdata46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call37, ptr %pdata46, align 4
  %dev47 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %17 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev47, align 4
  %call48 = call ptr @coresight_register(ptr noundef nonnull %desc) #9
  %csdev = getelementptr inbounds %struct.funnel_drvdata, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call48, ptr %csdev, align 4
  %cmp.i105 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.end41.out_disable_clk_crit_edge, label %out_disable_clk.thread

if.end41.out_disable_clk_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_disable_clk

out_disable_clk.thread:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call.i106 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

out_disable_clk:                                  ; preds = %if.end41.out_disable_clk_crit_edge, %if.end36.out_disable_clk_crit_edge, %if.then29.out_disable_clk_crit_edge
  %ret.0.in = phi ptr [ %call30, %if.then29.out_disable_clk_crit_edge ], [ %call37, %if.end36.out_disable_clk_crit_edge ], [ %call48, %if.end41.out_disable_clk_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %19 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %atclk, align 4
  %tobool.not.i107 = icmp eq ptr %20, null
  %cmp.i108 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i107, %cmp.i108
  br i1 %spec.select.i, label %out_disable_clk.cleanup_crit_edge, label %if.then60

out_disable_clk.cleanup_crit_edge:                ; preds = %out_disable_clk
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %out_disable_clk
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_disable(ptr noundef nonnull %20) #9
  call void @clk_unprepare(ptr noundef nonnull %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %out_disable_clk.cleanup_crit_edge, %out_disable_clk.thread, %if.then3.i, %if.then21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %ret.0, %if.then60 ], [ %ret.0, %out_disable_clk.cleanup_crit_edge ], [ 0, %out_disable_clk.thread ], [ %call1.i, %if.then3.i ], [ %call.i102, %if.then21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #9
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
define internal i32 @funnel_ctrl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !98
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !96
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #9
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %9)
  ret i32 %call6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @priority_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
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
  %priority = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @priority_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %priority = getelementptr inbounds %struct.funnel_drvdata, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %priority, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @funnel_enable(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %spinlock = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %inport
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #9
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
  %csdev1.i = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csdev1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !98
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %and.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.if.end6.i_crit_edge

if.then9.if.end6.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then9
  %call3.i = tail call i32 @coresight_claim_device_unlocked(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.then9.if.end6.i_crit_edge
  %and7.i = and i32 %15, -3841
  %shl.i = shl nuw i32 1, %inport
  %or.i = or i32 %shl.i, %and7.i
  %or8.i = or i32 %or.i, 1792
  %16 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !96
  %priority.i = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %priority.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr12.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %21) #9, !srcloc !96
  br label %if.end14

if.end14:                                         ; preds = %if.end6.i, %if.then.i.if.end14_crit_edge
  %rc.1.i = phi i32 [ 0, %if.end6.i ], [ %call3.i, %if.then.i.if.end14_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %add.ptr.i25.i = getelementptr i8, ptr %25, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #9, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool15.not = icmp eq i32 %rc.1.i, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %refcnt, align 8
  %arrayidx18 = getelementptr %struct.atomic_t, ptr %27, i32 %inport
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx18, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18, ptr %arrayidx18, i32 1, ptr elementtype(i32) %arrayidx18) #9, !srcloc !92
  br label %do.body23

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
  br label %if.end34

do.body23.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %refcnt, align 8
  %arrayidx18.c62 = getelementptr %struct.atomic_t, ptr %30, i32 %inport
  %call.i.i47.c63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18.c62, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx18.c62, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18.c62, ptr %arrayidx18.c62, i32 1, ptr elementtype(i32) %arrayidx18.c62) #9, !srcloc !92
  br label %do.body23

do.body23:                                        ; preds = %do.body23.critedge, %if.then16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @funnel_enable.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@funnel_enable, %if.then29)) #9
          to label %if.end34 [label %if.then29], !srcloc !101

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @funnel_enable.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %inport) #9
  br label %if.end34

if.end34.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %refcnt, align 8
  %arrayidx18.c = getelementptr %struct.atomic_t, ptr %33, i32 %inport
  %call.i.i47.c = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18.c, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx18.c, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18.c, ptr %arrayidx18.c, i32 1, ptr elementtype(i32) %arrayidx18.c) #9, !srcloc !92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
  br label %if.end34

if.end34:                                         ; preds = %if.end34.critedge, %if.then29, %do.body23, %if.end19
  %rc.15359 = phi i32 [ 0, %if.then29 ], [ %rc.1.i, %if.end19 ], [ 0, %do.body23 ], [ 0, %if.end34.critedge ]
  ret i32 %rc.15359
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @funnel_disable(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %spinlock = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refcnt, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %inport
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.then9:                                         ; preds = %if.then
  %csdev1.i = getelementptr inbounds %struct.funnel_drvdata, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csdev1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !98
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %shl.i = shl nuw i32 1, %inport
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %14, %neg.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !96
  %and5.i = and i32 %and.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.dynamic_funnel_disable_hw.exit_crit_edge

if.then9.dynamic_funnel_disable_hw.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %dynamic_funnel_disable_hw.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %10) #9
  br label %dynamic_funnel_disable_hw.exit

dynamic_funnel_disable_hw.exit:                   ; preds = %if.then.i, %if.then9.dynamic_funnel_disable_hw.exit_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %add.ptr.i13.i = getelementptr i8, ptr %19, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #9, !srcloc !96
  br label %do.body14

do.body14:                                        ; preds = %dynamic_funnel_disable_hw.exit, %if.then.do.body14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @funnel_disable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@funnel_disable, %if.then20)) #9
          to label %if.end25 [label %if.then20], !srcloc !101

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @funnel_disable.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %inport) #9
  br label %if.end25

if.end25.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @funnel_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.funnel_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @funnel_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %atclk = getelementptr inbounds %struct.funnel_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %atclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_funnel_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call = tail call fastcc i32 @funnel_probe(ptr noundef %adev, ptr noundef %res)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dynamic_funnel_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csdev.i = getelementptr inbounds %struct.funnel_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_unregister(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_coresight_funnel__299_433_funnel_init6, !1, !"__initcall__kmod_coresight_funnel__299_433_funnel_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 433, i32 1}
!2 = !{ptr @__exitcall_funnel_exit, !3, !"__exitcall_funnel_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 434, i32 1}
!4 = !{ptr @__UNIQUE_ID_author300, !5, !"__UNIQUE_ID_author300", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 436, i32 1}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 437, i32 1}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 438, i32 1}
!10 = !{ptr @__UNIQUE_ID_file303, !11, !"__UNIQUE_ID_file303", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 439, i32 1}
!12 = !{ptr @__UNIQUE_ID_license304, !11, !"__UNIQUE_ID_license304", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 361, i32 13}
!15 = !{ptr @static_funnel_driver, !16, !"static_funnel_driver", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 357, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 217, i32 44}
!19 = distinct !{null, !20, !"__print_once", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 218, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @funnel_probe._entry, !20, !"_entry", i1 false, i1 false}
!27 = !{ptr @funnel_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 228, i32 37}
!30 = !{ptr @funnel_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 259, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 33, i32 1}
!35 = !{ptr @funnel_devs, !34, !"funnel_devs", i1 false, i1 false}
!36 = !{ptr @coresight_funnel_groups, !37, !"coresight_funnel_groups", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 206, i32 1}
!38 = !{ptr @coresight_funnel_group, !37, !"coresight_funnel_group", i1 false, i1 false}
!39 = !{ptr @coresight_funnel_attrs, !40, !"coresight_funnel_attrs", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 201, i32 26}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 199, i32 8}
!43 = !{ptr @dev_attr_funnel_ctrl, !42, !"dev_attr_funnel_ctrl", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 197, i32 22}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 172, i32 8}
!48 = !{ptr @dev_attr_priority, !47, !"dev_attr_priority", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 154, i32 22}
!51 = !{ptr @funnel_cs_ops, !52, !"funnel_cs_ops", i1 false, i1 false}
!52 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 144, i32 35}
!53 = !{ptr @funnel_link_ops, !54, !"funnel_link_ops", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 139, i32 40}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 97, i32 3}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @funnel_enable.__UNIQUE_ID_ddebug297, !56, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 136, i32 3}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @funnel_disable.__UNIQUE_ID_ddebug298, !61, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!64 = !{ptr @static_funnel_match, !65, !"static_funnel_match", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 341, i32 34}
!66 = !{ptr @funnel_dev_pm_ops, !67, !"funnel_dev_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 311, i32 32}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 398, i32 11}
!70 = !{ptr @dynamic_funnel_driver, !71, !"dynamic_funnel_driver", i1 false, i1 false}
!71 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 396, i32 27}
!72 = !{ptr @dynamic_funnel_ids, !73, !"dynamic_funnel_ids", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 381, i32 29}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 414, i32 3}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @funnel_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @funnel_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwtracing/coresight/coresight-funnel.c", i32 420, i32 3}
!81 = !{ptr @funnel_init._entry.22, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @funnel_init._entry_ptr.24, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148312011, i64 2148312037, i64 2148312066, i64 2148312100, i64 2148312131, i64 2148312154}
!93 = !{i64 2148311430}
!94 = !{i64 796253, i64 796278, i64 796300, i64 796316, i64 796328, i64 796348, i64 796372, i64 796388, i64 796400}
!95 = !{i64 2148311618}
!96 = !{i64 6582887}
!97 = !{i64 2155987053}
!98 = !{i64 6583305}
!99 = !{i64 2155986357}
!100 = !{!"auto-init"}
!101 = !{i64 2148956303, i64 2148956308, i64 2148956321, i64 2148956365, i64 2148956399, i64 2148956420}
!102 = !{i64 2148400475}
!103 = !{i64 2148315196, i64 2148315228, i64 2148315257, i64 2148315291, i64 2148315322, i64 2148315345}
!104 = !{i64 2148400704}
