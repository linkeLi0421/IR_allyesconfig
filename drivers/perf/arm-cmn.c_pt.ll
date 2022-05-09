; ModuleID = '/llk/IR_all_yes/drivers/perf/arm-cmn.c_pt.bc'
source_filename = "../drivers/perf/arm-cmn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_cmn_event_attr = type { %struct.device_attribute, i32, i32, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_cmn_format_attr = type { %struct.device_attribute, i64, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.arm_cmn = type { ptr, ptr, i32, i32, i32, i8, i8, i16, i16, i8, i8, %struct.anon.95, ptr, ptr, ptr, ptr, i32, i32, %struct.hlist_node, %struct.pmu, ptr }
%struct.anon.95 = type { i8, [3 x i8] }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_cmn_node = type { ptr, i16, i16, i32, i32, %union.anon.96, %union.anon.98 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i8, i8 }
%union.anon.98 = type { i32 }
%struct.arm_cmn_dtc = type { ptr, i32, i32, i8, [8 x ptr], ptr }
%struct.arm_cmn_dtm = type { ptr, i32, %union.anon.99, [4 x i8] }
%union.anon.99 = type { i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.76, i64, i64, i64, %union.anon.77, i32, %union.anon.78, %union.anon.79, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.76 = type { i64 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i64 }
%union.anon.79 = type { i64 }
%struct.hw_perf_event = type { %union.anon.80, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.87, i64, i64, i64, i64 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.arm_cmn_hw_event = type { ptr, [2 x i64], i32, i8, i8, i8 }
%struct.arm_cmn_val = type { [92 x i8], [92 x i8], [92 x [4 x i8]], i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@arm_cmn_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arm_cmn_probe, ptr @arm_cmn_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arm_cmn_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@arm_cmn_hp_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_cmn_debugfs = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_arm_cmn__508_2017_arm_cmn_init6 = internal global ptr @arm_cmn_init, section ".initcall6.init", align 4
@__exitcall_arm_cmn_exit = internal global ptr @arm_cmn_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author509 = internal constant [51 x i8] c"arm_cmn.author=Robin Murphy <robin.murphy@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description510 = internal constant [43 x i8] c"arm_cmn.description=Arm CMN-600 PMU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file511 = internal constant [34 x i8] c"arm_cmn.file=drivers/perf/arm-cmn\00", section ".modinfo", align 1
@__UNIQUE_ID_license512 = internal constant [23 x i8] c"arm_cmn.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm-cmn\00", [24 x i8] zeroinitializer }, align 32
@arm_cmn_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cmn-600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,ci-700\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@arm_cmn_probe.id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@arm_cmn_attr_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @arm_cmn_event_attrs_group, ptr @arm_cmn_format_attrs_group, ptr @arm_cmn_cpumask_attr_group, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm_cmn_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arm,root-node\00", [18 x i8] zeroinitializer }, align 32
@arm_cmn_discover.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_cmn\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm_cmn_discover\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/perf/arm-cmn.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ignoring external node %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_cmn_discover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1798, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid device node type: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arm_cmn_discover._entry_ptr = internal global ptr @arm_cmn_discover._entry, section ".printk_index", align 4
@arm_cmn_discover._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1827, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"1x1 config not fully supported, translate XP events manually\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arm_cmn_discover._entry_ptr.13 = internal global ptr @arm_cmn_discover._entry.10, section ".printk_index", align 4
@arm_cmn_discover.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 1, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"model %d, periph_id_2 revision %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_cmn_discover.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 1, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mesh %dx%d, ID width %d, ports %6pbl%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", multi-DTM\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@arm_cmn_init_node_info.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm_cmn_init_node_info\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"node%*c%#06hx%*ctype:%-#6x id:%-4hd off:%#x\0A\00", [51 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@arm_cmn_event_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.20, ptr @arm_cmn_event_attr_is_visible, ptr null, ptr @arm_cmn_event_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_cmn_format_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.634, ptr null, ptr null, ptr @arm_cmn_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_cmn_cpumask_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @arm_cmn_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@arm_cmn_event_attrs = internal global { [306 x ptr], [312 x i8] } { [306 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.23, ptr @.compoundliteral.25, ptr @.compoundliteral.27, ptr @.compoundliteral.29, ptr @.compoundliteral.31, ptr @.compoundliteral.33, ptr @.compoundliteral.35, ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr @.compoundliteral.41, ptr @.compoundliteral.43, ptr @.compoundliteral.45, ptr @.compoundliteral.47, ptr @.compoundliteral.49, ptr @.compoundliteral.51, ptr @.compoundliteral.53, ptr @.compoundliteral.55, ptr @.compoundliteral.57, ptr @.compoundliteral.59, ptr @.compoundliteral.61, ptr @.compoundliteral.63, ptr @.compoundliteral.65, ptr @.compoundliteral.67, ptr @.compoundliteral.69, ptr @.compoundliteral.71, ptr @.compoundliteral.73, ptr @.compoundliteral.75, ptr @.compoundliteral.77, ptr @.compoundliteral.79, ptr @.compoundliteral.81, ptr @.compoundliteral.83, ptr @.compoundliteral.85, ptr @.compoundliteral.87, ptr @.compoundliteral.89, ptr @.compoundliteral.91, ptr @.compoundliteral.93, ptr @.compoundliteral.95, ptr @.compoundliteral.97, ptr @.compoundliteral.99, ptr @.compoundliteral.101, ptr @.compoundliteral.103, ptr @.compoundliteral.105, ptr @.compoundliteral.107, ptr @.compoundliteral.109, ptr @.compoundliteral.111, ptr @.compoundliteral.113, ptr @.compoundliteral.115, ptr @.compoundliteral.117, ptr @.compoundliteral.119, ptr @.compoundliteral.121, ptr @.compoundliteral.123, ptr @.compoundliteral.125, ptr @.compoundliteral.127, ptr @.compoundliteral.129, ptr @.compoundliteral.131, ptr @.compoundliteral.133, ptr @.compoundliteral.135, ptr @.compoundliteral.137, ptr @.compoundliteral.139, ptr @.compoundliteral.141, ptr @.compoundliteral.143, ptr @.compoundliteral.145, ptr @.compoundliteral.147, ptr @.compoundliteral.149, ptr @.compoundliteral.151, ptr @.compoundliteral.153, ptr @.compoundliteral.155, ptr @.compoundliteral.157, ptr @.compoundliteral.159, ptr @.compoundliteral.161, ptr @.compoundliteral.163, ptr @.compoundliteral.165, ptr @.compoundliteral.167, ptr @.compoundliteral.169, ptr @.compoundliteral.171, ptr @.compoundliteral.173, ptr @.compoundliteral.175, ptr @.compoundliteral.177, ptr @.compoundliteral.179, ptr @.compoundliteral.181, ptr @.compoundliteral.183, ptr @.compoundliteral.185, ptr @.compoundliteral.187, ptr @.compoundliteral.189, ptr @.compoundliteral.191, ptr @.compoundliteral.193, ptr @.compoundliteral.195, ptr @.compoundliteral.197, ptr @.compoundliteral.199, ptr @.compoundliteral.201, ptr @.compoundliteral.203, ptr @.compoundliteral.205, ptr @.compoundliteral.207, ptr @.compoundliteral.209, ptr @.compoundliteral.211, ptr @.compoundliteral.213, ptr @.compoundliteral.215, ptr @.compoundliteral.217, ptr @.compoundliteral.219, ptr @.compoundliteral.221, ptr @.compoundliteral.223, ptr @.compoundliteral.225, ptr @.compoundliteral.227, ptr @.compoundliteral.229, ptr @.compoundliteral.231, ptr @.compoundliteral.233, ptr @.compoundliteral.235, ptr @.compoundliteral.237, ptr @.compoundliteral.239, ptr @.compoundliteral.241, ptr @.compoundliteral.243, ptr @.compoundliteral.245, ptr @.compoundliteral.247, ptr @.compoundliteral.249, ptr @.compoundliteral.251, ptr @.compoundliteral.253, ptr @.compoundliteral.255, ptr @.compoundliteral.257, ptr @.compoundliteral.259, ptr @.compoundliteral.261, ptr @.compoundliteral.263, ptr @.compoundliteral.265, ptr @.compoundliteral.267, ptr @.compoundliteral.269, ptr @.compoundliteral.271, ptr @.compoundliteral.273, ptr @.compoundliteral.275, ptr @.compoundliteral.277, ptr @.compoundliteral.279, ptr @.compoundliteral.281, ptr @.compoundliteral.283, ptr @.compoundliteral.285, ptr @.compoundliteral.287, ptr @.compoundliteral.289, ptr @.compoundliteral.291, ptr @.compoundliteral.293, ptr @.compoundliteral.295, ptr @.compoundliteral.297, ptr @.compoundliteral.299, ptr @.compoundliteral.301, ptr @.compoundliteral.303, ptr @.compoundliteral.305, ptr @.compoundliteral.307, ptr @.compoundliteral.309, ptr @.compoundliteral.311, ptr @.compoundliteral.313, ptr @.compoundliteral.315, ptr @.compoundliteral.317, ptr @.compoundliteral.319, ptr @.compoundliteral.321, ptr @.compoundliteral.323, ptr @.compoundliteral.325, ptr @.compoundliteral.327, ptr @.compoundliteral.329, ptr @.compoundliteral.331, ptr @.compoundliteral.333, ptr @.compoundliteral.335, ptr @.compoundliteral.337, ptr @.compoundliteral.339, ptr @.compoundliteral.341, ptr @.compoundliteral.343, ptr @.compoundliteral.345, ptr @.compoundliteral.347, ptr @.compoundliteral.349, ptr @.compoundliteral.351, ptr @.compoundliteral.353, ptr @.compoundliteral.355, ptr @.compoundliteral.357, ptr @.compoundliteral.359, ptr @.compoundliteral.361, ptr @.compoundliteral.363, ptr @.compoundliteral.365, ptr @.compoundliteral.367, ptr @.compoundliteral.369, ptr @.compoundliteral.371, ptr @.compoundliteral.373, ptr @.compoundliteral.375, ptr @.compoundliteral.377, ptr @.compoundliteral.379, ptr @.compoundliteral.381, ptr @.compoundliteral.383, ptr @.compoundliteral.385, ptr @.compoundliteral.387, ptr @.compoundliteral.389, ptr @.compoundliteral.391, ptr @.compoundliteral.393, ptr @.compoundliteral.395, ptr @.compoundliteral.397, ptr @.compoundliteral.399, ptr @.compoundliteral.401, ptr @.compoundliteral.403, ptr @.compoundliteral.405, ptr @.compoundliteral.407, ptr @.compoundliteral.409, ptr @.compoundliteral.411, ptr @.compoundliteral.413, ptr @.compoundliteral.415, ptr @.compoundliteral.417, ptr @.compoundliteral.419, ptr @.compoundliteral.421, ptr @.compoundliteral.423, ptr @.compoundliteral.425, ptr @.compoundliteral.427, ptr @.compoundliteral.429, ptr @.compoundliteral.431, ptr @.compoundliteral.433, ptr @.compoundliteral.435, ptr @.compoundliteral.437, ptr @.compoundliteral.439, ptr @.compoundliteral.441, ptr @.compoundliteral.443, ptr @.compoundliteral.445, ptr @.compoundliteral.447, ptr @.compoundliteral.449, ptr @.compoundliteral.451, ptr @.compoundliteral.453, ptr @.compoundliteral.455, ptr @.compoundliteral.457, ptr @.compoundliteral.459, ptr @.compoundliteral.461, ptr @.compoundliteral.463, ptr @.compoundliteral.465, ptr @.compoundliteral.467, ptr @.compoundliteral.469, ptr @.compoundliteral.471, ptr @.compoundliteral.473, ptr @.compoundliteral.475, ptr @.compoundliteral.477, ptr @.compoundliteral.479, ptr @.compoundliteral.481, ptr @.compoundliteral.483, ptr @.compoundliteral.485, ptr @.compoundliteral.487, ptr @.compoundliteral.489, ptr @.compoundliteral.491, ptr @.compoundliteral.493, ptr @.compoundliteral.495, ptr @.compoundliteral.497, ptr @.compoundliteral.499, ptr @.compoundliteral.501, ptr @.compoundliteral.503, ptr @.compoundliteral.505, ptr @.compoundliteral.507, ptr @.compoundliteral.509, ptr @.compoundliteral.511, ptr @.compoundliteral.513, ptr @.compoundliteral.515, ptr @.compoundliteral.517, ptr @.compoundliteral.519, ptr @.compoundliteral.521, ptr @.compoundliteral.523, ptr @.compoundliteral.525, ptr @.compoundliteral.527, ptr @.compoundliteral.529, ptr @.compoundliteral.531, ptr @.compoundliteral.533, ptr @.compoundliteral.535, ptr @.compoundliteral.537, ptr @.compoundliteral.539, ptr @.compoundliteral.541, ptr @.compoundliteral.543, ptr @.compoundliteral.545, ptr @.compoundliteral.547, ptr @.compoundliteral.549, ptr @.compoundliteral.551, ptr @.compoundliteral.553, ptr @.compoundliteral.555, ptr @.compoundliteral.557, ptr @.compoundliteral.559, ptr @.compoundliteral.561, ptr @.compoundliteral.563, ptr @.compoundliteral.565, ptr @.compoundliteral.567, ptr @.compoundliteral.569, ptr @.compoundliteral.571, ptr @.compoundliteral.573, ptr @.compoundliteral.575, ptr @.compoundliteral.577, ptr @.compoundliteral.579, ptr @.compoundliteral.581, ptr @.compoundliteral.583, ptr @.compoundliteral.585, ptr @.compoundliteral.587, ptr @.compoundliteral.589, ptr @.compoundliteral.591, ptr @.compoundliteral.593, ptr @.compoundliteral.595, ptr @.compoundliteral.597, ptr @.compoundliteral.599, ptr @.compoundliteral.601, ptr @.compoundliteral.603, ptr @.compoundliteral.605, ptr @.compoundliteral.607, ptr @.compoundliteral.609, ptr @.compoundliteral.611, ptr @.compoundliteral.613, ptr @.compoundliteral.615, ptr @.compoundliteral.617, ptr @.compoundliteral.619, ptr @.compoundliteral.621, ptr @.compoundliteral.623, ptr @.compoundliteral.625, ptr @.compoundliteral.627, ptr @.compoundliteral.629, ptr null], [312 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtc_cycles\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 3, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_rxreq_dvmop\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_rxreq_dvmsync\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dn_rxreq_dvmop_vmid_filtered\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_rxreq_retried\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dn_rxreq_trk_occupancy_all\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dn_rxreq_trk_occupancy_dvmop\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 5, i8 1 }], [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dn_rxreq_trk_occupancy_dvmsync\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 1, i8 5, i8 2 }], [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dn_dvmop_tlbi\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dn_dvmop_bpi\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dn_dvmop_pici\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dn_dvmop_vici\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dn_dvmsync\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_vmid_filtered\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dn_rndop_filtered\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 7, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dn_retry\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 8, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_txsnp_flitv\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dn_txsnp_stall\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dn_trkfull\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 11, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dn_trk_occupancy_all\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 12, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dn_trk_occupancy_dvmop\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 12, i8 1 }], [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dn_trk_occupancy_dvmsync\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 1, i8 12, i8 2 }], [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_cache_miss\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hnf_slc_sf_cache_access\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_cache_fill\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_pocq_retry\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnf_pocq_reqs_recvd\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hnf_sf_hit\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_sf_evictions\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 7, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnf_dir_snoops_sent\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 8, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnf_brd_snoops_sent\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_slc_eviction\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hnf_slc_fill_invalid_way\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 11, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_mc_retries\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 12, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hnf_mc_reqs\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 13, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_qos_hh_retry\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 14, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hnf_qos_pocq_occupancy_all\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 15, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hnf_qos_pocq_occupancy_read\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 15, i8 1 }], [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hnf_qos_pocq_occupancy_write\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 15, i8 2 }], [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hnf_qos_pocq_occupancy_atomic\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 15, i8 3 }], [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hnf_qos_pocq_occupancy_stash\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 15, i8 4 }], [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_pocq_addrhaz\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 16, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hnf_pocq_atomic_addrhaz\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hnf_ld_st_swp_adq_full\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 18, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_cmp_adq_full\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hnf_txdat_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 20, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hnf_txrsp_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 21, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hnf_seq_full\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 22, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hnf_seq_hit\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 23, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hnf_snp_sent\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 24, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hnf_sfbi_dir_snp_sent\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 25, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hnf_sfbi_brd_snp_sent\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 26, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hnf_snp_sent_untrk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 27, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_intv_dirty\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 28, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hnf_stash_snp_sent\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 29, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnf_stash_data_pull\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 30, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hnf_snp_fwded\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 5, i8 31, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hnf_atomic_fwd\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 5, i8 32, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_mpam_hardlim\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 5, i8 33, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hnf_mpam_softlim\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 5, i8 34, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hni_rrt_rd_occ_cnt_ovfl\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 32, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hni_rrt_wr_occ_cnt_ovfl\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 33, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hni_rdt_rd_occ_cnt_ovfl\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 34, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hni_rdt_wr_occ_cnt_ovfl\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 35, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hni_wdb_occ_cnt_ovfl\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 36, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hni_rrt_rd_alloc\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 37, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hni_rrt_wr_alloc\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 38, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hni_rdt_rd_alloc\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 39, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hni_rdt_wr_alloc\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 40, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hni_wdb_alloc\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 41, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hni_txrsp_retryack\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 42, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hni_arvalid_no_arready\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 43, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hni_arready_no_arvalid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 44, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hni_awvalid_no_awready\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 45, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hni_awready_no_awvalid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 46, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hni_wvalid_no_wready\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 47, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hni_txdat_stall\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 48, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hni_nonpcie_serialization\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 49, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hni_pcie_serialization\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 4, i8 50, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_req_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_req_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_req_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_req_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 13, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_req_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_req_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 21, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_req_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 25, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_req_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 29, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_rsp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 33, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_rsp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 37, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_rsp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 41, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_rsp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 45, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_rsp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 49, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_rsp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 53, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_rsp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 57, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_rsp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 61, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_snp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 65, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_snp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 69, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_snp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 73, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_snp_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 77, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_snp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 81, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_snp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 85, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_snp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 89, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_snp_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.224, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 93, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_dat_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 97, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_dat_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.228, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 101, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_dat_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.230, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 105, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_dat_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.232, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 109, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_dat_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.234, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 113, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_dat_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 117, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_dat_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 121, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_dat_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 125, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_pub_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -127, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_pub_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.244, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -123, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_pub_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.246, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -119, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_pub_txflit_valid\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.248, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -115, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_pub_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.250, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -111, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_pub_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.252, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -107, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_pub_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.254, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -103, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_pub_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.256, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -99, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_e_rsp2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.258, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -95, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_w_rsp2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.260, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -91, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_n_rsp2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.262, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -87, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_s_rsp2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.264, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -83, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p0_rsp2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.266, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -79, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p1_rsp2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.268, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -75, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p2_rsp2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.270, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -71, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p3_rsp2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.272, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -67, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_e_dat2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.274, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -63, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_w_dat2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.276, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -59, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_n_dat2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.278, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -55, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_s_dat2_txflit_valid\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.280, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -51, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p0_dat2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.282, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -47, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p1_dat2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.284, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -43, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p2_dat2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.286, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -39, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p3_dat2_txflit_valid\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.288, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -35, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_req_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.290, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_req_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.292, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_req_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.294, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_req_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.296, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 14, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_req_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.298, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 18, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_req_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.300, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 22, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_req_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.302, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 26, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_req_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.304, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 30, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_rsp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.306, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 34, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_rsp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.309 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.308, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 38, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_rsp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.310, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 42, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_rsp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.312, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 46, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_rsp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.314, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 50, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_rsp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.316, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 54, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_rsp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.318, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 58, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_rsp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.320, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 62, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_snp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.322, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 66, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_snp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.324, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 70, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_snp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.326, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 74, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_snp_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.328, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 78, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_snp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.330, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 82, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_snp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.332, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 86, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_snp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.334, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 90, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_snp_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.336, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 94, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_dat_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.338, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 98, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_dat_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.340, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 102, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_dat_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.342, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 106, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_dat_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.344, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 110, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_dat_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.347 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.346, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 114, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_dat_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.348, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 118, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_dat_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.350, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 122, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_dat_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.352, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 126, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_e_pub_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.354, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -126, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_w_pub_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.356, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -122, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_n_pub_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.359 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.358, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -118, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxp_s_pub_txflit_stall\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.360, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -114, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p0_pub_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.362, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -110, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p1_pub_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.364, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -106, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p2_pub_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.366, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -102, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_p3_pub_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.368, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -98, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_e_rsp2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.370, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -94, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_w_rsp2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.372, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -90, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_n_rsp2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.374, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -86, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_s_rsp2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.376, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -82, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p0_rsp2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.378, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -78, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p1_rsp2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.380, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -74, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p2_rsp2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.382, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -70, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p3_rsp2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.384, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -66, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_e_dat2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.386, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -62, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_w_dat2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.388, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -58, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_n_dat2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.390, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -54, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxp_s_dat2_txflit_stall\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.392, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -50, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p0_dat2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.394, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -46, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p1_dat2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.396, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -42, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p2_dat2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.398, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -38, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxp_p3_dat2_txflit_stall\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.401 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.400, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -34, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_e_req_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.403 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.402, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_w_req_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.404, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 7, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_n_req_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.407 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.406, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 11, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_s_req_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.409 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.408, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 15, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p0_req_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.411 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.410, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p1_req_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.413 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.412, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 23, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p2_req_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.415 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.414, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 27, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p3_req_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.417 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.416, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 31, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_e_rsp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.419 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.418, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 35, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_w_rsp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.421 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.420, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 39, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_n_rsp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.423 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.422, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 43, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_s_rsp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.425 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.424, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 47, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p0_rsp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.427 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.426, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 51, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p1_rsp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.429 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.428, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 55, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p2_rsp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.431 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.430, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 59, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p3_rsp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.433 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.432, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 63, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_e_snp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.435 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.434, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 67, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_w_snp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.437 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.436, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 71, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_n_snp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.439 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.438, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 75, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_s_snp_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.441 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.440, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 79, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p0_snp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.443 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.442, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 83, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p1_snp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.445 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.444, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 87, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p2_snp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.447 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.446, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 91, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p3_snp_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.449 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.448, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 95, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_e_dat_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.451 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.450, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 99, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_w_dat_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.453 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.452, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 103, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_n_dat_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.455 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.454, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 107, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_s_dat_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.457 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.456, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 111, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p0_dat_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.459 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.458, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 115, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p1_dat_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.461 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.460, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 119, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p2_dat_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.463 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.462, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 123, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p3_dat_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.465 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.464, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 127, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_e_pub_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.467 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.466, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -125, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_w_pub_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.469 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.468, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -121, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_n_pub_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.471 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.470, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -117, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxp_s_pub_partial_dat_flit\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.473 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.472, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -113, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p0_pub_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.475 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.474, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -109, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p1_pub_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.477 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.476, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -105, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p2_pub_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.479 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.478, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -101, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_p3_pub_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.481 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.480, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -97, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_e_rsp2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.483 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.482, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -93, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_w_rsp2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.485 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.484, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -89, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_n_rsp2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.487 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.486, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -85, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_s_rsp2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.489 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.488, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -81, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p0_rsp2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.491 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.490, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -77, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p1_rsp2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.493 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.492, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -73, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p2_rsp2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.495 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.494, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -69, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p3_rsp2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.497 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.496, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -65, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_e_dat2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.499 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.498, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -61, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_w_dat2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.501 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.500, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -57, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_n_dat2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.503 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.502, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -53, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxp_s_dat2_partial_dat_flit\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.505 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.504, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -49, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p0_dat2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.507 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.506, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -45, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p1_dat2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.509 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.508, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -41, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p2_dat2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.511 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.510, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -37, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxp_p3_dat2_partial_dat_flit\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.513 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.512, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 6, i8 -33, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"watchpoint_up\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.515 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.514, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 30576, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watchpoint_down\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.517 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.516, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 30576, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbsx_rd_req\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.519 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.518, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbsx_wr_req\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.521 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.520, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sbsx_cmo_req\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.523 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.522, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbsx_txrsp_retryack\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.525 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.524, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbsx_txdat_flitv\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.527 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.526, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbsx_txrsp_flitv\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.529 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.528, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sbsx_rd_req_trkr_occ_cnt_ovfl\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.531 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.530, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sbsx_wr_req_trkr_occ_cnt_ovfl\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.533 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.532, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 18, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sbsx_cmo_req_trkr_occ_cnt_ovfl\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.535 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.534, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbsx_wdb_occ_cnt_ovfl\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.537 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.536, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 20, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sbsx_rd_axi_trkr_occ_cnt_ovfl\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.539 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.538, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 21, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sbsx_cmo_axi_trkr_occ_cnt_ovfl\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.541 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.540, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 22, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbsx_rdb_occ_cnt_ovfl\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.543 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.542, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 7, i8 23, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sbsx_arvalid_no_arready\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.545 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.544, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 33, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sbsx_awvalid_no_awready\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.547 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.546, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 34, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbsx_wvalid_no_wready\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.549 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.548, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 35, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.550 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbsx_txdat_stall\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.551 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.550, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 36, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbsx_txrsp_stall\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.553 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.552, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 7, i8 37, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.554 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s0_rdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.555 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.554, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.556 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s1_rdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.557 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.556, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s2_rdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.559 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.558, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnid_rxdat_flits\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.561 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.560, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnid_txdat_flits\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.563 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.562, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rnid_txreq_flits_total\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.565 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.564, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnid_txreq_flits_retried\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.567 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.566, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 7, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.568 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rnid_rrt_occ_ovfl\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.569 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.568, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 8, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.570 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rnid_wrt_occ_ovfl\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.571 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.570, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rnid_txreq_flits_replayed\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.573 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.572, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rnid_wrcancel_sent\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.575 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.574, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 11, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.576 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s0_wdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.577 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.576, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 12, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s1_wdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.579 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.578, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 13, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.580 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnid_s2_wdata_beats\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.581 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.580, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 14, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.582 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rnid_rrt_alloc\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.583 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.582, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 15, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rnid_wrt_alloc\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.585 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.584, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 10, i8 16, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.586 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rnid_rdb_unord\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.587 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.586, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 10, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.588 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rnid_rdb_replay\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.589 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.588, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 10, i8 18, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.590 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rnid_rdb_hybrid\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.591 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.590, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 10, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.592 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rnid_rdb_ord\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.593 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.592, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 1, i32 10, i8 20, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.594 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rnid_padb_occ_ovfl\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.595 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.594, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rnid_rpdb_occ_ovfl\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.597 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.596, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 18, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.598 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rnid_rrt_occup_ovfl_slice1\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.599 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.598, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.600 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rnid_rrt_occup_ovfl_slice2\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.601 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.600, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 20, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.602 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rnid_rrt_occup_ovfl_slice3\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.603 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.602, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 21, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rnid_wrt_throttled\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.605 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.604, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 2, i32 10, i8 22, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtsx_tc_lookup\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.607 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.606, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.608 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtsx_tc_fill\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.609 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.608, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.610 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtsx_tc_miss\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.611 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.610, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.612 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtsx_tdb_forward\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.613 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.612, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.614 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtsx_tcq_hazard\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.615 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.614, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 5, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.616 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtsx_tcq_rd_alloc\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.617 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.616, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.618 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtsx_tcq_wr_alloc\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.619 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.618, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 7, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.620 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtsx_tcq_cmo_alloc\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.621 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.620, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 8, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.622 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtsx_axi_rd_req\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.623 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.622, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.624 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtsx_axi_wr_req\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.625 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.624, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.626 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtsx_tcq_occ_cnt_ovfl\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.627 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.626, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 11, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.628 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtsx_tdb_occ_cnt_ovfl\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.629 = internal global { [1 x %struct.arm_cmn_event_attr], [56 x i8] } { [1 x %struct.arm_cmn_event_attr] [%struct.arm_cmn_event_attr { %struct.device_attribute { %struct.attribute { ptr @.str.628, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_event_show, ptr null }, i32 -1, i32 16, i8 12, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.630 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"type=0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.631 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"type=0x%x,eventid=0x%x,wp_dev_sel=?,wp_chn_sel=?,wp_grp=?,wp_val=?,wp_mask=?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.632 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type=0x%x,eventid=0x%x,occupid=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.633 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"type=0x%x,eventid=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.634 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@arm_cmn_format_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.compoundliteral.636, ptr @.compoundliteral.638, ptr @.compoundliteral.640, ptr @.compoundliteral.642, ptr @.compoundliteral.644, ptr @.compoundliteral.646, ptr @.compoundliteral.648, ptr @.compoundliteral.650, ptr @.compoundliteral.652, ptr @.compoundliteral.654, ptr @.compoundliteral.656, ptr @.compoundliteral.658, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.635 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.636 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.635, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 65535, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.637 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eventid\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.638 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.637, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 16711680, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.639 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"occupid\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.640 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.639, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 251658240, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.641 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bynodeid\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.642 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.641, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 2147483648, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.643 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nodeid\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.644 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.643, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 281470681743360, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.645 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wp_dev_sel\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.646 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.645, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 1970324836974592, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.647 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wp_chn_sel\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.648 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.647, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 69805794224242688, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.649 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wp_grp\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.650 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.649, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 72057594037927936, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.651 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wp_exclusive\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.652 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.651, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 144115188075855872, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.653 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wp_combine\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.654 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.653, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 251658240, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.655 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wp_val\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.656 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.655, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 -1, i32 1 }], [48 x i8] zeroinitializer }, align 32
@.str.657 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wp_mask\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.658 = internal global { [1 x %struct.arm_cmn_format_attr], [48 x i8] } { [1 x %struct.arm_cmn_format_attr] [%struct.arm_cmn_format_attr { %struct.device_attribute { %struct.attribute { ptr @.str.657, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_format_show, ptr null }, i64 -1, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str.659 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.660 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config:%d-%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.661 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"config%d:%d-%d\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_cmn_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @arm_cmn_cpumask_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@arm_cmn_cpumask_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.662, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_cmn_cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.662 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@arm_cmn_event_init.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.663, ptr @.str.5, ptr @.str.664, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.663 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_cmn_event_init\00", [45 x i8] zeroinitializer }, align 32
@.str.664 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid node 0x%x (%d,%d,%d,%d) type 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.665 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"map\00", [28 x i8] zeroinitializer }, align 32
@.str.666 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"map_%d\00", [25 x i8] zeroinitializer }, align 32
@arm_cmn_map_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @arm_cmn_map_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.667 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"     X\00", [25 x i8] zeroinitializer }, align 32
@.str.668 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"    %d    \00", [21 x i8] zeroinitializer }, align 32
@.str.669 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0AY P D+\00", [24 x i8] zeroinitializer }, align 32
@.str.670 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"--------+\00", [22 x i8] zeroinitializer }, align 32
@.str.671 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A%d    |\00", [23 x i8] zeroinitializer }, align 32
@.str.672 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" XP #%-2d |\00", [20 x i8] zeroinitializer }, align 32
@.str.673 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A     |\00", [24 x i8] zeroinitializer }, align 32
@.str.674 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" DTC ?? |\00", [22 x i8] zeroinitializer }, align 32
@.str.675 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" DTC %ld  |\00", [20 x i8] zeroinitializer }, align 32
@.str.676 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"........|\00", [22 x i8] zeroinitializer }, align 32
@.str.677 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A  %d  |\00", [23 x i8] zeroinitializer }, align 32
@.str.678 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A    0|\00", [24 x i8] zeroinitializer }, align 32
@.str.679 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A    1|\00", [24 x i8] zeroinitializer }, align 32
@.str.680 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A-----+\00", [24 x i8] zeroinitializer }, align 32
@.str.681 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.682 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  RN-I  |\00", [22 x i8] zeroinitializer }, align 32
@.str.683 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  RN-D  |\00", [22 x i8] zeroinitializer }, align 32
@.str.684 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" RN-F_B |\00", [22 x i8] zeroinitializer }, align 32
@.str.685 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RN-F_B_E|\00", [22 x i8] zeroinitializer }, align 32
@.str.686 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" RN-F_A |\00", [22 x i8] zeroinitializer }, align 32
@.str.687 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RN-F_A_E|\00", [22 x i8] zeroinitializer }, align 32
@.str.688 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  HN-T  |\00", [22 x i8] zeroinitializer }, align 32
@.str.689 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  HN-I  |\00", [22 x i8] zeroinitializer }, align 32
@.str.690 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  HN-D  |\00", [22 x i8] zeroinitializer }, align 32
@.str.691 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  SN-F  |\00", [22 x i8] zeroinitializer }, align 32
@.str.692 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  SBSX  |\00", [22 x i8] zeroinitializer }, align 32
@.str.693 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  HN-F  |\00", [22 x i8] zeroinitializer }, align 32
@.str.694 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" SN-F_E |\00", [22 x i8] zeroinitializer }, align 32
@.str.695 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" SN-F_D |\00", [22 x i8] zeroinitializer }, align 32
@.str.696 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  CXHA  |\00", [22 x i8] zeroinitializer }, align 32
@.str.697 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  CXRA  |\00", [22 x i8] zeroinitializer }, align 32
@.str.698 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  CXRH  |\00", [22 x i8] zeroinitializer }, align 32
@.str.699 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" RN-F_D |\00", [22 x i8] zeroinitializer }, align 32
@.str.700 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RN-F_D_E|\00", [22 x i8] zeroinitializer }, align 32
@.str.701 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" RN-F_C |\00", [22 x i8] zeroinitializer }, align 32
@.str.702 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RN-F_C_E|\00", [22 x i8] zeroinitializer }, align 32
@.str.703 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  MTSX  |\00", [22 x i8] zeroinitializer }, align 32
@.str.704 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"        |\00", [22 x i8] zeroinitializer }, align 32
@.str.705 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   #%-2d  |\00", [20 x i8] zeroinitializer }, align 32
@.str.706 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"perf/arm/cmn:online\00", [44 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@switch.table.arm_cmn_map_show = internal constant { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @.str.682, ptr @.str.683, ptr @.str.704, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.704, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.699, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.704, ptr @.str.704, ptr @.str.704, ptr @.str.704, ptr @.str.703], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.707 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 13, i64 15, i64 16, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.708 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 30576]
@__sancov_gen_cov_switch_values.709 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.710 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 30576]
@__sancov_gen_cov_switch_values.711 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.712 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 30576]
@__sancov_gen_cov_switch_values.713 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 30576]
@__sancov_gen_cov_switch_values.714 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 30576]
@__sancov_gen_cov_switch_values.715 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.716 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 30576]
@__sancov_gen_cov_switch_values.717 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.718 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.719 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.720 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.721 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@___asan_gen_.722 = private unnamed_addr constant [15 x i8] c"arm_cmn_driver\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1978, i32 31 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"arm_cmn_hp_state\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 296, i32 12 }
@___asan_gen_.728 = private unnamed_addr constant [16 x i8] c"arm_cmn_debugfs\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 356, i32 16 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1980, i32 11 }
@___asan_gen_.734 = private unnamed_addr constant [17 x i8] c"arm_cmn_of_match\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1962, i32 34 }
@___asan_gen_.737 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1876, i32 18 }
@___asan_gen_.740 = private unnamed_addr constant [20 x i8] c"arm_cmn_attr_groups\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 888, i32 38 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1932, i32 46 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1869, i32 34 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1767, i32 5 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1798, i32 5 }
@___asan_gen_.773 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1827, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1829, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1831, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1641, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [26 x i8] c"arm_cmn_event_attrs_group\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 815, i32 37 }
@___asan_gen_.803 = private unnamed_addr constant [27 x i8] c"arm_cmn_format_attrs_group\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 863, i32 37 }
@___asan_gen_.806 = private unnamed_addr constant [27 x i8] c"arm_cmn_cpumask_attr_group\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 884, i32 37 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 816, i32 10 }
@___asan_gen_.812 = private unnamed_addr constant [20 x i8] c"arm_cmn_event_attrs\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 657, i32 26 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 658, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 665, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 666, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 667, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 668, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 669, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 670, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 671, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 672, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 673, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 674, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 675, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 676, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 677, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 678, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 679, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 680, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 681, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 682, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 683, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 684, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 685, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 687, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 688, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 689, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 690, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 691, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 692, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 693, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 694, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 695, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 696, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 697, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 698, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 699, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 700, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 701, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 702, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 703, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 704, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 705, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 706, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 707, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 708, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 709, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 710, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 711, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 712, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 713, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 714, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 715, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 716, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 717, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 718, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 719, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 720, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 721, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 722, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 723, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 724, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 726, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 727, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 728, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 729, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 730, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 731, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 732, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 733, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 734, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 735, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 736, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 737, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 738, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 739, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 740, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 741, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 742, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 743, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 744, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1210 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1246 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1298 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1318 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1322 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1326 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1338 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1350 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 746, i32 2 }
@___asan_gen_.1354 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1362 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1386 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.309\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1426 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1482 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1486 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1494 = private unnamed_addr constant [21 x i8] c".compoundliteral.359\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1502 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1514 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1522 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1530 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1534 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1538 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1542 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1558 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1562 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1566 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1570 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1574 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 747, i32 2 }
@___asan_gen_.1578 = private unnamed_addr constant [21 x i8] c".compoundliteral.401\00", align 1
@___asan_gen_.1582 = private unnamed_addr constant [21 x i8] c".compoundliteral.403\00", align 1
@___asan_gen_.1586 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant [21 x i8] c".compoundliteral.407\00", align 1
@___asan_gen_.1594 = private unnamed_addr constant [21 x i8] c".compoundliteral.409\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant [21 x i8] c".compoundliteral.411\00", align 1
@___asan_gen_.1602 = private unnamed_addr constant [21 x i8] c".compoundliteral.413\00", align 1
@___asan_gen_.1606 = private unnamed_addr constant [21 x i8] c".compoundliteral.415\00", align 1
@___asan_gen_.1610 = private unnamed_addr constant [21 x i8] c".compoundliteral.417\00", align 1
@___asan_gen_.1614 = private unnamed_addr constant [21 x i8] c".compoundliteral.419\00", align 1
@___asan_gen_.1618 = private unnamed_addr constant [21 x i8] c".compoundliteral.421\00", align 1
@___asan_gen_.1622 = private unnamed_addr constant [21 x i8] c".compoundliteral.423\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant [21 x i8] c".compoundliteral.425\00", align 1
@___asan_gen_.1630 = private unnamed_addr constant [21 x i8] c".compoundliteral.427\00", align 1
@___asan_gen_.1634 = private unnamed_addr constant [21 x i8] c".compoundliteral.429\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant [21 x i8] c".compoundliteral.431\00", align 1
@___asan_gen_.1642 = private unnamed_addr constant [21 x i8] c".compoundliteral.433\00", align 1
@___asan_gen_.1646 = private unnamed_addr constant [21 x i8] c".compoundliteral.435\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant [21 x i8] c".compoundliteral.437\00", align 1
@___asan_gen_.1654 = private unnamed_addr constant [21 x i8] c".compoundliteral.439\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant [21 x i8] c".compoundliteral.441\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant [21 x i8] c".compoundliteral.443\00", align 1
@___asan_gen_.1666 = private unnamed_addr constant [21 x i8] c".compoundliteral.445\00", align 1
@___asan_gen_.1670 = private unnamed_addr constant [21 x i8] c".compoundliteral.447\00", align 1
@___asan_gen_.1674 = private unnamed_addr constant [21 x i8] c".compoundliteral.449\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant [21 x i8] c".compoundliteral.451\00", align 1
@___asan_gen_.1682 = private unnamed_addr constant [21 x i8] c".compoundliteral.453\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant [21 x i8] c".compoundliteral.455\00", align 1
@___asan_gen_.1690 = private unnamed_addr constant [21 x i8] c".compoundliteral.457\00", align 1
@___asan_gen_.1694 = private unnamed_addr constant [21 x i8] c".compoundliteral.459\00", align 1
@___asan_gen_.1698 = private unnamed_addr constant [21 x i8] c".compoundliteral.461\00", align 1
@___asan_gen_.1702 = private unnamed_addr constant [21 x i8] c".compoundliteral.463\00", align 1
@___asan_gen_.1706 = private unnamed_addr constant [21 x i8] c".compoundliteral.465\00", align 1
@___asan_gen_.1710 = private unnamed_addr constant [21 x i8] c".compoundliteral.467\00", align 1
@___asan_gen_.1714 = private unnamed_addr constant [21 x i8] c".compoundliteral.469\00", align 1
@___asan_gen_.1718 = private unnamed_addr constant [21 x i8] c".compoundliteral.471\00", align 1
@___asan_gen_.1722 = private unnamed_addr constant [21 x i8] c".compoundliteral.473\00", align 1
@___asan_gen_.1726 = private unnamed_addr constant [21 x i8] c".compoundliteral.475\00", align 1
@___asan_gen_.1730 = private unnamed_addr constant [21 x i8] c".compoundliteral.477\00", align 1
@___asan_gen_.1734 = private unnamed_addr constant [21 x i8] c".compoundliteral.479\00", align 1
@___asan_gen_.1738 = private unnamed_addr constant [21 x i8] c".compoundliteral.481\00", align 1
@___asan_gen_.1742 = private unnamed_addr constant [21 x i8] c".compoundliteral.483\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant [21 x i8] c".compoundliteral.485\00", align 1
@___asan_gen_.1750 = private unnamed_addr constant [21 x i8] c".compoundliteral.487\00", align 1
@___asan_gen_.1754 = private unnamed_addr constant [21 x i8] c".compoundliteral.489\00", align 1
@___asan_gen_.1758 = private unnamed_addr constant [21 x i8] c".compoundliteral.491\00", align 1
@___asan_gen_.1762 = private unnamed_addr constant [21 x i8] c".compoundliteral.493\00", align 1
@___asan_gen_.1766 = private unnamed_addr constant [21 x i8] c".compoundliteral.495\00", align 1
@___asan_gen_.1770 = private unnamed_addr constant [21 x i8] c".compoundliteral.497\00", align 1
@___asan_gen_.1774 = private unnamed_addr constant [21 x i8] c".compoundliteral.499\00", align 1
@___asan_gen_.1778 = private unnamed_addr constant [21 x i8] c".compoundliteral.501\00", align 1
@___asan_gen_.1782 = private unnamed_addr constant [21 x i8] c".compoundliteral.503\00", align 1
@___asan_gen_.1786 = private unnamed_addr constant [21 x i8] c".compoundliteral.505\00", align 1
@___asan_gen_.1790 = private unnamed_addr constant [21 x i8] c".compoundliteral.507\00", align 1
@___asan_gen_.1794 = private unnamed_addr constant [21 x i8] c".compoundliteral.509\00", align 1
@___asan_gen_.1798 = private unnamed_addr constant [21 x i8] c".compoundliteral.511\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 748, i32 2 }
@___asan_gen_.1802 = private unnamed_addr constant [21 x i8] c".compoundliteral.513\00", align 1
@___asan_gen_.1805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 750, i32 2 }
@___asan_gen_.1806 = private unnamed_addr constant [21 x i8] c".compoundliteral.515\00", align 1
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 751, i32 2 }
@___asan_gen_.1810 = private unnamed_addr constant [21 x i8] c".compoundliteral.517\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 753, i32 2 }
@___asan_gen_.1814 = private unnamed_addr constant [21 x i8] c".compoundliteral.519\00", align 1
@___asan_gen_.1817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 754, i32 2 }
@___asan_gen_.1818 = private unnamed_addr constant [21 x i8] c".compoundliteral.521\00", align 1
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 755, i32 2 }
@___asan_gen_.1822 = private unnamed_addr constant [21 x i8] c".compoundliteral.523\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 756, i32 2 }
@___asan_gen_.1826 = private unnamed_addr constant [21 x i8] c".compoundliteral.525\00", align 1
@___asan_gen_.1829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 757, i32 2 }
@___asan_gen_.1830 = private unnamed_addr constant [21 x i8] c".compoundliteral.527\00", align 1
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 758, i32 2 }
@___asan_gen_.1834 = private unnamed_addr constant [21 x i8] c".compoundliteral.529\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 759, i32 2 }
@___asan_gen_.1838 = private unnamed_addr constant [21 x i8] c".compoundliteral.531\00", align 1
@___asan_gen_.1841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 760, i32 2 }
@___asan_gen_.1842 = private unnamed_addr constant [21 x i8] c".compoundliteral.533\00", align 1
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 761, i32 2 }
@___asan_gen_.1846 = private unnamed_addr constant [21 x i8] c".compoundliteral.535\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 762, i32 2 }
@___asan_gen_.1850 = private unnamed_addr constant [21 x i8] c".compoundliteral.537\00", align 1
@___asan_gen_.1853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 763, i32 2 }
@___asan_gen_.1854 = private unnamed_addr constant [21 x i8] c".compoundliteral.539\00", align 1
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 764, i32 2 }
@___asan_gen_.1858 = private unnamed_addr constant [21 x i8] c".compoundliteral.541\00", align 1
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 765, i32 2 }
@___asan_gen_.1862 = private unnamed_addr constant [21 x i8] c".compoundliteral.543\00", align 1
@___asan_gen_.1865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 766, i32 2 }
@___asan_gen_.1866 = private unnamed_addr constant [21 x i8] c".compoundliteral.545\00", align 1
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 767, i32 2 }
@___asan_gen_.1870 = private unnamed_addr constant [21 x i8] c".compoundliteral.547\00", align 1
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 768, i32 2 }
@___asan_gen_.1874 = private unnamed_addr constant [21 x i8] c".compoundliteral.549\00", align 1
@___asan_gen_.1877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 769, i32 2 }
@___asan_gen_.1878 = private unnamed_addr constant [21 x i8] c".compoundliteral.551\00", align 1
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 770, i32 2 }
@___asan_gen_.1882 = private unnamed_addr constant [21 x i8] c".compoundliteral.553\00", align 1
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 772, i32 2 }
@___asan_gen_.1886 = private unnamed_addr constant [21 x i8] c".compoundliteral.555\00", align 1
@___asan_gen_.1889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 773, i32 2 }
@___asan_gen_.1890 = private unnamed_addr constant [21 x i8] c".compoundliteral.557\00", align 1
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 774, i32 2 }
@___asan_gen_.1894 = private unnamed_addr constant [21 x i8] c".compoundliteral.559\00", align 1
@___asan_gen_.1897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 775, i32 2 }
@___asan_gen_.1898 = private unnamed_addr constant [21 x i8] c".compoundliteral.561\00", align 1
@___asan_gen_.1901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 776, i32 2 }
@___asan_gen_.1902 = private unnamed_addr constant [21 x i8] c".compoundliteral.563\00", align 1
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 777, i32 2 }
@___asan_gen_.1906 = private unnamed_addr constant [21 x i8] c".compoundliteral.565\00", align 1
@___asan_gen_.1909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 778, i32 2 }
@___asan_gen_.1910 = private unnamed_addr constant [21 x i8] c".compoundliteral.567\00", align 1
@___asan_gen_.1913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 779, i32 2 }
@___asan_gen_.1914 = private unnamed_addr constant [21 x i8] c".compoundliteral.569\00", align 1
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 780, i32 2 }
@___asan_gen_.1918 = private unnamed_addr constant [21 x i8] c".compoundliteral.571\00", align 1
@___asan_gen_.1921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 781, i32 2 }
@___asan_gen_.1922 = private unnamed_addr constant [21 x i8] c".compoundliteral.573\00", align 1
@___asan_gen_.1925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 782, i32 2 }
@___asan_gen_.1926 = private unnamed_addr constant [21 x i8] c".compoundliteral.575\00", align 1
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 783, i32 2 }
@___asan_gen_.1930 = private unnamed_addr constant [21 x i8] c".compoundliteral.577\00", align 1
@___asan_gen_.1933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 784, i32 2 }
@___asan_gen_.1934 = private unnamed_addr constant [21 x i8] c".compoundliteral.579\00", align 1
@___asan_gen_.1937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 785, i32 2 }
@___asan_gen_.1938 = private unnamed_addr constant [21 x i8] c".compoundliteral.581\00", align 1
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 786, i32 2 }
@___asan_gen_.1942 = private unnamed_addr constant [21 x i8] c".compoundliteral.583\00", align 1
@___asan_gen_.1945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 787, i32 2 }
@___asan_gen_.1946 = private unnamed_addr constant [21 x i8] c".compoundliteral.585\00", align 1
@___asan_gen_.1949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 788, i32 2 }
@___asan_gen_.1950 = private unnamed_addr constant [21 x i8] c".compoundliteral.587\00", align 1
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 789, i32 2 }
@___asan_gen_.1954 = private unnamed_addr constant [21 x i8] c".compoundliteral.589\00", align 1
@___asan_gen_.1957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 790, i32 2 }
@___asan_gen_.1958 = private unnamed_addr constant [21 x i8] c".compoundliteral.591\00", align 1
@___asan_gen_.1961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 791, i32 2 }
@___asan_gen_.1962 = private unnamed_addr constant [21 x i8] c".compoundliteral.593\00", align 1
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 792, i32 2 }
@___asan_gen_.1966 = private unnamed_addr constant [21 x i8] c".compoundliteral.595\00", align 1
@___asan_gen_.1969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 793, i32 2 }
@___asan_gen_.1970 = private unnamed_addr constant [21 x i8] c".compoundliteral.597\00", align 1
@___asan_gen_.1973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 794, i32 2 }
@___asan_gen_.1974 = private unnamed_addr constant [21 x i8] c".compoundliteral.599\00", align 1
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 795, i32 2 }
@___asan_gen_.1978 = private unnamed_addr constant [21 x i8] c".compoundliteral.601\00", align 1
@___asan_gen_.1981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 796, i32 2 }
@___asan_gen_.1982 = private unnamed_addr constant [21 x i8] c".compoundliteral.603\00", align 1
@___asan_gen_.1985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 797, i32 2 }
@___asan_gen_.1986 = private unnamed_addr constant [21 x i8] c".compoundliteral.605\00", align 1
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 799, i32 2 }
@___asan_gen_.1990 = private unnamed_addr constant [21 x i8] c".compoundliteral.607\00", align 1
@___asan_gen_.1993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 800, i32 2 }
@___asan_gen_.1994 = private unnamed_addr constant [21 x i8] c".compoundliteral.609\00", align 1
@___asan_gen_.1997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 801, i32 2 }
@___asan_gen_.1998 = private unnamed_addr constant [21 x i8] c".compoundliteral.611\00", align 1
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 802, i32 2 }
@___asan_gen_.2002 = private unnamed_addr constant [21 x i8] c".compoundliteral.613\00", align 1
@___asan_gen_.2005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 803, i32 2 }
@___asan_gen_.2006 = private unnamed_addr constant [21 x i8] c".compoundliteral.615\00", align 1
@___asan_gen_.2009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 804, i32 2 }
@___asan_gen_.2010 = private unnamed_addr constant [21 x i8] c".compoundliteral.617\00", align 1
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 805, i32 2 }
@___asan_gen_.2014 = private unnamed_addr constant [21 x i8] c".compoundliteral.619\00", align 1
@___asan_gen_.2017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 806, i32 2 }
@___asan_gen_.2018 = private unnamed_addr constant [21 x i8] c".compoundliteral.621\00", align 1
@___asan_gen_.2021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 807, i32 2 }
@___asan_gen_.2022 = private unnamed_addr constant [21 x i8] c".compoundliteral.623\00", align 1
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 808, i32 2 }
@___asan_gen_.2026 = private unnamed_addr constant [21 x i8] c".compoundliteral.625\00", align 1
@___asan_gen_.2029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 809, i32 2 }
@___asan_gen_.2030 = private unnamed_addr constant [21 x i8] c".compoundliteral.627\00", align 1
@___asan_gen_.2033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 810, i32 2 }
@___asan_gen_.2034 = private unnamed_addr constant [21 x i8] c".compoundliteral.629\00", align 1
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 558, i32 26 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 562, i32 7 }
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 566, i32 26 }
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 569, i32 25 }
@___asan_gen_.2049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 864, i32 10 }
@___asan_gen_.2050 = private unnamed_addr constant [21 x i8] c"arm_cmn_format_attrs\00", align 1
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 844, i32 26 }
@___asan_gen_.2055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 845, i32 2 }
@___asan_gen_.2056 = private unnamed_addr constant [21 x i8] c".compoundliteral.636\00", align 1
@___asan_gen_.2059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 846, i32 2 }
@___asan_gen_.2060 = private unnamed_addr constant [21 x i8] c".compoundliteral.638\00", align 1
@___asan_gen_.2063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 847, i32 2 }
@___asan_gen_.2064 = private unnamed_addr constant [21 x i8] c".compoundliteral.640\00", align 1
@___asan_gen_.2067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 848, i32 2 }
@___asan_gen_.2068 = private unnamed_addr constant [21 x i8] c".compoundliteral.642\00", align 1
@___asan_gen_.2071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 849, i32 2 }
@___asan_gen_.2072 = private unnamed_addr constant [21 x i8] c".compoundliteral.644\00", align 1
@___asan_gen_.2075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 851, i32 2 }
@___asan_gen_.2076 = private unnamed_addr constant [21 x i8] c".compoundliteral.646\00", align 1
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 852, i32 2 }
@___asan_gen_.2080 = private unnamed_addr constant [21 x i8] c".compoundliteral.648\00", align 1
@___asan_gen_.2083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 853, i32 2 }
@___asan_gen_.2084 = private unnamed_addr constant [21 x i8] c".compoundliteral.650\00", align 1
@___asan_gen_.2087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 854, i32 2 }
@___asan_gen_.2088 = private unnamed_addr constant [21 x i8] c".compoundliteral.652\00", align 1
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 855, i32 2 }
@___asan_gen_.2092 = private unnamed_addr constant [21 x i8] c".compoundliteral.654\00", align 1
@___asan_gen_.2095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 857, i32 2 }
@___asan_gen_.2096 = private unnamed_addr constant [21 x i8] c".compoundliteral.656\00", align 1
@___asan_gen_.2099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 858, i32 2 }
@___asan_gen_.2100 = private unnamed_addr constant [21 x i8] c".compoundliteral.658\00", align 1
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 828, i32 26 }
@___asan_gen_.2106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 831, i32 26 }
@___asan_gen_.2109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 833, i32 25 }
@___asan_gen_.2110 = private unnamed_addr constant [22 x i8] c"arm_cmn_cpumask_attrs\00", align 1
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 879, i32 26 }
@___asan_gen_.2113 = private unnamed_addr constant [21 x i8] c"arm_cmn_cpumask_attr\00", align 1
@___asan_gen_.2115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 876, i32 32 }
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 877, i32 3 }
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1254, i32 3 }
@___asan_gen_.2127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 477, i32 22 }
@___asan_gen_.2130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 480, i32 47 }
@___asan_gen_.2131 = private unnamed_addr constant [17 x i8] c"arm_cmn_map_fops\00", align 1
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 473, i32 1 }
@___asan_gen_.2136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 416, i32 14 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 418, i32 17 }
@___asan_gen_.2142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 419, i32 14 }
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 426, i32 16 }
@___asan_gen_.2148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 428, i32 17 }
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 439, i32 18 }
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 442, i32 15 }
@___asan_gen_.2157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 447, i32 17 }
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 449, i32 19 }
@___asan_gen_.2163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 453, i32 16 }
@___asan_gen_.2166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 456, i32 18 }
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 459, i32 16 }
@___asan_gen_.2172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 462, i32 16 }
@___asan_gen_.2175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 466, i32 15 }
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 470, i32 14 }
@___asan_gen_.2181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 362, i32 21 }
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 363, i32 21 }
@___asan_gen_.2187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 364, i32 21 }
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 365, i32 21 }
@___asan_gen_.2193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 366, i32 21 }
@___asan_gen_.2196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 367, i32 21 }
@___asan_gen_.2199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 368, i32 21 }
@___asan_gen_.2202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 369, i32 21 }
@___asan_gen_.2205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 370, i32 21 }
@___asan_gen_.2208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 371, i32 21 }
@___asan_gen_.2211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 372, i32 21 }
@___asan_gen_.2214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 373, i32 21 }
@___asan_gen_.2217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 374, i32 21 }
@___asan_gen_.2220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 375, i32 21 }
@___asan_gen_.2223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 376, i32 21 }
@___asan_gen_.2226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 377, i32 21 }
@___asan_gen_.2229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 378, i32 21 }
@___asan_gen_.2232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 379, i32 21 }
@___asan_gen_.2235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 380, i32 21 }
@___asan_gen_.2238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 381, i32 21 }
@___asan_gen_.2241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 382, i32 21 }
@___asan_gen_.2244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 383, i32 21 }
@___asan_gen_.2247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 384, i32 21 }
@___asan_gen_.2250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 405, i32 17 }
@___asan_gen_.2251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2252 = private constant [26 x i8] c"../drivers/perf/arm-cmn.c\00", align 1
@___asan_gen_.2253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2252, i32 1993, i32 11 }
@___asan_gen_.2254 = private unnamed_addr constant [30 x i8] c"switch.table.arm_cmn_map_show\00", align 1
@llvm.compiler.used = appending global [732 x ptr] [ptr @__UNIQUE_ID_author509, ptr @__UNIQUE_ID_description510, ptr @__UNIQUE_ID_file511, ptr @__UNIQUE_ID_license512, ptr @__exitcall_arm_cmn_exit, ptr @__initcall__kmod_arm_cmn__508_2017_arm_cmn_init6, ptr @arm_cmn_discover._entry, ptr @arm_cmn_discover._entry.10, ptr @arm_cmn_discover._entry_ptr, ptr @arm_cmn_discover._entry_ptr.13, ptr @arm_cmn_exit, ptr @arm_cmn_driver, ptr @arm_cmn_hp_state, ptr @arm_cmn_debugfs, ptr @.str, ptr @arm_cmn_of_match, ptr @arm_cmn_probe.id, ptr @arm_cmn_attr_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @arm_cmn_event_attrs_group, ptr @arm_cmn_format_attrs_group, ptr @arm_cmn_cpumask_attr_group, ptr @.str.20, ptr @arm_cmn_event_attrs, ptr @.str.21, ptr @.compoundliteral, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.str.272, ptr @.compoundliteral.273, ptr @.str.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @.compoundliteral.283, ptr @.str.284, ptr @.compoundliteral.285, ptr @.str.286, ptr @.compoundliteral.287, ptr @.str.288, ptr @.compoundliteral.289, ptr @.str.290, ptr @.compoundliteral.291, ptr @.str.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.str.296, ptr @.compoundliteral.297, ptr @.str.298, ptr @.compoundliteral.299, ptr @.str.300, ptr @.compoundliteral.301, ptr @.str.302, ptr @.compoundliteral.303, ptr @.str.304, ptr @.compoundliteral.305, ptr @.str.306, ptr @.compoundliteral.307, ptr @.str.308, ptr @.compoundliteral.309, ptr @.str.310, ptr @.compoundliteral.311, ptr @.str.312, ptr @.compoundliteral.313, ptr @.str.314, ptr @.compoundliteral.315, ptr @.str.316, ptr @.compoundliteral.317, ptr @.str.318, ptr @.compoundliteral.319, ptr @.str.320, ptr @.compoundliteral.321, ptr @.str.322, ptr @.compoundliteral.323, ptr @.str.324, ptr @.compoundliteral.325, ptr @.str.326, ptr @.compoundliteral.327, ptr @.str.328, ptr @.compoundliteral.329, ptr @.str.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @.compoundliteral.333, ptr @.str.334, ptr @.compoundliteral.335, ptr @.str.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.str.340, ptr @.compoundliteral.341, ptr @.str.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @.compoundliteral.345, ptr @.str.346, ptr @.compoundliteral.347, ptr @.str.348, ptr @.compoundliteral.349, ptr @.str.350, ptr @.compoundliteral.351, ptr @.str.352, ptr @.compoundliteral.353, ptr @.str.354, ptr @.compoundliteral.355, ptr @.str.356, ptr @.compoundliteral.357, ptr @.str.358, ptr @.compoundliteral.359, ptr @.str.360, ptr @.compoundliteral.361, ptr @.str.362, ptr @.compoundliteral.363, ptr @.str.364, ptr @.compoundliteral.365, ptr @.str.366, ptr @.compoundliteral.367, ptr @.str.368, ptr @.compoundliteral.369, ptr @.str.370, ptr @.compoundliteral.371, ptr @.str.372, ptr @.compoundliteral.373, ptr @.str.374, ptr @.compoundliteral.375, ptr @.str.376, ptr @.compoundliteral.377, ptr @.str.378, ptr @.compoundliteral.379, ptr @.str.380, ptr @.compoundliteral.381, ptr @.str.382, ptr @.compoundliteral.383, ptr @.str.384, ptr @.compoundliteral.385, ptr @.str.386, ptr @.compoundliteral.387, ptr @.str.388, ptr @.compoundliteral.389, ptr @.str.390, ptr @.compoundliteral.391, ptr @.str.392, ptr @.compoundliteral.393, ptr @.str.394, ptr @.compoundliteral.395, ptr @.str.396, ptr @.compoundliteral.397, ptr @.str.398, ptr @.compoundliteral.399, ptr @.str.400, ptr @.compoundliteral.401, ptr @.str.402, ptr @.compoundliteral.403, ptr @.str.404, ptr @.compoundliteral.405, ptr @.str.406, ptr @.compoundliteral.407, ptr @.str.408, ptr @.compoundliteral.409, ptr @.str.410, ptr @.compoundliteral.411, ptr @.str.412, ptr @.compoundliteral.413, ptr @.str.414, ptr @.compoundliteral.415, ptr @.str.416, ptr @.compoundliteral.417, ptr @.str.418, ptr @.compoundliteral.419, ptr @.str.420, ptr @.compoundliteral.421, ptr @.str.422, ptr @.compoundliteral.423, ptr @.str.424, ptr @.compoundliteral.425, ptr @.str.426, ptr @.compoundliteral.427, ptr @.str.428, ptr @.compoundliteral.429, ptr @.str.430, ptr @.compoundliteral.431, ptr @.str.432, ptr @.compoundliteral.433, ptr @.str.434, ptr @.compoundliteral.435, ptr @.str.436, ptr @.compoundliteral.437, ptr @.str.438, ptr @.compoundliteral.439, ptr @.str.440, ptr @.compoundliteral.441, ptr @.str.442, ptr @.compoundliteral.443, ptr @.str.444, ptr @.compoundliteral.445, ptr @.str.446, ptr @.compoundliteral.447, ptr @.str.448, ptr @.compoundliteral.449, ptr @.str.450, ptr @.compoundliteral.451, ptr @.str.452, ptr @.compoundliteral.453, ptr @.str.454, ptr @.compoundliteral.455, ptr @.str.456, ptr @.compoundliteral.457, ptr @.str.458, ptr @.compoundliteral.459, ptr @.str.460, ptr @.compoundliteral.461, ptr @.str.462, ptr @.compoundliteral.463, ptr @.str.464, ptr @.compoundliteral.465, ptr @.str.466, ptr @.compoundliteral.467, ptr @.str.468, ptr @.compoundliteral.469, ptr @.str.470, ptr @.compoundliteral.471, ptr @.str.472, ptr @.compoundliteral.473, ptr @.str.474, ptr @.compoundliteral.475, ptr @.str.476, ptr @.compoundliteral.477, ptr @.str.478, ptr @.compoundliteral.479, ptr @.str.480, ptr @.compoundliteral.481, ptr @.str.482, ptr @.compoundliteral.483, ptr @.str.484, ptr @.compoundliteral.485, ptr @.str.486, ptr @.compoundliteral.487, ptr @.str.488, ptr @.compoundliteral.489, ptr @.str.490, ptr @.compoundliteral.491, ptr @.str.492, ptr @.compoundliteral.493, ptr @.str.494, ptr @.compoundliteral.495, ptr @.str.496, ptr @.compoundliteral.497, ptr @.str.498, ptr @.compoundliteral.499, ptr @.str.500, ptr @.compoundliteral.501, ptr @.str.502, ptr @.compoundliteral.503, ptr @.str.504, ptr @.compoundliteral.505, ptr @.str.506, ptr @.compoundliteral.507, ptr @.str.508, ptr @.compoundliteral.509, ptr @.str.510, ptr @.compoundliteral.511, ptr @.str.512, ptr @.compoundliteral.513, ptr @.str.514, ptr @.compoundliteral.515, ptr @.str.516, ptr @.compoundliteral.517, ptr @.str.518, ptr @.compoundliteral.519, ptr @.str.520, ptr @.compoundliteral.521, ptr @.str.522, ptr @.compoundliteral.523, ptr @.str.524, ptr @.compoundliteral.525, ptr @.str.526, ptr @.compoundliteral.527, ptr @.str.528, ptr @.compoundliteral.529, ptr @.str.530, ptr @.compoundliteral.531, ptr @.str.532, ptr @.compoundliteral.533, ptr @.str.534, ptr @.compoundliteral.535, ptr @.str.536, ptr @.compoundliteral.537, ptr @.str.538, ptr @.compoundliteral.539, ptr @.str.540, ptr @.compoundliteral.541, ptr @.str.542, ptr @.compoundliteral.543, ptr @.str.544, ptr @.compoundliteral.545, ptr @.str.546, ptr @.compoundliteral.547, ptr @.str.548, ptr @.compoundliteral.549, ptr @.str.550, ptr @.compoundliteral.551, ptr @.str.552, ptr @.compoundliteral.553, ptr @.str.554, ptr @.compoundliteral.555, ptr @.str.556, ptr @.compoundliteral.557, ptr @.str.558, ptr @.compoundliteral.559, ptr @.str.560, ptr @.compoundliteral.561, ptr @.str.562, ptr @.compoundliteral.563, ptr @.str.564, ptr @.compoundliteral.565, ptr @.str.566, ptr @.compoundliteral.567, ptr @.str.568, ptr @.compoundliteral.569, ptr @.str.570, ptr @.compoundliteral.571, ptr @.str.572, ptr @.compoundliteral.573, ptr @.str.574, ptr @.compoundliteral.575, ptr @.str.576, ptr @.compoundliteral.577, ptr @.str.578, ptr @.compoundliteral.579, ptr @.str.580, ptr @.compoundliteral.581, ptr @.str.582, ptr @.compoundliteral.583, ptr @.str.584, ptr @.compoundliteral.585, ptr @.str.586, ptr @.compoundliteral.587, ptr @.str.588, ptr @.compoundliteral.589, ptr @.str.590, ptr @.compoundliteral.591, ptr @.str.592, ptr @.compoundliteral.593, ptr @.str.594, ptr @.compoundliteral.595, ptr @.str.596, ptr @.compoundliteral.597, ptr @.str.598, ptr @.compoundliteral.599, ptr @.str.600, ptr @.compoundliteral.601, ptr @.str.602, ptr @.compoundliteral.603, ptr @.str.604, ptr @.compoundliteral.605, ptr @.str.606, ptr @.compoundliteral.607, ptr @.str.608, ptr @.compoundliteral.609, ptr @.str.610, ptr @.compoundliteral.611, ptr @.str.612, ptr @.compoundliteral.613, ptr @.str.614, ptr @.compoundliteral.615, ptr @.str.616, ptr @.compoundliteral.617, ptr @.str.618, ptr @.compoundliteral.619, ptr @.str.620, ptr @.compoundliteral.621, ptr @.str.622, ptr @.compoundliteral.623, ptr @.str.624, ptr @.compoundliteral.625, ptr @.str.626, ptr @.compoundliteral.627, ptr @.str.628, ptr @.compoundliteral.629, ptr @.str.630, ptr @.str.631, ptr @.str.632, ptr @.str.633, ptr @.str.634, ptr @arm_cmn_format_attrs, ptr @.str.635, ptr @.compoundliteral.636, ptr @.str.637, ptr @.compoundliteral.638, ptr @.str.639, ptr @.compoundliteral.640, ptr @.str.641, ptr @.compoundliteral.642, ptr @.str.643, ptr @.compoundliteral.644, ptr @.str.645, ptr @.compoundliteral.646, ptr @.str.647, ptr @.compoundliteral.648, ptr @.str.649, ptr @.compoundliteral.650, ptr @.str.651, ptr @.compoundliteral.652, ptr @.str.653, ptr @.compoundliteral.654, ptr @.str.655, ptr @.compoundliteral.656, ptr @.str.657, ptr @.compoundliteral.658, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @arm_cmn_cpumask_attrs, ptr @arm_cmn_cpumask_attr, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.665, ptr @.str.666, ptr @arm_cmn_map_fops, ptr @.str.667, ptr @.str.668, ptr @.str.669, ptr @.str.670, ptr @.str.671, ptr @.str.672, ptr @.str.673, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @.str.679, ptr @.str.680, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.699, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.703, ptr @.str.704, ptr @.str.705, ptr @.str.706, ptr @switch.table.arm_cmn_map_show], section "llvm.metadata"
@0 = internal global [723 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_hp_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_probe.id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_attr_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_discover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_discover._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_event_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_format_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_cpumask_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_event_attrs to i32), i32 1224, i32 1536, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.309 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.359 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.401 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.403 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.407 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.409 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.411 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.413 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.415 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.417 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.419 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.421 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.423 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.425 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.427 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.429 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.431 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.433 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.435 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.437 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.439 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.441 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.443 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.445 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.447 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.449 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.451 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.453 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.455 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.457 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.459 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.461 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.463 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.465 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.467 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.469 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.471 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.473 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.475 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.477 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.479 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.481 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.483 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.485 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.487 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.489 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.491 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.493 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.495 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.497 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.499 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.501 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1778 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.503 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.505 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.507 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.509 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.511 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.513 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.515 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.517 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.519 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.521 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.523 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.525 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.527 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.529 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.531 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.533 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.535 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.537 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.539 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.541 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.543 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.545 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.547 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.549 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.551 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.553 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.554 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.555 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.556 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.557 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.559 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.561 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.563 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.565 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.567 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.568 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.569 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.570 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.571 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1918 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.573 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.575 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.576 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.577 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1930 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.579 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1934 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.580 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.581 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.582 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.583 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1942 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.585 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.586 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.587 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.588 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.589 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1954 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.590 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.591 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1958 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.592 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.593 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.594 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.595 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1966 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.597 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.598 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.599 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.600 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.601 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.602 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.603 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.605 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.607 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.608 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.609 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1994 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.610 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.611 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.612 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.613 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.614 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.615 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2006 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.616 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.617 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.618 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.619 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2014 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.620 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.621 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.622 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.623 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.624 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.625 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2026 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.626 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.627 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2030 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.628 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.629 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.630 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.631 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.632 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.633 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.634 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_format_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2050 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.635 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.636 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2056 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.637 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.638 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2060 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.639 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.640 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.641 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.642 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2068 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.643 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.644 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.645 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.646 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.647 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.648 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2080 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.649 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.650 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2084 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.651 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.652 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.653 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.654 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2092 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.655 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.656 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.657 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.658 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.659 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.660 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.661 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.662 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.663 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.664 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.665 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.666 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cmn_map_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.667 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.668 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.669 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.670 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.671 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.672 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.673 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.674 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.675 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.676 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.677 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.678 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.679 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.680 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.681 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.682 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.683 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.684 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.685 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.686 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.687 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.688 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.689 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.690 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.691 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.692 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.693 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.694 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.695 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.696 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.697 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.698 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.699 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.700 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.701 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.702 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.703 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.704 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.705 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.706 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2251 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arm_cmn_map_show to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.2254 to i32), i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @arm_cmn_driver) #14
  %0 = load i32, ptr @arm_cmn_hp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #14
  %1 = load ptr, ptr @arm_cmn_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.706, i1 noundef zeroext false, ptr noundef nonnull @arm_cmn_pmu_online_cpu, ptr noundef nonnull @arm_cmn_pmu_offline_cpu, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 %call.i, ptr @arm_cmn_hp_state, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #14
  store ptr %call1, ptr @arm_cmn_debugfs, align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @arm_cmn_driver, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load i32, ptr @arm_cmn_hp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext false) #14
  %1 = load ptr, ptr @arm_cmn_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rootnode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #14
  %1 = ptrtoint ptr %call4 to i32
  %model = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %model, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %base = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp18 = icmp eq i32 %7, 1
  br i1 %cmp18, label %if.then19, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rootnode.i) #14
  %10 = ptrtoint ptr %rootnode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rootnode.i, align 4, !annotation !660
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %rootnode.i, i32 noundef 1, i32 noundef 0) #14
  %11 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %cond.false.i, label %if.then19.if.end23_crit_edge

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

cond.false.i:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %rootnode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rootnode.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %cond.false.i, %if.then19.if.end23_crit_edge
  %cond.i = phi i32 [ %13, %cond.false.i ], [ %11, %if.then19.if.end23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rootnode.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp24 = icmp slt i32 %cond.i, 0
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %rootnode.0124 = phi i32 [ %cond.i, %if.end23.if.end26_crit_edge ], [ 0, %if.end16.if.end26_crit_edge ]
  %call27 = call fastcc i32 @arm_cmn_discover(ptr noundef nonnull %call.i, i32 noundef %rootnode.0124)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %num_dtcs.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %num_dtcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_dtcs.i, align 4
  %notmask.i = shl nsw i32 -1, %15
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 52) #14
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !661

devm_kcalloc.exit.thread.i:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %dtc87.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %dtc87.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dtc87.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end30
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = extractvalue { i32, i1 } %16, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %21, i32 noundef 3520) #14
  %dtc.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %dtc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %dtc.i, align 4
  %tobool.not.i107 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i107, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %dns.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %dns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dns.i, align 4
  %num_dns.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %num_dns.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_dns.i, align 4
  %conv3.i = zext i16 %26 to i32
  call void @sort(ptr noundef %24, i32 noundef %conv3.i, i32 noundef 24, ptr noundef nonnull @arm_cmn_node_cmp, ptr noundef null) #14
  %27 = ptrtoint ptr %dns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dns.i, align 4
  %type16.i.i = getelementptr inbounds %struct.arm_cmn_node, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not7.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not7.i.i, label %if.end.i.arm_cmn_node.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.arm_cmn_node.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %31 = phi i32 [ %33, %for.inc.i.i.for.body.i.i_crit_edge ], [ %30, %if.end.i.for.body.i.i_crit_edge ]
  %dn.08.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %28, %if.end.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 6
  br i1 %cmp.i.i, label %for.body.i.i.arm_cmn_node.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.arm_cmn_node.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i.i, i32 1
  %type1.i.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i.i, i32 1, i32 3
  %32 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type1.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.arm_cmn_node.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.arm_cmn_node.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node.exit.i

arm_cmn_node.exit.i:                              ; preds = %for.inc.i.i.arm_cmn_node.exit.i_crit_edge, %for.body.i.i.arm_cmn_node.exit.i_crit_edge, %if.end.i.arm_cmn_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end.i.arm_cmn_node.exit.i_crit_edge ], [ null, %for.inc.i.i.arm_cmn_node.exit.i_crit_edge ], [ %dn.08.i.i, %for.body.i.i.arm_cmn_node.exit.i_crit_edge ]
  %xps.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 12
  %34 = ptrtoint ptr %xps.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i.i, ptr %xps.i, align 4
  %35 = trunc i32 %notmask.i to i8
  %36 = xor i8 %35, -1
  %num_xps.i.i.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 7
  %mesh_x.i.i.i.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 5
  %mesh_y.i.i.i.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 6
  %multi_dtm.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 9
  %ports_used.i.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %arm_cmn_node.exit.i
  %dtc_idx.0.i = phi i32 [ 0, %arm_cmn_node.exit.i ], [ %dtc_idx.2.i, %for.inc.i ]
  %dn.0.i = phi ptr [ %28, %arm_cmn_node.exit.i ], [ %incdec.ptr.i, %for.inc.i ]
  %type.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0.i, i32 0, i32 3
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end13.i [
    i32 0, label %if.end34
    i32 6, label %if.then9.i
  ]

if.then9.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0.i, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv12.i = and i8 %42, %36
  store i8 %conv12.i, ptr %40, align 4
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.cond.i
  %43 = ptrtoint ptr %num_xps.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_xps.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp.i.i.i = icmp eq i16 %44, 1
  br i1 %cmp.i.i.i, label %if.end13.i.arm_cmn_node_to_xp.exit.i_crit_edge, label %if.else.i.i.i

if.end13.i.arm_cmn_node_to_xp.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node_to_xp.exit.i

if.else.i.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %id.i.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %id.i.i, align 4
  %47 = ptrtoint ptr %mesh_x.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mesh_x.i.i.i.i, align 4
  %49 = ptrtoint ptr %mesh_y.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mesh_y.i.i.i.i, align 1
  %51 = call i8 @llvm.umax.i8(i8 %48, i8 %50) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp5.i.i.i.i = icmp ugt i8 %51, 4
  %cond7.i.i.i.i = select i1 %cmp5.i.i.i.i, i32 3, i32 2
  %conv7.i.i.i = zext i16 %46 to i32
  %add.i.i.i = add nuw nsw i32 %cond7.i.i.i.i, 3
  %shr8.i.i.i = lshr i32 %conv7.i.i.i, %add.i.i.i
  %52 = lshr i32 %conv7.i.i.i, 3
  %notmask.i.i.i = shl nsw i32 -1, %cond7.i.i.i.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and13.i.i.i = and i32 %52, %sub.i.i.i
  %phi.cast.i.i.i = shl nuw nsw i32 %and13.i.i.i, 16
  %phi.bo50.i.i.i = shl i32 %shr8.i.i.i, 24
  %53 = or i32 %phi.cast.i.i.i, %phi.bo50.i.i.i
  br label %arm_cmn_node_to_xp.exit.i

arm_cmn_node_to_xp.exit.i:                        ; preds = %if.else.i.i.i, %if.end13.i.arm_cmn_node_to_xp.exit.i_crit_edge
  %retval.sroa.7.0.insert.insert.i.i.i = phi i32 [ %53, %if.else.i.i.i ], [ 0, %if.end13.i.arm_cmn_node_to_xp.exit.i_crit_edge ]
  %nid.sroa.0.0.extract.shift.i.i = lshr i32 %retval.sroa.7.0.insert.insert.i.i.i, 24
  %nid.sroa.5.0.extract.shift.i.i = lshr i32 %retval.sroa.7.0.insert.insert.i.i.i, 16
  %54 = ptrtoint ptr %mesh_x.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mesh_x.i.i.i.i, align 4
  %conv.i.i = zext i8 %55 to i32
  %conv1.i.i = and i32 %nid.sroa.5.0.extract.shift.i.i, 255
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, %conv.i.i
  %add.i.i = add nuw nsw i32 %mul.i.i, %nid.sroa.0.0.extract.shift.i.i
  %56 = ptrtoint ptr %xps.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xps.i, align 4
  %dtm.i = getelementptr %struct.arm_cmn_node, ptr %57, i32 %add.i.i, i32 4
  %58 = ptrtoint ptr %dtm.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dtm.i, align 4
  %dtm15.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0.i, i32 0, i32 4
  %60 = ptrtoint ptr %dtm15.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dtm15.i, align 4
  %61 = ptrtoint ptr %multi_dtm.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %multi_dtm.i, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool16.not.i = icmp eq i8 %62, 0
  br i1 %tobool16.not.i, label %arm_cmn_node_to_xp.exit.i.if.end21.i_crit_edge, label %if.then17.i

arm_cmn_node_to_xp.exit.i.if.end21.i_crit_edge:   ; preds = %arm_cmn_node_to_xp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then17.i:                                      ; preds = %arm_cmn_node_to_xp.exit.i
  %id.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %id.i, align 4
  %65 = ptrtoint ptr %num_xps.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_xps.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %66)
  %cmp.i79.i = icmp eq i16 %66, 1
  br i1 %cmp.i79.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = lshr i16 %64, 3
  %68 = and i16 %67, 3
  br label %arm_cmn_nid.exit.i

if.else.i.i:                                      ; preds = %if.then17.i
  %69 = ptrtoint ptr %ports_used.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ports_used.i.i, align 1
  %71 = and i8 %70, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i81.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i81.i, label %if.else.i.i.arm_cmn_nid.exit.i_crit_edge, label %if.then18.i.i

if.else.i.i.arm_cmn_nid.exit.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_nid.exit.i

if.then18.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = lshr i16 %64, 2
  %73 = and i16 %72, 1
  br label %arm_cmn_nid.exit.i

arm_cmn_nid.exit.i:                               ; preds = %if.then18.i.i, %if.else.i.i.arm_cmn_nid.exit.i_crit_edge, %if.then.i.i
  %retval.sroa.7.1.i.shrunk.i = phi i16 [ %68, %if.then.i.i ], [ %73, %if.then18.i.i ], [ 0, %if.else.i.i.arm_cmn_nid.exit.i_crit_edge ]
  %74 = zext i16 %retval.sroa.7.1.i.shrunk.i to i32
  %add.i = add i32 %59, %74
  %75 = ptrtoint ptr %dtm15.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i, ptr %dtm15.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %arm_cmn_nid.exit.i, %arm_cmn_node_to_xp.exit.i.if.end21.i_crit_edge
  %76 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp23.i = icmp eq i32 %77, 3
  br i1 %cmp23.i, label %if.then25.i, label %if.end21.i.if.end37.i_crit_edge

if.end21.i.if.end37.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then25.i:                                      ; preds = %if.end21.i
  %78 = getelementptr %struct.arm_cmn_node, ptr %57, i32 %add.i.i, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %80)
  %cmp27.i = icmp eq i8 %80, 15
  br i1 %cmp27.i, label %if.then29.i, label %if.then25.i.if.end32.i_crit_edge

if.then25.i.if.end32.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl30.i = shl nuw i32 1, %dtc_idx.0.i
  %conv31.i = trunc i32 %shl30.i to i8
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv31.i, ptr %78, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then25.i.if.end32.i_crit_edge
  %82 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dtc.i, align 4
  %add.ptr.i82.i = getelementptr %struct.arm_cmn_dtc, ptr %83, i32 %dtc_idx.0.i
  %84 = ptrtoint ptr %dn.0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dn.0.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %85, i32 -8192
  %86 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr2.i.i, ptr %add.ptr.i82.i, align 4
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %88, i32 -16
  %call.i.i108 = call i32 @platform_get_irq(ptr noundef %add.ptr3.i.i, i32 noundef %dtc_idx.0.i) #14
  %irq.i.i = getelementptr %struct.arm_cmn_dtc, ptr %83, i32 %dtc_idx.0.i, i32 1
  %89 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i.i108, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp.i83.i = icmp slt i32 %call.i.i108, 0
  br i1 %cmp.i83.i, label %if.end32.i.cleanup_crit_edge, label %arm_cmn_init_dtc.exit.thread.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

arm_cmn_init_dtc.exit.thread.i:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %dtc_idx.0.i, 1
  %90 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i82.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %91, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 0) #14, !srcloc !663
  %92 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i82.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %93, i32 8480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 -16711680) #14, !srcloc !663
  %94 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i82.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %95, i32 8448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 1073741824) #14, !srcloc !663
  %96 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr.i = load i32, ptr %type.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %arm_cmn_init_dtc.exit.thread.i, %if.end21.i.if.end37.i_crit_edge
  %97 = phi i32 [ %.pr.i, %arm_cmn_init_dtc.exit.thread.i ], [ %77, %if.end21.i.if.end37.i_crit_edge ]
  %dtc_idx.1.i = phi i32 [ %inc.i, %arm_cmn_init_dtc.exit.thread.i ], [ %dtc_idx.0.i, %if.end21.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %97)
  %cmp39.i = icmp eq i32 %97, 13
  br i1 %cmp39.i, label %if.then41.i, label %if.end37.i.for.inc.i_crit_edge

if.end37.i.for.inc.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 10, ptr %type.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then41.i, %if.end37.i.for.inc.i_crit_edge, %if.then9.i
  %dtc_idx.2.i = phi i32 [ %dtc_idx.0.i, %if.then9.i ], [ %dtc_idx.1.i, %if.then41.i ], [ %dtc_idx.1.i, %if.end37.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.arm_cmn_node, ptr %dn.0.i, i32 1
  br label %for.cond.i

if.end34:                                         ; preds = %for.cond.i
  %99 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dtc.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %add.ptr.i = getelementptr i8, ptr %102, i32 2560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #14, !srcloc !663
  %cpu.i = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 17
  %103 = ptrtoint ptr %num_dtcs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_dtcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp47.not.i = icmp eq i32 %104, 0
  br i1 %cmp47.not.i, label %if.end34.if.end38_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

for.body.i:                                       ; preds = %for.inc.i119.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i117, %for.inc.i119.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %105 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dtc.i, align 4
  %irq1.i = getelementptr %struct.arm_cmn_dtc, ptr %106, i32 %i.048.i, i32 1
  %107 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq1.i, align 4
  br label %for.cond2.i

for.cond2.i:                                      ; preds = %for.body3.i.for.cond2.i_crit_edge, %for.body.i
  %j.0.i = phi i32 [ %i.048.i, %for.body.i ], [ %dec.i, %for.body3.i.for.cond2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.i)
  %tobool.not.i111 = icmp eq i32 %j.0.i, 0
  br i1 %tobool.not.i111, label %for.end.i113, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond2.i
  %dec.i = add i32 %j.0.i, -1
  %irq6.i = getelementptr %struct.arm_cmn_dtc, ptr %106, i32 %dec.i, i32 1
  %109 = ptrtoint ptr %irq6.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq6.i, align 4
  %cmp7.i = icmp eq i32 %110, %108
  br i1 %cmp7.i, label %if.then.i, label %for.body3.i.for.cond2.i_crit_edge

for.body3.i.for.cond2.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.i

if.then.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i32 %i.048.i, %dec.i
  %irq_friend.i = getelementptr %struct.arm_cmn_dtc, ptr %106, i32 %dec.i, i32 2
  %111 = ptrtoint ptr %irq_friend.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub.i, ptr %irq_friend.i, align 4
  br label %for.inc.i119

for.end.i113:                                     ; preds = %for.cond2.i
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i112 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i112, label %if.end.i.i, label %for.end.i113.dev_name.exit.i_crit_edge

for.end.i113.dev_name.exit.i_crit_edge:           ; preds = %for.end.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.end.i113
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.end.i113.dev_name.exit.i_crit_edge
  %retval.0.i.i114 = phi ptr [ %117, %if.end.i.i ], [ %115, %for.end.i113.dev_name.exit.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.arm_cmn_dtc, ptr %106, i32 %i.048.i
  %call.i.i115 = call i32 @devm_request_threaded_irq(ptr noundef %113, i32 noundef %108, ptr noundef nonnull @arm_cmn_handle_irq, ptr noundef null, i32 noundef 67584, ptr noundef %retval.0.i.i114, ptr noundef %arrayidx12.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool14.not.i = icmp eq i32 %call.i.i115, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %dev_name.exit.i.cleanup_crit_edge

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16.i:                                       ; preds = %dev_name.exit.i
  %118 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu.i, align 4
  %rem.i.i = and i32 %119, 31
  %add.i.i116 = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i116
  %div3.i.i = lshr i32 %119, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call18.i = call i32 @irq_set_affinity(i32 noundef %108, ptr noundef %add.ptr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.for.inc.i119_crit_edge, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16.i.for.inc.i119_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i119

for.inc.i119:                                     ; preds = %if.end16.i.for.inc.i119_crit_edge, %if.then.i
  %inc.i117 = add nuw i32 %i.048.i, 1
  %120 = ptrtoint ptr %num_dtcs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_dtcs.i, align 4
  %cmp.i118 = icmp ult i32 %inc.i117, %121
  br i1 %cmp.i118, label %for.inc.i119.for.body.i_crit_edge, label %for.inc.i119.if.end38_crit_edge

for.inc.i119.if.end38_crit_edge:                  ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

for.inc.i119.for.body.i_crit_edge:                ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end38:                                         ; preds = %for.inc.i119.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %call41 = call i32 @cpumask_local_spread(i32 noundef 0, i32 noundef -1) #14
  %122 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call41, ptr %cpu.i, align 4
  %pmu = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19
  %.compoundliteral.sroa.4.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 3
  %123 = call ptr @memset(ptr %pmu, i32 0, i32 16)
  %124 = ptrtoint ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @arm_cmn_attr_groups, ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 4
  %125 = ptrtoint ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 5
  %126 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 6
  %127 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 7
  %128 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 128, ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 8
  %129 = ptrtoint ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 9
  %130 = ptrtoint ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %.compoundliteral.sroa.10.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.11.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 10
  %131 = ptrtoint ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %.compoundliteral.sroa.11.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.12.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 11
  %132 = ptrtoint ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %.compoundliteral.sroa.12.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.13.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 12
  %133 = ptrtoint ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %.compoundliteral.sroa.13.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.14.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 13
  %134 = ptrtoint ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %.compoundliteral.sroa.14.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.15.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 14
  %135 = ptrtoint ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @arm_cmn_pmu_enable, ptr %.compoundliteral.sroa.15.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 15
  %136 = ptrtoint ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @arm_cmn_pmu_disable, ptr %.compoundliteral.sroa.16.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.17.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 16
  %137 = ptrtoint ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @arm_cmn_event_init, ptr %.compoundliteral.sroa.17.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.18.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 17
  %138 = ptrtoint ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %.compoundliteral.sroa.18.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.19.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 18
  %139 = ptrtoint ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %.compoundliteral.sroa.19.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 19
  %140 = ptrtoint ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @arm_cmn_event_add, ptr %.compoundliteral.sroa.20.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.21.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 20
  %141 = ptrtoint ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @arm_cmn_event_del, ptr %.compoundliteral.sroa.21.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.22.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 21
  %142 = ptrtoint ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @arm_cmn_event_start, ptr %.compoundliteral.sroa.22.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.23.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 22
  %143 = ptrtoint ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @arm_cmn_event_stop, ptr %.compoundliteral.sroa.23.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.24.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 23
  %144 = ptrtoint ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @arm_cmn_event_read, ptr %.compoundliteral.sroa.24.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.25.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 24
  %145 = ptrtoint ptr %.compoundliteral.sroa.25.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @arm_cmn_start_txn, ptr %.compoundliteral.sroa.25.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.26.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 25
  %146 = ptrtoint ptr %.compoundliteral.sroa.26.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @arm_cmn_commit_txn, ptr %.compoundliteral.sroa.26.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.27.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 26
  %147 = ptrtoint ptr %.compoundliteral.sroa.27.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @arm_cmn_end_txn, ptr %.compoundliteral.sroa.27.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.28.0.pmu.sroa_idx = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 19, i32 27
  %148 = call ptr @memset(ptr %.compoundliteral.sroa.28.0.pmu.sroa_idx, i32 0, i32 48)
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @arm_cmn_probe.id, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !664
  call void @llvm.prefetch.p0(ptr nonnull @arm_cmn_probe.id, i32 1, i32 3, i32 1) #14
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @arm_cmn_probe.id, ptr nonnull @arm_cmn_probe.id, i32 1, ptr nonnull elementtype(i32) @arm_cmn_probe.id) #14, !srcloc !665
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !666
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 4
  %call47 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %151, i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %asmresult.i.i.i.i) #14
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end38.cleanup_crit_edge, label %if.end50

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %152 = load i32, ptr @arm_cmn_hp_state, align 4
  %cpuhp_node = getelementptr inbounds %struct.arm_cmn, ptr %call.i, i32 0, i32 18
  %call.i120 = call i32 @__cpuhp_state_add_instance(i32 noundef %152, ptr noundef %cpuhp_node, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool52.not = icmp eq i32 %call.i120, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %call56 = call i32 @perf_pmu_register(ptr noundef %pmu, ptr noundef nonnull %call47, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else61, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %153 = load i32, ptr @arm_cmn_hp_state, align 4
  %call.i121 = call i32 @__cpuhp_state_remove_instance(i32 noundef %153, ptr noundef %cpuhp_node, i1 noundef zeroext false) #14
  br label %cleanup

if.else61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @arm_cmn_debugfs_init(ptr noundef %call.i, i32 noundef %asmresult.i.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else61, %if.then58, %if.end50.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %dev_name.exit.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %cond.i, %if.end23.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %call.i120, %if.end50.cleanup_crit_edge ], [ 0, %if.else61 ], [ %call56, %if.then58 ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ %call.i.i115, %dev_name.exit.i.cleanup_crit_edge ], [ %call18.i, %if.end16.i.cleanup_crit_edge ], [ %call.i.i108, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dtc = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !663
  %pmu = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 19
  tail call void @perf_pmu_unregister(ptr noundef %pmu) #14
  %6 = load i32, ptr @arm_cmn_hp_state, align 4
  %cpuhp_node = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %6, ptr noundef %cpuhp_node, i1 noundef zeroext false) #14
  %debug = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debug, align 4
  tail call void @debugfs_remove(ptr noundef %8) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_cmn_discover(ptr noundef %cmn, i32 noundef %rgn_offset) unnamed_addr #2 align 64 {
entry:
  %xp_offset = alloca [64 x i32], align 4
  %reg = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %xp_offset) #14
  %0 = call ptr @memset(ptr %xp_offset, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #14
  %base.i = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %rgn_offset
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !667
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !667
  %5 = zext i32 %4 to i64
  %6 = zext i32 %3 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #14
  %10 = trunc i64 %9 to i32
  %conv.i = and i32 %10, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then68.i)) #14
          to label %arm_cmn_init_node_info.exit [label %if.then68.i], !srcloc !668

if.then68.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and49.i = lshr i64 %9, 32
  %conv51.i = trunc i64 %and49.i to i32
  %11 = lshr i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %switch.selectcmp93.i = icmp eq i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv.i)
  %switch.selectcmp.i = icmp eq i32 %conv.i, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 4
  %switch.select94.i = select i1 %switch.selectcmp93.i, i32 0, i32 %switch.select.i
  %12 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmn, align 4
  %add.i = or i32 %switch.select94.i, 1
  %sub.i = sub nuw nsw i32 5, %switch.select94.i
  %conv74.i = and i32 %conv51.i, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %add.i, i32 noundef 32, i32 noundef %11, i32 noundef %sub.i, i32 noundef 32, i32 noundef %conv.i, i32 noundef %conv74.i, i32 noundef %rgn_offset) #14
  br label %arm_cmn_init_node_info.exit

arm_cmn_init_node_info.exit:                      ; preds = %if.then68.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %cmp.not = icmp eq i32 %conv.i, 2
  br i1 %cmp.not, label %if.end, label %arm_cmn_init_node_info.exit.cleanup430_crit_edge

arm_cmn_init_node_info.exit.cleanup430_crit_edge: ; preds = %arm_cmn_init_node_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup430

if.end:                                           ; preds = %arm_cmn_init_node_info.exit
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %rgn_offset
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #14, !srcloc !667
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %conv = zext i32 %17 to i64
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %reg, align 8
  %and = lshr i32 %17, 4
  %shr = and i32 %and, 15
  %rev = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 3
  %19 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %rev, align 4
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 2304
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #14, !srcloc !667
  %add.ptr.i572 = getelementptr i32, ptr %add.ptr16, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i572) #14, !srcloc !667
  %22 = zext i32 %21 to i64
  %23 = zext i32 %20 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %22
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #14
  %multi_dtm = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 9
  %call17.lobit = lshr i64 %26, 63
  %27 = trunc i64 %call17.lobit to i8
  %28 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %multi_dtm, align 2
  %29 = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 11
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %29, align 4
  %sh.diff = lshr i64 %26, 46
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -64
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  %bf.shl59 = and i8 %tr.sh.diff, 48
  %bf.set61 = or i8 %bf.set, %bf.shl59
  store i8 %bf.set61, ptr %29, align 4
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 128
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #14, !srcloc !667
  %add.ptr.i573 = getelementptr i32, ptr %add.ptr63, i32 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i573) #14, !srcloc !667
  %33 = zext i32 %32 to i64
  %34 = zext i32 %31 to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %33
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #14
  %conv83 = trunc i64 %37 to i16
  %num_xps = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 7
  %38 = ptrtoint ptr %num_xps to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv83, ptr %num_xps, align 2
  %num_dns = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 8
  %39 = ptrtoint ptr %num_dns to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv83, ptr %num_dns, align 4
  %conv105691705 = and i64 %37, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv105691705)
  %cmp106692.not = icmp eq i64 %conv105691705, 0
  br i1 %cmp106692.not, label %if.end.devm_kcalloc.exit_crit_edge, label %for.body.lr.ph

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %devm_kcalloc.exit

for.body.lr.ph:                                   ; preds = %if.end
  %40 = trunc i64 %37 to i32
  %41 = lshr i32 %40, 16
  %add.ptr109 = getelementptr i8, ptr %add.ptr, i32 %41
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0693 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.0693, 3
  %add.ptr110 = getelementptr i8, ptr %add.ptr109, i32 %mul
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #14, !srcloc !667
  %add.ptr.i574 = getelementptr i32, ptr %add.ptr110, i32 1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i574) #14, !srcloc !667
  %44 = and i32 %42, -241
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %arrayidx = getelementptr [64 x i32], ptr %xp_offset, i32 0, i32 %i.0693
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr116 = getelementptr i8, ptr %48, i32 128
  %add.ptr117 = getelementptr i8, ptr %add.ptr116, i32 %45
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #14, !srcloc !667
  %add.ptr.i575 = getelementptr i32, ptr %add.ptr117, i32 1
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i575) #14, !srcloc !667
  %51 = zext i32 %50 to i64
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = or i64 %53, %51
  %55 = tail call i64 @llvm.bswap.i64(i64 %54) #14
  %56 = ptrtoint ptr %num_dns to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_dns, align 4
  %58 = trunc i64 %55 to i16
  %conv139 = add i16 %57, %58
  store i16 %conv139, ptr %num_dns, align 4
  %inc = add nuw nsw i32 %i.0693, 1
  %59 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_xps, align 2
  %conv105 = zext i16 %60 to i32
  %cmp106 = icmp ult i32 %inc, %conv105
  br i1 %cmp106, label %for.body.for.body_crit_edge, label %for.body.devm_kcalloc.exit_crit_edge

for.body.devm_kcalloc.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %devm_kcalloc.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

devm_kcalloc.exit:                                ; preds = %for.body.devm_kcalloc.exit_crit_edge, %if.end.devm_kcalloc.exit_crit_edge
  %.lcssa690 = phi i64 [ %37, %if.end.devm_kcalloc.exit_crit_edge ], [ %55, %for.body.devm_kcalloc.exit_crit_edge ]
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.lcssa690, ptr %reg, align 8
  %62 = ptrtoint ptr %num_dns to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_dns, align 4
  %conv141 = zext i16 %63 to i32
  %64 = mul nuw nsw i32 %conv141, 24
  %65 = add nuw nsw i32 %64, 24
  %66 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cmn, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef %65, i32 noundef 3520) #14
  %tobool144.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool144.not, label %devm_kcalloc.exit.cleanup430_crit_edge, label %devm_kcalloc.exit579

devm_kcalloc.exit.cleanup430_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup430

devm_kcalloc.exit579:                             ; preds = %devm_kcalloc.exit
  %68 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool150.not = icmp eq i8 %69, 0
  %70 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_xps, align 2
  %conv148 = zext i16 %71 to i32
  %reass.add = shl nuw nsw i32 %conv148, 1
  %add155 = or i32 %reass.add, 1
  %i.1 = select i1 %tobool150.not, i32 %conv148, i32 %add155
  %72 = shl nuw nsw i32 %i.1, 4
  %73 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cmn, align 4
  %call5.i.i576 = tail call noalias ptr @devm_kmalloc(ptr noundef %74, i32 noundef %72, i32 noundef 3520) #14
  %tobool159.not = icmp eq ptr %call5.i.i576, null
  br i1 %tobool159.not, label %devm_kcalloc.exit579.cleanup430_crit_edge, label %if.end161

devm_kcalloc.exit579.cleanup430_crit_edge:        ; preds = %devm_kcalloc.exit579
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup430

if.end161:                                        ; preds = %devm_kcalloc.exit579
  %dns = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 13
  %75 = ptrtoint ptr %dns to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call5.i.i, ptr %dns, align 4
  %dtms = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 14
  %76 = ptrtoint ptr %dtms to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call5.i.i576, ptr %dtms, align 4
  %77 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %num_xps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp165699.not = icmp eq i16 %78, 0
  br i1 %cmp165699.not, label %if.end161.for.end331_crit_edge, label %for.body167.lr.ph

if.end161.for.end331_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end331

for.body167.lr.ph:                                ; preds = %if.end161
  %mesh_x = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 5
  %model = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 4
  %ports_used = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 10
  %num_dtcs = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 16
  br label %for.body167

for.body167:                                      ; preds = %for.inc329.critedge.for.body167_crit_edge, %for.body167.lr.ph
  %dn.0702 = phi ptr [ %call5.i.i, %for.body167.lr.ph ], [ %dn.1.lcssa, %for.inc329.critedge.for.body167_crit_edge ]
  %dtm.0701 = phi ptr [ %call5.i.i576, %for.body167.lr.ph ], [ %dtm.2, %for.inc329.critedge.for.body167_crit_edge ]
  %i.2700 = phi i32 [ 0, %for.body167.lr.ph ], [ %inc330, %for.inc329.critedge.for.body167_crit_edge ]
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %arrayidx169 = getelementptr [64 x i32], ptr %xp_offset, i32 0, i32 %i.2700
  %81 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx169, align 4
  %add.ptr170 = getelementptr i8, ptr %80, i32 %82
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.0702, i32 1
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #14, !srcloc !667
  %add.ptr.i.i582 = getelementptr i32, ptr %add.ptr170, i32 1
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i582) #14, !srcloc !667
  %85 = zext i32 %84 to i64
  %86 = zext i32 %83 to i64
  %87 = shl nuw i64 %86, 32
  %88 = or i64 %87, %85
  %89 = tail call i64 @llvm.bswap.i64(i64 %88) #14
  %90 = trunc i64 %89 to i32
  %conv.i583 = and i32 %90, 65535
  %type.i584 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0702, i32 0, i32 3
  %91 = ptrtoint ptr %type.i584 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv.i583, ptr %type.i584, align 4
  %and30.i585 = lshr i64 %89, 16
  %conv32.i586 = trunc i64 %and30.i585 to i16
  %id.i587 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0702, i32 0, i32 1
  %92 = ptrtoint ptr %id.i587 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv32.i586, ptr %id.i587, align 4
  %and49.i588 = lshr i64 %89, 32
  %conv51.i589 = trunc i64 %and49.i588 to i16
  %logid.i590 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0702, i32 0, i32 2
  %93 = ptrtoint ptr %logid.i590 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv51.i589, ptr %logid.i590, align 2
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr53.i591 = getelementptr i8, ptr %95, i32 8192
  %add.ptr54.i592 = getelementptr i8, ptr %add.ptr53.i591, i32 %82
  %96 = ptrtoint ptr %dn.0702 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr54.i592, ptr %dn.0702, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then68.i601)) #14
          to label %arm_cmn_init_node_info.exit602 [label %if.then68.i601], !srcloc !668

if.then68.i601:                                   ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i583)
  %switch.selectcmp93.i593 = icmp eq i32 %conv.i583, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv.i583)
  %switch.selectcmp.i594 = icmp eq i32 %conv.i583, 6
  %switch.select.i595 = select i1 %switch.selectcmp.i594, i32 2, i32 4
  %switch.select94.i596 = select i1 %switch.selectcmp93.i593, i32 0, i32 %switch.select.i595
  %97 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cmn, align 4
  %add.i597 = or i32 %switch.select94.i596, 1
  %99 = ptrtoint ptr %id.i587 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %id.i587, align 4
  %conv70.i598 = zext i16 %100 to i32
  %sub.i599 = sub nuw nsw i32 5, %switch.select94.i596
  %101 = ptrtoint ptr %type.i584 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type.i584, align 4
  %103 = ptrtoint ptr %logid.i590 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %logid.i590, align 2
  %conv74.i600 = zext i16 %104 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, ptr noundef %98, ptr noundef nonnull @.str.19, i32 noundef %add.i597, i32 noundef 32, i32 noundef %conv70.i598, i32 noundef %sub.i599, i32 noundef 32, i32 noundef %102, i32 noundef %conv74.i600, i32 noundef %82) #14
  br label %arm_cmn_init_node_info.exit602

arm_cmn_init_node_info.exit602:                   ; preds = %if.then68.i601, %for.body167
  %105 = ptrtoint ptr %id.i587 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %id.i587, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %106)
  %cmp173 = icmp eq i16 %106, 8
  br i1 %cmp173, label %if.then175, label %arm_cmn_init_node_info.exit602.if.end177_crit_edge

arm_cmn_init_node_info.exit602.if.end177_crit_edge: ; preds = %arm_cmn_init_node_info.exit602
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end177

if.then175:                                       ; preds = %arm_cmn_init_node_info.exit602
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %logid.i590 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %logid.i590, align 2
  %conv176 = trunc i16 %108 to i8
  %109 = ptrtoint ptr %mesh_x to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv176, ptr %mesh_x, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %arm_cmn_init_node_info.exit602.if.end177_crit_edge
  %110 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp178 = icmp eq i32 %111, 1
  br i1 %cmp178, label %if.end177.if.end186_crit_edge, label %if.else

if.end177.if.end186_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.else:                                          ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr182 = getelementptr i8, ptr %add.ptr170, i32 2320
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #14, !srcloc !667
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %shl = shl nuw i32 1, %113
  %conv185 = trunc i32 %shl to i8
  br label %if.end186

if.end186:                                        ; preds = %if.else, %if.end177.if.end186_crit_edge
  %conv185.sink = phi i8 [ %conv185, %if.else ], [ 15, %if.end177.if.end186_crit_edge ]
  %114 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0702, i32 0, i32 5
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv185.sink, ptr %114, align 4
  %116 = ptrtoint ptr %dtms to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dtms, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dtm.0701 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %117 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %dtm188 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0702, i32 0, i32 4
  %118 = ptrtoint ptr %dtm188 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub.ptr.div, ptr %dtm188, align 4
  %incdec.ptr189 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1
  %119 = ptrtoint ptr %dn.0702 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dn.0702, align 4
  %121 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %dtm.0701, align 4
  %pmu_config_low.i = getelementptr inbounds %struct.arm_cmn_dtm, ptr %dtm.0701, i32 0, i32 1
  %122 = ptrtoint ptr %pmu_config_low.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %pmu_config_low.i, align 4
  %arrayidx.i = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 0, i32 3, i32 0
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %arrayidx.i, align 1
  %add.ptr4.i = getelementptr i8, ptr %120, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #14, !srcloc !663
  %add.ptr.i.i603 = getelementptr i8, ptr %120, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i603, i32 0) #14, !srcloc !663
  %124 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dtm.0701, align 4
  %add.ptr9.i = getelementptr i8, ptr %125, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -1) #14, !srcloc !663
  %add.ptr.i18.i = getelementptr i8, ptr %125, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 -1) #14, !srcloc !663
  %arrayidx.1.i = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 0, i32 3, i32 1
  %126 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %arrayidx.1.i, align 1
  %127 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dtm.0701, align 4
  %add.ptr4.1.i = getelementptr i8, ptr %128, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1.i, i32 0) #14, !srcloc !663
  %add.ptr.i.1.i = getelementptr i8, ptr %128, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 0) #14, !srcloc !663
  %129 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dtm.0701, align 4
  %add.ptr9.1.i = getelementptr i8, ptr %130, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i, i32 -1) #14, !srcloc !663
  %add.ptr.i18.1.i = getelementptr i8, ptr %130, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.1.i, i32 -1) #14, !srcloc !663
  %arrayidx.2.i = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 0, i32 3, i32 2
  %131 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -1, ptr %arrayidx.2.i, align 1
  %132 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dtm.0701, align 4
  %add.ptr4.2.i = getelementptr i8, ptr %133, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2.i, i32 0) #14, !srcloc !663
  %add.ptr.i.2.i = getelementptr i8, ptr %133, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 0) #14, !srcloc !663
  %134 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dtm.0701, align 4
  %add.ptr9.2.i = getelementptr i8, ptr %135, i32 472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i, i32 -1) #14, !srcloc !663
  %add.ptr.i18.2.i = getelementptr i8, ptr %135, i32 476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.2.i, i32 -1) #14, !srcloc !663
  %arrayidx.3.i = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 0, i32 3, i32 3
  %136 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -1, ptr %arrayidx.3.i, align 1
  %137 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dtm.0701, align 4
  %add.ptr4.3.i = getelementptr i8, ptr %138, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3.i, i32 0) #14, !srcloc !663
  %add.ptr.i.3.i = getelementptr i8, ptr %138, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 0) #14, !srcloc !663
  %139 = ptrtoint ptr %dtm.0701 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dtm.0701, align 4
  %add.ptr9.3.i = getelementptr i8, ptr %140, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3.i, i32 -1) #14, !srcloc !663
  %add.ptr.i18.3.i = getelementptr i8, ptr %140, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.3.i, i32 -1) #14, !srcloc !663
  %add.ptr190 = getelementptr i8, ptr %add.ptr170, i32 8
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #14, !srcloc !667
  %add.ptr.i604 = getelementptr i32, ptr %add.ptr190, i32 1
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i604) #14, !srcloc !667
  %143 = zext i32 %142 to i64
  %144 = zext i32 %141 to i64
  %145 = shl nuw i64 %144, 32
  %146 = or i64 %145, %143
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %146)
  %tobool192.not = icmp ne i64 %146, 0
  %spec.select = zext i1 %tobool192.not to i32
  %add.ptr195 = getelementptr i8, ptr %add.ptr170, i32 16
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #14, !srcloc !667
  %add.ptr.i605 = getelementptr i32, ptr %add.ptr195, i32 1
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i605) #14, !srcloc !667
  %149 = zext i32 %148 to i64
  %150 = zext i32 %147 to i64
  %151 = shl nuw i64 %150, 32
  %152 = or i64 %151, %149
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool197.not = icmp eq i64 %152, 0
  %or199 = or i32 %spec.select, 2
  %xp_ports.1 = select i1 %tobool197.not, i32 %spec.select, i32 %or199
  %add.ptr201 = getelementptr i8, ptr %add.ptr170, i32 40
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201) #14, !srcloc !667
  %add.ptr.i606 = getelementptr i32, ptr %add.ptr201, i32 1
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i606) #14, !srcloc !667
  %155 = zext i32 %154 to i64
  %156 = zext i32 %153 to i64
  %157 = shl nuw i64 %156, 32
  %158 = or i64 %157, %155
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %158)
  %tobool203.not = icmp eq i64 %158, 0
  %or205 = or i32 %xp_ports.1, 4
  %xp_ports.2 = select i1 %tobool203.not, i32 %xp_ports.1, i32 %or205
  %add.ptr207 = getelementptr i8, ptr %add.ptr170, i32 48
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #14, !srcloc !667
  %add.ptr.i607 = getelementptr i32, ptr %add.ptr207, i32 1
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i607) #14, !srcloc !667
  %161 = zext i32 %160 to i64
  %162 = zext i32 %159 to i64
  %163 = shl nuw i64 %162, 32
  %164 = or i64 %163, %161
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %164)
  %tobool209.not = icmp eq i64 %164, 0
  %or211 = or i32 %xp_ports.2, 8
  %xp_ports.3 = select i1 %tobool209.not, i32 %xp_ports.2, i32 %or211
  %add.ptr213 = getelementptr i8, ptr %add.ptr170, i32 56
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #14, !srcloc !667
  %add.ptr.i608 = getelementptr i32, ptr %add.ptr213, i32 1
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i608) #14, !srcloc !667
  %167 = zext i32 %166 to i64
  %168 = zext i32 %165 to i64
  %169 = shl nuw i64 %168, 32
  %170 = or i64 %169, %167
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %170)
  %tobool215.not = icmp eq i64 %170, 0
  %or217 = or i32 %xp_ports.3, 16
  %xp_ports.4 = select i1 %tobool215.not, i32 %xp_ports.3, i32 %or217
  %add.ptr219 = getelementptr i8, ptr %add.ptr170, i32 64
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #14, !srcloc !667
  %add.ptr.i609 = getelementptr i32, ptr %add.ptr219, i32 1
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i609) #14, !srcloc !667
  %173 = zext i32 %172 to i64
  %174 = zext i32 %171 to i64
  %175 = shl nuw i64 %174, 32
  %176 = or i64 %175, %173
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %176)
  %tobool221.not = icmp eq i64 %176, 0
  %or223 = or i32 %xp_ports.4, 32
  %xp_ports.5 = select i1 %tobool221.not, i32 %xp_ports.4, i32 %or223
  %177 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool226.not = icmp eq i8 %178, 0
  %and228 = and i32 %xp_ports.5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  %or.cond = select i1 %tobool226.not, i1 true, i1 %tobool229.not
  br i1 %or.cond, label %if.end186.if.end232_crit_edge, label %if.then230

if.end186.if.end232_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

if.then230:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr231 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 2
  %179 = ptrtoint ptr %dn.0702 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dn.0702, align 4
  %add.ptr.i610 = getelementptr i8, ptr %180, i32 512
  %181 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %add.ptr.i610, ptr %incdec.ptr189, align 4
  %pmu_config_low.i611 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1, i32 1
  %182 = ptrtoint ptr %pmu_config_low.i611 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %pmu_config_low.i611, align 4
  %arrayidx.i612 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1, i32 3
  %183 = ptrtoint ptr %arrayidx.i612 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -1, ptr %arrayidx.i612, align 1
  %add.ptr4.i613 = getelementptr i8, ptr %180, i32 944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i613, i32 0) #14, !srcloc !663
  %add.ptr.i.i614 = getelementptr i8, ptr %180, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i614, i32 0) #14, !srcloc !663
  %184 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr9.i615 = getelementptr i8, ptr %185, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i615, i32 -1) #14, !srcloc !663
  %add.ptr.i18.i616 = getelementptr i8, ptr %185, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i616, i32 -1) #14, !srcloc !663
  %arrayidx.1.i617 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1, i32 3, i32 1
  %186 = ptrtoint ptr %arrayidx.1.i617 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -1, ptr %arrayidx.1.i617, align 1
  %187 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr4.1.i618 = getelementptr i8, ptr %188, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1.i618, i32 0) #14, !srcloc !663
  %add.ptr.i.1.i619 = getelementptr i8, ptr %188, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i619, i32 0) #14, !srcloc !663
  %189 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr9.1.i620 = getelementptr i8, ptr %190, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i620, i32 -1) #14, !srcloc !663
  %add.ptr.i18.1.i621 = getelementptr i8, ptr %190, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.1.i621, i32 -1) #14, !srcloc !663
  %arrayidx.2.i622 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1, i32 3, i32 2
  %191 = ptrtoint ptr %arrayidx.2.i622 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -1, ptr %arrayidx.2.i622, align 1
  %192 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr4.2.i623 = getelementptr i8, ptr %193, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2.i623, i32 0) #14, !srcloc !663
  %add.ptr.i.2.i624 = getelementptr i8, ptr %193, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i624, i32 0) #14, !srcloc !663
  %194 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr9.2.i625 = getelementptr i8, ptr %195, i32 472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i625, i32 -1) #14, !srcloc !663
  %add.ptr.i18.2.i626 = getelementptr i8, ptr %195, i32 476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.2.i626, i32 -1) #14, !srcloc !663
  %arrayidx.3.i627 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.0701, i32 1, i32 3, i32 3
  %196 = ptrtoint ptr %arrayidx.3.i627 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -1, ptr %arrayidx.3.i627, align 1
  %197 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr4.3.i628 = getelementptr i8, ptr %198, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3.i628, i32 0) #14, !srcloc !663
  %add.ptr.i.3.i629 = getelementptr i8, ptr %198, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i629, i32 0) #14, !srcloc !663
  %199 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %incdec.ptr189, align 4
  %add.ptr9.3.i630 = getelementptr i8, ptr %200, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3.i630, i32 -1) #14, !srcloc !663
  %add.ptr.i18.3.i631 = getelementptr i8, ptr %200, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.3.i631, i32 -1) #14, !srcloc !663
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %if.end186.if.end232_crit_edge
  %dtm.1 = phi ptr [ %incdec.ptr231, %if.then230 ], [ %incdec.ptr189, %if.end186.if.end232_crit_edge ]
  %201 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool234.not = icmp eq i8 %202, 0
  %and237 = and i32 %xp_ports.5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  %or.cond565 = select i1 %tobool234.not, i1 true, i1 %tobool238.not
  br i1 %or.cond565, label %if.end232.if.end241_crit_edge, label %if.then239

if.end232.if.end241_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end241

if.then239:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr240 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.1, i32 1
  %203 = ptrtoint ptr %dn.0702 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dn.0702, align 4
  %add.ptr.i632 = getelementptr i8, ptr %204, i32 1024
  %205 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %add.ptr.i632, ptr %dtm.1, align 4
  %pmu_config_low.i633 = getelementptr inbounds %struct.arm_cmn_dtm, ptr %dtm.1, i32 0, i32 1
  %206 = ptrtoint ptr %pmu_config_low.i633 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %pmu_config_low.i633, align 4
  %arrayidx.i634 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.1, i32 0, i32 3, i32 0
  %207 = ptrtoint ptr %arrayidx.i634 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %arrayidx.i634, align 1
  %add.ptr4.i635 = getelementptr i8, ptr %204, i32 1456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i635, i32 0) #14, !srcloc !663
  %add.ptr.i.i636 = getelementptr i8, ptr %204, i32 1460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i636, i32 0) #14, !srcloc !663
  %208 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dtm.1, align 4
  %add.ptr9.i637 = getelementptr i8, ptr %209, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i637, i32 -1) #14, !srcloc !663
  %add.ptr.i18.i638 = getelementptr i8, ptr %209, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i638, i32 -1) #14, !srcloc !663
  %arrayidx.1.i639 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.1, i32 0, i32 3, i32 1
  %210 = ptrtoint ptr %arrayidx.1.i639 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -1, ptr %arrayidx.1.i639, align 1
  %211 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dtm.1, align 4
  %add.ptr4.1.i640 = getelementptr i8, ptr %212, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1.i640, i32 0) #14, !srcloc !663
  %add.ptr.i.1.i641 = getelementptr i8, ptr %212, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i641, i32 0) #14, !srcloc !663
  %213 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dtm.1, align 4
  %add.ptr9.1.i642 = getelementptr i8, ptr %214, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i642, i32 -1) #14, !srcloc !663
  %add.ptr.i18.1.i643 = getelementptr i8, ptr %214, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.1.i643, i32 -1) #14, !srcloc !663
  %arrayidx.2.i644 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.1, i32 0, i32 3, i32 2
  %215 = ptrtoint ptr %arrayidx.2.i644 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -1, ptr %arrayidx.2.i644, align 1
  %216 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dtm.1, align 4
  %add.ptr4.2.i645 = getelementptr i8, ptr %217, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2.i645, i32 0) #14, !srcloc !663
  %add.ptr.i.2.i646 = getelementptr i8, ptr %217, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i646, i32 0) #14, !srcloc !663
  %218 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dtm.1, align 4
  %add.ptr9.2.i647 = getelementptr i8, ptr %219, i32 472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i647, i32 -1) #14, !srcloc !663
  %add.ptr.i18.2.i648 = getelementptr i8, ptr %219, i32 476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.2.i648, i32 -1) #14, !srcloc !663
  %arrayidx.3.i649 = getelementptr %struct.arm_cmn_dtm, ptr %dtm.1, i32 0, i32 3, i32 3
  %220 = ptrtoint ptr %arrayidx.3.i649 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 -1, ptr %arrayidx.3.i649, align 1
  %221 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dtm.1, align 4
  %add.ptr4.3.i650 = getelementptr i8, ptr %222, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3.i650, i32 0) #14, !srcloc !663
  %add.ptr.i.3.i651 = getelementptr i8, ptr %222, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i651, i32 0) #14, !srcloc !663
  %223 = ptrtoint ptr %dtm.1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dtm.1, align 4
  %add.ptr9.3.i652 = getelementptr i8, ptr %224, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3.i652, i32 -1) #14, !srcloc !663
  %add.ptr.i18.3.i653 = getelementptr i8, ptr %224, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.3.i653, i32 -1) #14, !srcloc !663
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end232.if.end241_crit_edge
  %dtm.2 = phi ptr [ %incdec.ptr240, %if.then239 ], [ %dtm.1, %if.end232.if.end241_crit_edge ]
  %225 = ptrtoint ptr %ports_used to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %ports_used, align 1
  %227 = trunc i32 %xp_ports.5 to i8
  %conv244 = or i8 %226, %227
  store i8 %conv244, ptr %ports_used, align 1
  %add.ptr245 = getelementptr i8, ptr %add.ptr170, i32 128
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #14, !srcloc !667
  %add.ptr.i654 = getelementptr i32, ptr %add.ptr245, i32 1
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i654) #14, !srcloc !667
  %230 = zext i32 %229 to i64
  %231 = zext i32 %228 to i64
  %232 = shl nuw i64 %231, 32
  %233 = or i64 %232, %230
  %234 = tail call i64 @llvm.bswap.i64(i64 %233) #14
  %235 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %reg, align 8
  %conv265 = trunc i64 %234 to i32
  %conv286 = and i32 %conv265, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv286)
  %cmp287694.not = icmp eq i32 %conv286, 0
  br i1 %cmp287694.not, label %if.end241.for.inc329.critedge_crit_edge, label %for.body289.lr.ph

if.end241.for.inc329.critedge_crit_edge:          ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc329.critedge

for.body289.lr.ph:                                ; preds = %if.end241
  %236 = lshr i32 %conv265, 16
  %add.ptr291 = getelementptr i8, ptr %add.ptr170, i32 %236
  br label %for.body289

for.body289:                                      ; preds = %for.inc324.for.body289_crit_edge, %for.body289.lr.ph
  %dn.1696 = phi ptr [ %incdec.ptr, %for.body289.lr.ph ], [ %dn.2, %for.inc324.for.body289_crit_edge ]
  %j.0695 = phi i32 [ 0, %for.body289.lr.ph ], [ %inc325, %for.inc324.for.body289_crit_edge ]
  %mul292 = shl i32 %j.0695, 3
  %add.ptr293 = getelementptr i8, ptr %add.ptr291, i32 %mul292
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #14, !srcloc !667
  %add.ptr.i655 = getelementptr i32, ptr %add.ptr293, i32 1
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i655) #14, !srcloc !667
  %239 = zext i32 %238 to i64
  %240 = zext i32 %237 to i64
  %241 = shl nuw i64 %240, 32
  %242 = or i64 %241, %239
  %243 = tail call i64 @llvm.bswap.i64(i64 %242) #14
  %244 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %243, ptr %reg, align 8
  %and295 = and i64 %243, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and295)
  %tobool296.not = icmp eq i64 %and295, 0
  br i1 %tobool296.not, label %if.end310, label %do.body298

do.body298:                                       ; preds = %for.body289
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_discover.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then305)) #14
          to label %for.inc324 [label %if.then305], !srcloc !668

if.then305:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #16
  %245 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cmn, align 4
  %247 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %reg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_discover.__UNIQUE_ID_ddebug505, ptr noundef %246, ptr noundef nonnull @.str.6, i64 noundef %248) #14
  br label %for.inc324

if.end310:                                        ; preds = %for.body289
  %249 = trunc i64 %243 to i32
  %conv312 = and i32 %249, 268435455
  %250 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base.i, align 4
  %add.ptr.i657 = getelementptr i8, ptr %251, i32 %conv312
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i657) #14, !srcloc !667
  %add.ptr.i.i658 = getelementptr i32, ptr %add.ptr.i657, i32 1
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i658) #14, !srcloc !667
  %254 = zext i32 %253 to i64
  %255 = zext i32 %252 to i64
  %256 = shl nuw i64 %255, 32
  %257 = or i64 %256, %254
  %258 = tail call i64 @llvm.bswap.i64(i64 %257) #14
  %259 = trunc i64 %258 to i32
  %conv.i659 = and i32 %259, 65535
  %type.i660 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.1696, i32 0, i32 3
  %260 = ptrtoint ptr %type.i660 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv.i659, ptr %type.i660, align 4
  %and30.i661 = lshr i64 %258, 16
  %conv32.i662 = trunc i64 %and30.i661 to i16
  %id.i663 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.1696, i32 0, i32 1
  %261 = ptrtoint ptr %id.i663 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv32.i662, ptr %id.i663, align 4
  %and49.i664 = lshr i64 %258, 32
  %conv51.i665 = trunc i64 %and49.i664 to i16
  %logid.i666 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.1696, i32 0, i32 2
  %262 = ptrtoint ptr %logid.i666 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv51.i665, ptr %logid.i666, align 2
  %263 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base.i, align 4
  %add.ptr53.i667 = getelementptr i8, ptr %264, i32 8192
  %add.ptr54.i668 = getelementptr i8, ptr %add.ptr53.i667, i32 %conv312
  %265 = ptrtoint ptr %dn.1696 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %add.ptr54.i668, ptr %dn.1696, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then68.i677)) #14
          to label %arm_cmn_init_node_info.exit678 [label %if.then68.i677], !srcloc !668

if.then68.i677:                                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i659)
  %switch.selectcmp93.i669 = icmp eq i32 %conv.i659, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv.i659)
  %switch.selectcmp.i670 = icmp eq i32 %conv.i659, 6
  %switch.select.i671 = select i1 %switch.selectcmp.i670, i32 2, i32 4
  %switch.select94.i672 = select i1 %switch.selectcmp93.i669, i32 0, i32 %switch.select.i671
  %266 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cmn, align 4
  %add.i673 = or i32 %switch.select94.i672, 1
  %268 = ptrtoint ptr %id.i663 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %id.i663, align 4
  %conv70.i674 = zext i16 %269 to i32
  %sub.i675 = sub nuw nsw i32 5, %switch.select94.i672
  %270 = ptrtoint ptr %type.i660 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %type.i660, align 4
  %272 = ptrtoint ptr %logid.i666 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %logid.i666, align 2
  %conv74.i676 = zext i16 %273 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, ptr noundef %267, ptr noundef nonnull @.str.19, i32 noundef %add.i673, i32 noundef 32, i32 noundef %conv70.i674, i32 noundef %sub.i675, i32 noundef 32, i32 noundef %271, i32 noundef %conv74.i676, i32 noundef %conv312) #14
  br label %arm_cmn_init_node_info.exit678

arm_cmn_init_node_info.exit678:                   ; preds = %if.then68.i677, %if.end310
  %274 = ptrtoint ptr %type.i660 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %type.i660, align 4
  %276 = zext i32 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.707)
  switch i32 %275, label %do.end321 [
    i32 3, label %sw.bb
    i32 1, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge
    i32 4, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge716
    i32 5, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge717
    i32 7, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge718
    i32 10, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge719
    i32 13, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge720
    i32 16, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge721
    i32 256, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge722
    i32 257, label %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge723
    i32 8, label %arm_cmn_init_node_info.exit678.for.inc324_crit_edge
    i32 9, label %arm_cmn_init_node_info.exit678.for.inc324_crit_edge724
    i32 15, label %arm_cmn_init_node_info.exit678.for.inc324_crit_edge725
    i32 258, label %arm_cmn_init_node_info.exit678.for.inc324_crit_edge726
  ]

arm_cmn_init_node_info.exit678.for.inc324_crit_edge726: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc324

arm_cmn_init_node_info.exit678.for.inc324_crit_edge725: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc324

arm_cmn_init_node_info.exit678.for.inc324_crit_edge724: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc324

arm_cmn_init_node_info.exit678.for.inc324_crit_edge: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc324

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge723: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge722: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge721: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge720: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge719: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge718: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge717: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge716: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

arm_cmn_init_node_info.exit678.sw.bb316_crit_edge: ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb316

sw.bb:                                            ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  %277 = ptrtoint ptr %num_dtcs to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %num_dtcs, align 4
  %inc314 = add i32 %278, 1
  store i32 %inc314, ptr %num_dtcs, align 4
  %incdec.ptr315 = getelementptr %struct.arm_cmn_node, ptr %dn.1696, i32 1
  br label %for.inc324

sw.bb316:                                         ; preds = %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge716, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge717, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge718, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge719, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge720, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge721, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge722, %arm_cmn_init_node_info.exit678.sw.bb316_crit_edge723
  %incdec.ptr317 = getelementptr %struct.arm_cmn_node, ptr %dn.1696, i32 1
  br label %for.inc324

do.end321:                                        ; preds = %arm_cmn_init_node_info.exit678
  call void @__sanitizer_cov_trace_pc() #16
  %279 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cmn, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.7, i32 noundef %275) #17
  br label %cleanup430

for.inc324:                                       ; preds = %sw.bb316, %sw.bb, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge724, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge725, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge726, %if.then305, %do.body298
  %dn.2 = phi ptr [ %dn.1696, %if.then305 ], [ %dn.1696, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge ], [ %dn.1696, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge724 ], [ %dn.1696, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge725 ], [ %dn.1696, %arm_cmn_init_node_info.exit678.for.inc324_crit_edge726 ], [ %incdec.ptr317, %sw.bb316 ], [ %incdec.ptr315, %sw.bb ], [ %dn.1696, %do.body298 ]
  %inc325 = add nuw nsw i32 %j.0695, 1
  %exitcond.not = icmp eq i32 %inc325, %conv286
  br i1 %exitcond.not, label %for.inc324.for.inc329.critedge_crit_edge, label %for.inc324.for.body289_crit_edge

for.inc324.for.body289_crit_edge:                 ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body289

for.inc324.for.inc329.critedge_crit_edge:         ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc329.critedge

for.inc329.critedge:                              ; preds = %for.inc324.for.inc329.critedge_crit_edge, %if.end241.for.inc329.critedge_crit_edge
  %dn.1.lcssa = phi ptr [ %incdec.ptr, %if.end241.for.inc329.critedge_crit_edge ], [ %dn.2, %for.inc324.for.inc329.critedge_crit_edge ]
  %inc330 = add nuw nsw i32 %i.2700, 1
  %281 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %num_xps, align 2
  %conv164 = zext i16 %282 to i32
  %cmp165 = icmp ult i32 %inc330, %conv164
  br i1 %cmp165, label %for.inc329.critedge.for.body167_crit_edge, label %for.inc329.critedge.for.end331_crit_edge

for.inc329.critedge.for.end331_crit_edge:         ; preds = %for.inc329.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end331

for.inc329.critedge.for.body167_crit_edge:        ; preds = %for.inc329.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body167

for.end331:                                       ; preds = %for.inc329.critedge.for.end331_crit_edge, %if.end161.for.end331_crit_edge
  %dtm.0.lcssa = phi ptr [ %call5.i.i576, %if.end161.for.end331_crit_edge ], [ %dtm.2, %for.inc329.critedge.for.end331_crit_edge ]
  %dn.0.lcssa = phi ptr [ %call5.i.i, %if.end161.for.end331_crit_edge ], [ %dn.1.lcssa, %for.inc329.critedge.for.end331_crit_edge ]
  %283 = ptrtoint ptr %dns to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dns, align 4
  %sub.ptr.lhs.cast333 = ptrtoint ptr %dn.0.lcssa to i32
  %sub.ptr.rhs.cast334 = ptrtoint ptr %284 to i32
  %sub.ptr.sub335 = sub i32 %sub.ptr.lhs.cast333, %sub.ptr.rhs.cast334
  %sub.ptr.div336 = sdiv exact i32 %sub.ptr.sub335, 24
  %conv337 = trunc i32 %sub.ptr.div336 to i16
  %285 = ptrtoint ptr %num_dns to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv337, ptr %num_dns, align 4
  %add.ptr339 = getelementptr %struct.arm_cmn_node, ptr %dn.0.lcssa, i32 1
  %sub.ptr.lhs.cast341 = ptrtoint ptr %add.ptr339 to i32
  %sub.ptr.sub343 = sub i32 %sub.ptr.lhs.cast341, %sub.ptr.rhs.cast334
  %286 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cmn, align 4
  %call346 = tail call ptr @devm_krealloc(ptr noundef %287, ptr noundef %284, i32 noundef %sub.ptr.sub343, i32 noundef 3264) #14
  %tobool347.not = icmp eq ptr %call346, null
  br i1 %tobool347.not, label %for.end331.if.end350_crit_edge, label %if.then348

for.end331.if.end350_crit_edge:                   ; preds = %for.end331
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end350

if.then348:                                       ; preds = %for.end331
  call void @__sanitizer_cov_trace_pc() #16
  %288 = ptrtoint ptr %dns to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call346, ptr %dns, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %for.end331.if.end350_crit_edge
  %289 = ptrtoint ptr %dtms to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dtms, align 4
  %sub.ptr.lhs.cast352 = ptrtoint ptr %dtm.0.lcssa to i32
  %sub.ptr.rhs.cast353 = ptrtoint ptr %290 to i32
  %sub.ptr.sub354 = sub i32 %sub.ptr.lhs.cast352, %sub.ptr.rhs.cast353
  %291 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cmn, align 4
  %call357 = tail call ptr @devm_krealloc(ptr noundef %292, ptr noundef %290, i32 noundef %sub.ptr.sub354, i32 noundef 3264) #14
  %tobool358.not = icmp eq ptr %call357, null
  br i1 %tobool358.not, label %if.end350.if.end361_crit_edge, label %if.then359

if.end350.if.end361_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end361

if.then359:                                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #16
  %293 = ptrtoint ptr %dtms to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call357, ptr %dtms, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.then359, %if.end350.if.end361_crit_edge
  %mesh_x362 = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 5
  %294 = ptrtoint ptr %mesh_x362 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %mesh_x362, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool363.not = icmp eq i8 %295, 0
  %296 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %num_xps, align 2
  br i1 %tobool363.not, label %if.then364, label %if.end361.if.end368_crit_edge

if.end361.if.end368_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end368

if.then364:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #16
  %conv366 = trunc i16 %297 to i8
  %298 = ptrtoint ptr %mesh_x362 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv366, ptr %mesh_x362, align 4
  br label %if.end368

if.end368:                                        ; preds = %if.then364, %if.end361.if.end368_crit_edge
  %299 = ptrtoint ptr %mesh_x362 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %mesh_x362, align 4
  %conv372 = zext i8 %300 to i16
  %div = udiv i16 %297, %conv372
  %conv373 = trunc i16 %div to i8
  %mesh_y = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 6
  %301 = ptrtoint ptr %mesh_y to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv373, ptr %mesh_y, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %297)
  %cmp376 = icmp eq i16 %297, 1
  br i1 %cmp376, label %do.end381, label %if.end368.do.body384_crit_edge

if.end368.do.body384_crit_edge:                   ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body384

do.end381:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #16
  %302 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cmn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %303, ptr noundef nonnull @.str.11) #17
  br label %do.body384

do.body384:                                       ; preds = %do.end381, %if.end368.do.body384_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_discover.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then396)) #14
          to label %do.end402 [label %if.then396], !srcloc !668

if.then396:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #16
  %304 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cmn, align 4
  %model398 = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 4
  %306 = ptrtoint ptr %model398 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %model398, align 4
  %308 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_discover.__UNIQUE_ID_ddebug506, ptr noundef %305, ptr noundef nonnull @.str.14, i32 noundef %307, i32 noundef %309) #14
  br label %do.end402

do.end402:                                        ; preds = %if.then396, %do.body384
  %ports_used403 = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 10
  %310 = ptrtoint ptr %ports_used403 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %ports_used403, align 1
  %conv404 = zext i8 %311 to i64
  %312 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 %conv404, ptr %reg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_discover.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_discover, %if.then417)) #14
          to label %cleanup430 [label %if.then417], !srcloc !668

if.then417:                                       ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #16
  %313 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %cmn, align 4
  %315 = ptrtoint ptr %mesh_x362 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %mesh_x362, align 4
  %conv420 = zext i8 %316 to i32
  %317 = ptrtoint ptr %mesh_y to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %mesh_y, align 1
  %conv422 = zext i8 %318 to i32
  %319 = tail call i8 @llvm.umax.i8(i8 %316, i8 %318) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %319)
  %cmp5.i = icmp ugt i8 %319, 4
  %cond7.i = select i1 %cmp5.i, i32 3, i32 2
  %320 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool425.not = icmp eq i8 %321, 0
  %cond = select i1 %tobool425.not, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_discover.__UNIQUE_ID_ddebug507, ptr noundef %314, ptr noundef nonnull @.str.15, i32 noundef %conv420, i32 noundef %conv422, i32 noundef %cond7.i, ptr noundef nonnull %reg, ptr noundef nonnull %cond) #14
  br label %cleanup430

cleanup430:                                       ; preds = %if.then417, %do.end402, %do.end321, %devm_kcalloc.exit579.cleanup430_crit_edge, %devm_kcalloc.exit.cleanup430_crit_edge, %arm_cmn_init_node_info.exit.cleanup430_crit_edge
  %retval.2 = phi i32 [ -19, %arm_cmn_init_node_info.exit.cleanup430_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup430_crit_edge ], [ -12, %devm_kcalloc.exit579.cleanup430_crit_edge ], [ -19, %do.end321 ], [ 0, %if.then417 ], [ 0, %do.end402 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %xp_offset) #14
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_pmu_enable(ptr nocapture noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr i8, ptr %pmu, i32 -56
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  %and.i = and i32 %1, -2
  store i32 %and.i, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.arm_cmn_clear_state.exit_crit_edge

entry.arm_cmn_clear_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_clear_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc.i = getelementptr i8, ptr %pmu, i32 -20
  %2 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1090519040) #14, !srcloc !663
  br label %arm_cmn_clear_state.exit

arm_cmn_clear_state.exit:                         ; preds = %if.then.i, %entry.arm_cmn_clear_state.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_pmu_disable(ptr nocapture noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr i8, ptr %pmu, i32 -56
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.arm_cmn_set_state.exit_crit_edge

entry.arm_cmn_set_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_set_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc.i = getelementptr i8, ptr %pmu, i32 -20
  %2 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !663
  br label %arm_cmn_set_state.exit

arm_cmn_set_state.exit:                           ; preds = %if.then.i, %entry.arm_cmn_set_state.exit_crit_edge
  %6 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state1.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %state1.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_event_init(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %type3 = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.not = icmp eq i64 %8, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %9 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_state, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr i8, ptr %1, i32 -12
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %cpu7 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %13 = ptrtoint ptr %cpu7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cpu7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp slt i32 %12, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %do.end23

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end23:                                         ; preds = %if.end6
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %config, align 8
  %16 = trunc i64 %15 to i32
  %conv = and i32 %16, 65535
  %trunc = trunc i64 %15 to i16
  %17 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.708)
  switch i16 %trunc, label %do.end23.do.end102_crit_edge [
    i16 3, label %do.end23.cleanup_crit_edge
    i16 30576, label %if.then33
  ]

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end23.do.end102_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end102

if.then33:                                        ; preds = %do.end23
  %18 = lshr i64 %15, 16
  %trunc231 = trunc i64 %18 to i8
  %19 = zext i8 %trunc231 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.709)
  switch i8 %trunc231, label %if.then33.cleanup_crit_edge [
    i8 0, label %if.then33.if.end62_crit_edge
    i8 2, label %if.then33.if.end62_crit_edge243
  ]

if.then33.if.end62_crit_edge243:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then33.if.end62_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %if.then33.if.end62_crit_edge, %if.then33.if.end62_crit_edge243
  %multi_dtm = getelementptr i8, ptr %1, i32 -38
  %20 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool63.not = icmp eq i8 %21, 0
  br i1 %tobool63.not, label %if.end62.do.end102_crit_edge, label %do.end79

if.end62.do.end102_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end102

do.end79:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %and83 = lshr i64 %15, 49
  %22 = trunc i64 %and83 to i8
  %conv85 = and i8 %22, 3
  %dtm_offset = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %23 = ptrtoint ptr %dtm_offset to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv85, ptr %dtm_offset, align 2
  br label %do.end102

do.end102:                                        ; preds = %do.end79, %if.end62.do.end102_crit_edge, %do.end23.do.end102_crit_edge
  %type.0 = phi i32 [ 6, %do.end79 ], [ 6, %if.end62.do.end102_crit_edge ], [ %conv, %do.end23.do.end102_crit_edge ]
  %24 = and i64 %15, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool108.not = icmp eq i64 %24, 0
  %and127 = lshr i64 %15, 32
  %conv129 = trunc i64 %and127 to i16
  %dns.i = getelementptr i8, ptr %1, i32 -28
  %25 = ptrtoint ptr %dns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dns.i, align 4
  %type16.i = getelementptr inbounds %struct.arm_cmn_node, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not7.i = icmp eq i32 %28, 0
  br i1 %tobool.not7.i, label %do.end102.arm_cmn_node.exit.thread_crit_edge, label %do.end102.for.body.i_crit_edge

do.end102.for.body.i_crit_edge:                   ; preds = %do.end102
  br label %for.body.i

do.end102.arm_cmn_node.exit.thread_crit_edge:     ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end102.for.body.i_crit_edge
  %29 = phi i32 [ %31, %for.inc.i.for.body.i_crit_edge ], [ %28, %do.end102.for.body.i_crit_edge ]
  %dn.08.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %26, %do.end102.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %type.0)
  %cmp.i226 = icmp eq i32 %29, %type.0
  br i1 %cmp.i226, label %arm_cmn_node.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i, i32 1
  %type1.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i, i32 1, i32 3
  %30 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type1.i, align 4
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %for.inc.i.arm_cmn_node.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.arm_cmn_node.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node.exit.thread

arm_cmn_node.exit.thread:                         ; preds = %for.inc.i.arm_cmn_node.exit.thread_crit_edge, %do.end102.arm_cmn_node.exit.thread_crit_edge
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %hw.i, align 8
  br label %cleanup

arm_cmn_node.exit:                                ; preds = %for.body.i
  %33 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dn.08.i, ptr %hw.i, align 8
  %tobool133.not = icmp eq ptr %dn.08.i, null
  br i1 %tobool133.not, label %arm_cmn_node.exit.cleanup_crit_edge, label %for.cond.preheader

arm_cmn_node.exit.cleanup_crit_edge:              ; preds = %arm_cmn_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %arm_cmn_node.exit
  %type137233 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.08.i, i32 0, i32 3
  %34 = ptrtoint ptr %type137233 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type137233, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %type.0)
  %cmp138234 = icmp eq i32 %35, %type.0
  br i1 %cmp138234, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_xps.i.i = getelementptr i8, ptr %1, i32 -42
  %mesh_x.i.i.i = getelementptr i8, ptr %1, i32 -44
  %mesh_y.i.i.i = getelementptr i8, ptr %1, i32 -43
  %xps.i = getelementptr i8, ptr %1, i32 -32
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dn.0235 = phi ptr [ %dn.08.i, %for.body.lr.ph ], [ %incdec.ptr157, %for.inc.for.body_crit_edge ]
  br i1 %tobool108.not, label %for.body.if.end149_crit_edge, label %land.lhs.true142

for.body.if.end149_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

land.lhs.true142:                                 ; preds = %for.body
  %id = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0235, i32 0, i32 1
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %conv129)
  %cmp145.not = icmp eq i16 %37, %conv129
  br i1 %cmp145.not, label %land.lhs.true142.if.end149_crit_edge, label %if.then147

land.lhs.true142.if.end149_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then147:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i, align 8
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %hw.i, align 8
  br label %for.inc

if.end149:                                        ; preds = %land.lhs.true142.if.end149_crit_edge, %for.body.if.end149_crit_edge
  %40 = ptrtoint ptr %num_xps.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_xps.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp.i.i = icmp eq i16 %41, 1
  br i1 %cmp.i.i, label %if.end149.arm_cmn_node_to_xp.exit_crit_edge, label %if.else.i.i

if.end149.arm_cmn_node_to_xp.exit_crit_edge:      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_node_to_xp.exit

if.else.i.i:                                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0235, i32 0, i32 1
  %42 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id.i, align 4
  %44 = ptrtoint ptr %mesh_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mesh_x.i.i.i, align 4
  %46 = ptrtoint ptr %mesh_y.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mesh_y.i.i.i, align 1
  %48 = tail call i8 @llvm.umax.i8(i8 %45, i8 %47) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp5.i.i.i = icmp ugt i8 %48, 4
  %cond7.i.i.i = select i1 %cmp5.i.i.i, i32 3, i32 2
  %conv7.i.i = zext i16 %43 to i32
  %add.i.i = add nuw nsw i32 %cond7.i.i.i, 3
  %shr8.i.i = lshr i32 %conv7.i.i, %add.i.i
  %49 = lshr i32 %conv7.i.i, 3
  %notmask.i.i = shl nsw i32 -1, %cond7.i.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and13.i.i = and i32 %49, %sub.i.i
  %phi.cast.i.i = shl nuw nsw i32 %and13.i.i, 16
  %phi.bo50.i.i = shl i32 %shr8.i.i, 24
  %50 = or i32 %phi.cast.i.i, %phi.bo50.i.i
  br label %arm_cmn_node_to_xp.exit

arm_cmn_node_to_xp.exit:                          ; preds = %if.else.i.i, %if.end149.arm_cmn_node_to_xp.exit_crit_edge
  %retval.sroa.7.0.insert.insert.i.i = phi i32 [ %50, %if.else.i.i ], [ 0, %if.end149.arm_cmn_node_to_xp.exit_crit_edge ]
  %nid.sroa.0.0.extract.shift.i = lshr i32 %retval.sroa.7.0.insert.insert.i.i, 24
  %nid.sroa.5.0.extract.shift.i = lshr i32 %retval.sroa.7.0.insert.insert.i.i, 16
  %51 = ptrtoint ptr %mesh_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mesh_x.i.i.i, align 4
  %conv.i = zext i8 %52 to i32
  %conv1.i = and i32 %nid.sroa.5.0.extract.shift.i, 255
  %mul.i = mul nuw nsw i32 %conv1.i, %conv.i
  %add.i = add nuw nsw i32 %mul.i, %nid.sroa.0.0.extract.shift.i
  %53 = ptrtoint ptr %xps.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xps.i, align 4
  %55 = getelementptr %struct.arm_cmn_node, ptr %54, i32 %add.i, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %58 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dtcs_used, align 4
  %or224 = or i8 %59, %57
  store i8 %or224, ptr %dtcs_used, align 4
  %60 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_dns, align 1
  %inc = add i8 %61, 1
  store i8 %inc, ptr %num_dns, align 1
  br i1 %tobool108.not, label %arm_cmn_node_to_xp.exit.for.inc_crit_edge, label %arm_cmn_node_to_xp.exit.for.end_crit_edge

arm_cmn_node_to_xp.exit.for.end_crit_edge:        ; preds = %arm_cmn_node_to_xp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

arm_cmn_node_to_xp.exit.for.inc_crit_edge:        ; preds = %arm_cmn_node_to_xp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %arm_cmn_node_to_xp.exit.for.inc_crit_edge, %if.then147
  %incdec.ptr157 = getelementptr %struct.arm_cmn_node, ptr %dn.0235, i32 1
  %type137 = getelementptr %struct.arm_cmn_node, ptr %dn.0235, i32 1, i32 3
  %62 = ptrtoint ptr %type137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type137, align 4
  %cmp138 = icmp eq i32 %63, %type.0
  br i1 %cmp138, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %arm_cmn_node_to_xp.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_dns158 = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %64 = ptrtoint ptr %num_dns158 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_dns158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool159.not = icmp eq i8 %65, 0
  br i1 %tobool159.not, label %if.then160, label %if.end179

if.then160:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call161 = tail call fastcc i32 @arm_cmn_nid(ptr noundef %add.ptr, i16 noundef zeroext %conv129)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_cmn_event_init.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_cmn_event_init, %if.then169)) #14
          to label %cleanup [label %if.then169], !srcloc !668

if.then169:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #16
  %nid.sroa.7.0.extract.shift = lshr i32 %call161, 8
  %nid.sroa.5.0.extract.shift = lshr i32 %call161, 16
  %nid.sroa.0.0.extract.shift = lshr i32 %call161, 24
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  %68 = trunc i64 %and127 to i32
  %conv170 = and i32 %68, 65535
  %conv172 = and i32 %nid.sroa.5.0.extract.shift, 255
  %conv173 = and i32 %nid.sroa.7.0.extract.shift, 255
  %conv175 = and i32 %call161, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arm_cmn_event_init.__UNIQUE_ID_ddebug403, ptr noundef %67, ptr noundef nonnull @.str.664, i32 noundef %conv170, i32 noundef %nid.sroa.0.0.extract.shift, i32 noundef %conv172, i32 noundef %conv173, i32 noundef %conv175, i32 noundef %type.0) #14
  br label %cleanup

if.end179:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call180 = tail call fastcc i32 @arm_cmn_validate_group(ptr noundef %add.ptr, ptr noundef %event)
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %if.then169, %if.then160, %arm_cmn_node.exit.cleanup_crit_edge, %arm_cmn_node.exit.thread, %if.then33.cleanup_crit_edge, %do.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call180, %if.end179 ], [ -2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %do.end23.cleanup_crit_edge ], [ -22, %if.then33.cleanup_crit_edge ], [ -22, %arm_cmn_node.exit.cleanup_crit_edge ], [ -22, %if.then169 ], [ -22, %arm_cmn_node.exit.thread ], [ -22, %if.then160 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_event_add(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %dtc1 = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %dtc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc1, align 4
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %config, align 8
  %conv407 = and i64 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %conv407)
  %cmp = icmp eq i64 %conv407, 3
  br i1 %cmp, label %while.cond.preheader, label %while.cond31.preheader

while.cond31.preheader:                           ; preds = %entry
  %arrayidx32 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %while.cond31.preheader.while.end40_crit_edge, label %while.body34

while.cond31.preheader.while.end40_crit_edge:     ; preds = %while.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.cond.preheader:                             ; preds = %entry
  %num_dtcs = getelementptr i8, ptr %1, i32 -16
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %cycles = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 %i.0, i32 5
  %8 = ptrtoint ptr %cycles to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cycles, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %i.0, 1
  %10 = ptrtoint ptr %num_dtcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_dtcs, align 4
  %cmp18 = icmp eq i32 %inc, %11
  br i1 %cmp18, label %while.body.cleanup283_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.body.cleanup283_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup283

while.end:                                        ; preds = %while.cond
  %12 = ptrtoint ptr %cycles to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event, ptr %cycles, align 4
  %dtc_idx24 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %dtc_idx24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %dtc_idx24, align 8
  %shl = shl nuw i32 1, %i.0
  %conv25 = trunc i32 %shl to i8
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv25, ptr %dtcs_used, align 4
  %and26 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %while.end.cleanup283_crit_edge, label %if.then28

while.end.cleanup283_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup283

if.then28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @arm_cmn_event_start(ptr noundef %event, i32 noundef 0)
  br label %cleanup283

while.body34:                                     ; preds = %while.cond31.preheader
  %arrayidx32.1 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx32.1, align 4
  %tobool33.not.1 = icmp eq ptr %16, null
  br i1 %tobool33.not.1, label %while.body34.while.end40_crit_edge, label %while.body34.1

while.body34.while.end40_crit_edge:               ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.1:                                   ; preds = %while.body34
  %arrayidx32.2 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx32.2, align 4
  %tobool33.not.2 = icmp eq ptr %18, null
  br i1 %tobool33.not.2, label %while.body34.1.while.end40_crit_edge, label %while.body34.2

while.body34.1.while.end40_crit_edge:             ; preds = %while.body34.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.2:                                   ; preds = %while.body34.1
  %arrayidx32.3 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx32.3, align 4
  %tobool33.not.3 = icmp eq ptr %20, null
  br i1 %tobool33.not.3, label %while.body34.2.while.end40_crit_edge, label %while.body34.3

while.body34.2.while.end40_crit_edge:             ; preds = %while.body34.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.3:                                   ; preds = %while.body34.2
  %arrayidx32.4 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32.4, align 4
  %tobool33.not.4 = icmp eq ptr %22, null
  br i1 %tobool33.not.4, label %while.body34.3.while.end40_crit_edge, label %while.body34.4

while.body34.3.while.end40_crit_edge:             ; preds = %while.body34.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.4:                                   ; preds = %while.body34.3
  %arrayidx32.5 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 5
  %23 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx32.5, align 4
  %tobool33.not.5 = icmp eq ptr %24, null
  br i1 %tobool33.not.5, label %while.body34.4.while.end40_crit_edge, label %while.body34.5

while.body34.4.while.end40_crit_edge:             ; preds = %while.body34.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.5:                                   ; preds = %while.body34.4
  %arrayidx32.6 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx32.6, align 4
  %tobool33.not.6 = icmp eq ptr %26, null
  br i1 %tobool33.not.6, label %while.body34.5.while.end40_crit_edge, label %while.body34.6

while.body34.5.while.end40_crit_edge:             ; preds = %while.body34.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.body34.6:                                   ; preds = %while.body34.5
  %arrayidx32.7 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx32.7, align 4
  %tobool33.not.7 = icmp eq ptr %28, null
  br i1 %tobool33.not.7, label %while.body34.6.while.end40_crit_edge, label %while.body34.6.cleanup283_crit_edge

while.body34.6.cleanup283_crit_edge:              ; preds = %while.body34.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup283

while.body34.6.while.end40_crit_edge:             ; preds = %while.body34.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end40

while.end40:                                      ; preds = %while.body34.6.while.end40_crit_edge, %while.body34.5.while.end40_crit_edge, %while.body34.4.while.end40_crit_edge, %while.body34.3.while.end40_crit_edge, %while.body34.2.while.end40_crit_edge, %while.body34.1.while.end40_crit_edge, %while.body34.while.end40_crit_edge, %while.cond31.preheader.while.end40_crit_edge
  %dtc_idx.0.lcssa = phi i32 [ 0, %while.cond31.preheader.while.end40_crit_edge ], [ 1, %while.body34.while.end40_crit_edge ], [ 2, %while.body34.1.while.end40_crit_edge ], [ 3, %while.body34.2.while.end40_crit_edge ], [ 4, %while.body34.3.while.end40_crit_edge ], [ 5, %while.body34.4.while.end40_crit_edge ], [ 6, %while.body34.5.while.end40_crit_edge ], [ 7, %while.body34.6.while.end40_crit_edge ]
  %dtc_idx41 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 4
  %29 = ptrtoint ptr %dtc_idx41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dtc_idx.0.lcssa, ptr %dtc_idx41, align 8
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %30 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_dns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp44429.not = icmp eq i8 %31, 0
  br i1 %cmp44429.not, label %while.end40.for.end_crit_edge, label %for.body.lr.ph

while.end40.for.end_crit_edge:                    ; preds = %while.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end40
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i, align 8
  %dtms = getelementptr i8, ptr %1, i32 -24
  %dtm_offset = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %trunc = trunc i64 %5 to i16
  %conv129 = trunc i32 %dtc_idx.0.lcssa to i8
  %num_xps.i = getelementptr i8, ptr %1, i32 -42
  %ports_used.i = getelementptr i8, ptr %1, i32 -37
  %multi_dtm = getelementptr i8, ptr %1, i32 -38
  %model = getelementptr i8, ptr %1, i32 -48
  %dtm_idx223 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  %34 = shl nuw nsw i32 %dtc_idx.0.lcssa, 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dn.0434 = phi ptr [ %33, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.1430 = phi i32 [ 0, %for.body.lr.ph ], [ %inc278, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %dtms to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dtms, align 4
  %dtm46 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0434, i32 0, i32 4
  %37 = ptrtoint ptr %dtm46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dtm46, align 4
  %arrayidx47 = getelementptr %struct.arm_cmn_dtm, ptr %36, i32 %38
  %39 = ptrtoint ptr %dtm_offset to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dtm_offset, align 2
  %conv48 = zext i8 %40 to i32
  %add.ptr49 = getelementptr %struct.arm_cmn_dtm, ptr %arrayidx47, i32 %conv48
  %pmu_config_low = getelementptr inbounds %struct.arm_cmn_dtm, ptr %add.ptr49, i32 0, i32 1
  %41 = ptrtoint ptr %pmu_config_low to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pmu_config_low, align 4
  %and52 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.body.while.end60_crit_edge, label %while.body54

for.body.while.end60_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end60

while.body54:                                     ; preds = %for.body
  %and52.1 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.1)
  %tobool53.not.1 = icmp eq i32 %and52.1, 0
  br i1 %tobool53.not.1, label %while.body54.while.end60_crit_edge, label %while.body54.1

while.body54.while.end60_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end60

while.body54.1:                                   ; preds = %while.body54
  %and52.2 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.2)
  %tobool53.not.2 = icmp eq i32 %and52.2, 0
  br i1 %tobool53.not.2, label %while.body54.1.while.end60_crit_edge, label %while.body54.2

while.body54.1.while.end60_crit_edge:             ; preds = %while.body54.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end60

while.body54.2:                                   ; preds = %while.body54.1
  %and52.3 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.3)
  %tobool53.not.3 = icmp eq i32 %and52.3, 0
  br i1 %tobool53.not.3, label %while.body54.2.while.end60_crit_edge, label %while.body54.2.free_dtms_crit_edge

while.body54.2.free_dtms_crit_edge:               ; preds = %while.body54.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dtms

while.body54.2.while.end60_crit_edge:             ; preds = %while.body54.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end60

while.end60:                                      ; preds = %while.body54.2.while.end60_crit_edge, %while.body54.1.while.end60_crit_edge, %while.body54.while.end60_crit_edge, %for.body.while.end60_crit_edge
  %dtm_idx.0.lcssa = phi i32 [ 0, %for.body.while.end60_crit_edge ], [ 1, %while.body54.while.end60_crit_edge ], [ 2, %while.body54.1.while.end60_crit_edge ], [ 3, %while.body54.2.while.end60_crit_edge ]
  %add.lcssa = phi i32 [ 4, %for.body.while.end60_crit_edge ], [ 5, %while.body54.while.end60_crit_edge ], [ 6, %while.body54.1.while.end60_crit_edge ], [ 7, %while.body54.2.while.end60_crit_edge ]
  %shl51.lcssa = phi i32 [ 16, %for.body.while.end60_crit_edge ], [ 32, %while.body54.while.end60_crit_edge ], [ 64, %while.body54.1.while.end60_crit_edge ], [ 128, %while.body54.2.while.end60_crit_edge ]
  %43 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.710)
  switch i16 %trunc, label %if.else137 [
    i16 6, label %while.end60.for.inc_crit_edge
    i16 30576, label %if.then67
  ]

while.end60.for.inc_crit_edge:                    ; preds = %while.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then67:                                        ; preds = %while.end60
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %config, align 8
  %and.i = lshr i64 %45, 16
  %shr.i = and i64 %and.i, 255
  %and22.i = lshr i64 %45, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i, %shr23.i
  %conv.i = trunc i64 %add.i to i32
  %and.i375 = lshr i64 %45, 48
  %46 = trunc i64 %and.i375 to i32
  %47 = trunc i64 %and22.i to i32
  %conv55.i = and i32 %47, 1
  %sh.diff = lshr i64 %45, 50
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %48 = and i32 %tr.sh.diff, 14
  %shl165.i = shl nuw nsw i32 %47, 4
  %and166.i = and i32 %shl165.i, 16
  %sh.diff.i = lshr i64 %45, 52
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %and192.i = and i32 %tr.sh.diff.i, 32
  %conv.i376 = shl nuw i32 %46, 16
  %49 = and i32 %conv.i376, 393216
  %50 = and i32 %46, 1
  %51 = or i32 %and192.i, %50
  %52 = or i32 %51, %48
  %53 = or i32 %52, %and166.i
  %conv225.i = or i32 %53, %49
  %54 = and i64 %45, 251658240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool226.not.i = icmp ne i64 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55.i)
  %tobool227.not.i = icmp eq i32 %conv55.i, 0
  %or.cond250.i = select i1 %tobool226.not.i, i1 %tobool227.not.i, i1 false
  %or229.i = or i32 %conv225.i, 64
  %config.0.i = select i1 %or.cond250.i, i32 %or229.i, i32 %conv225.i
  %wp_event = getelementptr inbounds %struct.arm_cmn_dtm, ptr %add.ptr49, i32 0, i32 3
  %arrayidx71 = getelementptr [4 x i8], ptr %wp_event, i32 0, i32 %conv.i
  %55 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp73 = icmp sgt i8 %56, -1
  br i1 %cmp73, label %if.then67.free_dtms_crit_edge, label %if.end76

if.then67.free_dtms_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dtms

if.end76:                                         ; preds = %if.then67
  %xor = xor i32 %conv.i, 1
  %arrayidx78 = getelementptr [4 x i8], ptr %wp_event, i32 0, i32 %xor
  %57 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp80 = icmp sgt i8 %58, -1
  br i1 %cmp80, label %do.end96, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end96:                                         ; preds = %if.end76
  %conv79405 = zext i8 %58 to i32
  %arrayidx119 = getelementptr %struct.arm_cmn_dtc, ptr %3, i32 0, i32 4, i32 %conv79405
  %59 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx119, align 4
  %config121 = getelementptr inbounds %struct.perf_event, ptr %60, i32 0, i32 21, i32 2
  %61 = ptrtoint ptr %config121 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %config121, align 8
  %and100374 = xor i64 %62, %45
  %63 = and i64 %and100374, 251658240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %cmp124.not = icmp eq i64 %63, 0
  br i1 %cmp124.not, label %do.end96.cleanup_crit_edge, label %do.end96.free_dtms_crit_edge

do.end96.free_dtms_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dtms

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end96.cleanup_crit_edge, %if.end76.cleanup_crit_edge
  %64 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv129, ptr %arrayidx71, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %config.0.i)
  %66 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr49, align 4
  %mul = mul nuw nsw i32 %conv.i, 24
  %add132 = add nuw nsw i32 %mul, 416
  %add.ptr134 = getelementptr i8, ptr %67, i32 %add132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %65) #14, !srcloc !663
  br label %for.inc

if.else137:                                       ; preds = %while.end60
  %id = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0434, i32 0, i32 1
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %id, align 4
  %70 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_xps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %71)
  %cmp.i = icmp eq i16 %71, 1
  br i1 %cmp.i, label %if.then.i378, label %if.else.i

if.then.i378:                                     ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #16
  %conv2.i = zext i16 %69 to i32
  %72 = lshr i32 %conv2.i, 2
  %and.i377 = and i32 %72, 7
  %and5.i = and i32 %conv2.i, 3
  br label %arm_cmn_nid.exit

if.else.i:                                        ; preds = %if.else137
  %73 = ptrtoint ptr %ports_used.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ports_used.i, align 1
  %75 = and i8 %74, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i380 = icmp eq i8 %75, 0
  br i1 %tobool.not.i380, label %if.else28.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i = zext i16 %69 to i32
  %76 = lshr i32 %conv7.i, 1
  %and21.i = and i32 %76, 3
  %and25.i = and i32 %conv7.i, 1
  br label %arm_cmn_nid.exit

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = lshr i16 %69, 2
  %78 = and i16 %77, 1
  %conv32.i = zext i16 %78 to i32
  %79 = and i16 %69, 3
  %conv36.i = zext i16 %79 to i32
  br label %arm_cmn_nid.exit

arm_cmn_nid.exit:                                 ; preds = %if.else28.i, %if.then18.i, %if.then.i378
  %retval.sroa.7.1.i = phi i32 [ %and.i377, %if.then.i378 ], [ %and21.i, %if.then18.i ], [ %conv32.i, %if.else28.i ]
  %retval.sroa.11.1.i = phi i32 [ %and5.i, %if.then.i378 ], [ %and25.i, %if.then18.i ], [ %conv36.i, %if.else28.i ]
  %retval.sroa.7.0.insert.ext.i = shl nuw nsw i32 %retval.sroa.7.1.i, 8
  %retval.sroa.0.0.insert.insert.i = or i32 %retval.sroa.11.1.i, %retval.sroa.7.0.insert.ext.i
  %80 = ptrtoint ptr %multi_dtm to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %multi_dtm, align 2, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool139.not = icmp eq i8 %81, 0
  %add144 = or i32 %dtm_idx.0.lcssa, 16
  %82 = lshr i32 %retval.sroa.0.0.insert.insert.i, 4
  %conv146.v = select i1 %tobool139.not, i32 4080, i32 16
  %conv146 = and i32 %82, %conv146.v
  %conv149 = shl nuw nsw i32 %retval.sroa.11.1.i, 2
  %shl150 = and i32 %conv149, 1020
  %add148 = add nuw nsw i32 %add144, %shl150
  %add151 = add nuw nsw i32 %add148, %conv146
  %83 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %model, align 4
  %85 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %config, align 8
  %87 = trunc i64 %86 to i32
  %88 = lshr i32 %87, 16
  %conv172 = and i32 %88, 255
  %89 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.711)
  switch i16 %trunc, label %arm_cmn_nid.exit.for.inc_crit_edge [
    i16 1, label %if.then.i382
    i16 5, label %arm_cmn_is_occup_event.exit
  ]

arm_cmn_nid.exit.for.inc_crit_edge:               ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i382:                                     ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp1.i = icmp eq i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv172)
  %cmp2.i = icmp eq i32 %conv172, 5
  %or.cond.i381 = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i381, label %if.then.i382.if.then174_crit_edge, label %lor.rhs.i

if.then.i382.if.then174_crit_edge:                ; preds = %if.then.i382
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then174

lor.rhs.i:                                        ; preds = %if.then.i382
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp3.i = icmp eq i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv172)
  %cmp4.i = icmp eq i32 %conv172, 12
  %spec.select.i = and i1 %cmp3.i, %cmp4.i
  br i1 %spec.select.i, label %lor.rhs.i.if.then174_crit_edge, label %lor.rhs.i.for.inc_crit_edge

lor.rhs.i.for.inc_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.rhs.i.if.then174_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then174

arm_cmn_is_occup_event.exit:                      ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv172)
  %cmp7.i = icmp eq i32 %conv172, 15
  br i1 %cmp7.i, label %arm_cmn_is_occup_event.exit.if.then174_crit_edge, label %arm_cmn_is_occup_event.exit.for.inc_crit_edge

arm_cmn_is_occup_event.exit.for.inc_crit_edge:    ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

arm_cmn_is_occup_event.exit.if.then174_crit_edge: ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then174

if.then174:                                       ; preds = %arm_cmn_is_occup_event.exit.if.then174_crit_edge, %lor.rhs.i.if.then174_crit_edge, %if.then.i382.if.then174_crit_edge
  %and193 = lshr i64 %86, 24
  %90 = trunc i64 %and193 to i8
  %conv195 = and i8 %90, 15
  %91 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0434, i32 0, i32 5
  %occupid_count = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0434, i32 0, i32 5, i32 0, i32 1
  %92 = ptrtoint ptr %occupid_count to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %occupid_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp197 = icmp eq i8 %93, 0
  br i1 %cmp197, label %if.then199, label %if.else203

if.then199:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv195, ptr %91, align 4
  %conv200 = zext i8 %conv195 to i32
  %95 = shl nuw nsw i32 %conv200, 24
  %96 = ptrtoint ptr %dn.0434 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dn.0434, align 4
  %add.ptr202 = getelementptr i8, ptr %97, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %95) #14, !srcloc !663
  br label %cleanup214.thread

if.else203:                                       ; preds = %if.then174
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %91, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %conv195)
  %cmp207.not = icmp eq i8 %99, %conv195
  br i1 %cmp207.not, label %if.else203.cleanup214.thread_crit_edge, label %if.else203.free_dtms_crit_edge

if.else203.free_dtms_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dtms

if.else203.cleanup214.thread_crit_edge:           ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup214.thread

cleanup214.thread:                                ; preds = %if.else203.cleanup214.thread_crit_edge, %if.then199
  %100 = ptrtoint ptr %occupid_count to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %occupid_count, align 1
  %inc213 = add i8 %101, 1
  store i8 %inc213, ptr %occupid_count, align 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup214.thread, %arm_cmn_is_occup_event.exit.for.inc_crit_edge, %lor.rhs.i.for.inc_crit_edge, %arm_cmn_nid.exit.for.inc_crit_edge, %cleanup, %while.end60.for.inc_crit_edge
  %input_sel.2 = phi i32 [ %conv.i, %cleanup ], [ %add.lcssa, %while.end60.for.inc_crit_edge ], [ %add151, %cleanup214.thread ], [ %add151, %lor.rhs.i.for.inc_crit_edge ], [ %add151, %arm_cmn_is_occup_event.exit.for.inc_crit_edge ], [ %add151, %arm_cmn_nid.exit.for.inc_crit_edge ]
  %conv.i383 = zext i32 %dtm_idx.0.lcssa to i64
  %rem.i = shl nuw i32 %i.1430, 1
  %mul.i = and i32 %rem.i, 62
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl nuw i64 %conv.i383, %sh_prom.i
  %div2.i = lshr i32 %i.1430, 5
  %arrayidx.i = getelementptr i64, ptr %dtm_idx223, i32 %div2.i
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx.i, align 8
  %or.i = or i64 %103, %shl.i
  store i64 %or.i, ptr %arrayidx.i, align 8
  %conv224 = trunc i32 %input_sel.2 to i8
  %104 = getelementptr inbounds %struct.arm_cmn_dtm, ptr %add.ptr49, i32 0, i32 2
  %arrayidx225 = getelementptr [4 x i8], ptr %104, i32 0, i32 %dtm_idx.0.lcssa
  %105 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv224, ptr %arrayidx225, align 1
  %mul226 = shl nuw nsw i32 %dtm_idx.0.lcssa, 2
  %shl227 = shl nuw nsw i32 458752, %mul226
  %106 = ptrtoint ptr %pmu_config_low to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pmu_config_low, align 4
  %108 = xor i32 %shl227, -1
  %conv231 = and i32 %107, %108
  %shl257 = shl i32 %34, %mul226
  %conv260 = or i32 %shl51.lcssa, %shl257
  %or264 = or i32 %conv260, %conv231
  store i32 %or264, ptr %pmu_config_low, align 4
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %104, align 4
  %111 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr49, align 4
  %add.ptr271 = getelementptr i8, ptr %112, i32 528
  %113 = tail call i32 @llvm.bswap.i32(i32 %or264) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr271, i32 %113) #14, !srcloc !663
  %add.ptr.i = getelementptr i8, ptr %112, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %110) #14, !srcloc !663
  %inc278 = add nuw nsw i32 %i.1430, 1
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.0434, i32 1
  %114 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_dns, align 1
  %conv43 = zext i8 %115 to i32
  %cmp44 = icmp ult i32 %inc278, %conv43
  br i1 %cmp44, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end40.for.end_crit_edge
  %116 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pmu, align 8
  %118 = ptrtoint ptr %dtc_idx41 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dtc_idx41, align 8
  %120 = shl i32 %119, 1
  %mul.i385 = and i32 %120, 1073741820
  %rem.i386 = and i32 %119, 1
  %add.i387 = or i32 %mul.i385, %rem.i386
  %mul2.i = shl nuw i32 %add.i387, 2
  %add3.i = add i32 %mul2.i, 8192
  %dtcs_used.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %121 = ptrtoint ptr %dtcs_used.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %dtcs_used.i, align 4
  %123 = and i8 %122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not26.i = icmp eq i8 %123, 0
  br i1 %tobool.not26.i, label %for.end.for.end.i_crit_edge, label %for.body.lr.ph.i

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %dtc.i = getelementptr i8, ptr %117, i32 -20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %124 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dtc.i, align 4
  %arrayidx.i388 = getelementptr %struct.arm_cmn_dtc, ptr %125, i32 %i.027.i
  %126 = ptrtoint ptr %arrayidx.i388 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i388, align 4
  %add.ptr4.i = getelementptr i8, ptr %127, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 128) #14, !srcloc !663
  %128 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dtc.i, align 4
  %130 = ptrtoint ptr %dtc_idx41 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dtc_idx41, align 8
  %arrayidx8.i = getelementptr %struct.arm_cmn_dtc, ptr %129, i32 %i.027.i, i32 4, i32 %131
  %132 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %event, ptr %arrayidx8.i, align 4
  %inc.i = add i32 %i.027.i, 1
  %133 = ptrtoint ptr %dtcs_used.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dtcs_used.i, align 4
  %conv.i389 = zext i8 %134 to i32
  %shl.i390 = shl nuw i32 1, %inc.i
  %and.i391 = and i32 %shl.i390, %conv.i389
  %tobool.not.i392 = icmp eq i32 %and.i391, 0
  br i1 %tobool.not.i392, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge
  %135 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %num_dns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp2.not.i.i = icmp eq i8 %136, 0
  br i1 %cmp2.not.i.i, label %for.end.i.arm_cmn_init_counter.exit_crit_edge, label %for.body.lr.ph.i.i

for.end.i.arm_cmn_init_counter.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_init_counter.exit

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %137 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw.i, align 8
  %dtms.i.i = getelementptr i8, ptr %117, i32 -24
  %dtm_offset.i.i = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %dtm_idx11.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.07.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %reg.06.i.i = phi i64 [ -1, %for.body.lr.ph.i.i ], [ %reg.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %dn.04.i.i = phi ptr [ %138, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %dtm.03.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %dtm.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %139 = ptrtoint ptr %dtms.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dtms.i.i, align 4
  %dtm3.i.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.04.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %dtm3.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dtm3.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.arm_cmn_dtm, ptr %140, i32 %142
  %cmp4.not.i.i = icmp eq ptr %dtm.03.i.i, %arrayidx.i.i
  br i1 %cmp4.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %143 = ptrtoint ptr %dtm_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %dtm_offset.i.i, align 2
  %conv9.i.i = zext i8 %144 to i32
  %add.ptr.i.i = getelementptr %struct.arm_cmn_dtm, ptr %arrayidx.i.i, i32 %conv9.i.i
  %145 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %146, i32 544
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #14, !srcloc !667
  %add.ptr.i.i.i = getelementptr i8, ptr %146, i32 548
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !667
  %149 = zext i32 %148 to i64
  %150 = zext i32 %147 to i64
  %151 = shl nuw i64 %150, 32
  %152 = or i64 %151, %149
  %153 = tail call i64 @llvm.bswap.i64(i64 %152) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %dtm.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %dtm.03.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  %reg.1.i.i = phi i64 [ %153, %if.then.i.i ], [ %reg.06.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  %div2.i.i.i = lshr i32 %i.05.i.i, 5
  %arrayidx.i.i.i = getelementptr i64, ptr %dtm_idx11.i.i, i32 %div2.i.i.i
  %154 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx.i.i.i, align 8
  %rem.i.i.i = shl nuw i32 %i.05.i.i, 1
  %mul.i.i.i = and i32 %rem.i.i.i, 62
  %sh_prom.i.i.i = zext i32 %mul.i.i.i to i64
  %shr.i.i.i = lshr i64 %155, %sh_prom.i.i.i
  %156 = trunc i64 %shr.i.i.i to i32
  %conv.i.i.i = shl i32 %156, 4
  %mul.i.i = and i32 %conv.i.i.i, 48
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %reg.1.i.i, %sh_prom.i.i
  %conv14.i.i = and i64 %shr.i.i, 65535
  %add.i.i = add i64 %conv14.i.i, %count.07.i.i
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.arm_cmn_node, ptr %dn.04.i.i, i32 1
  %157 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %num_dns, align 1
  %conv.i.i = zext i8 %158 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.arm_cmn_init_counter.exit_crit_edge

if.end.i.i.arm_cmn_init_counter.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_init_counter.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

arm_cmn_init_counter.exit:                        ; preds = %if.end.i.i.arm_cmn_init_counter.exit_crit_edge, %for.end.i.arm_cmn_init_counter.exit_crit_edge
  %count.0.lcssa.i.i = phi i64 [ 0, %for.end.i.arm_cmn_init_counter.exit_crit_edge ], [ %add.i.i, %if.end.i.i.arm_cmn_init_counter.exit_crit_edge ]
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef %count.0.lcssa.i.i) #14
  %and279 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %arm_cmn_init_counter.exit.cleanup283_crit_edge, label %if.then281

arm_cmn_init_counter.exit.cleanup283_crit_edge:   ; preds = %arm_cmn_init_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup283

if.then281:                                       ; preds = %arm_cmn_init_counter.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @arm_cmn_event_start(ptr noundef %event, i32 noundef 0)
  br label %cleanup283

free_dtms:                                        ; preds = %if.else203.free_dtms_crit_edge, %do.end96.free_dtms_crit_edge, %if.then67.free_dtms_crit_edge, %while.body54.2.free_dtms_crit_edge
  tail call fastcc void @arm_cmn_event_clear(ptr noundef %add.ptr, ptr noundef %event, i32 noundef %i.1430)
  br label %cleanup283

cleanup283:                                       ; preds = %free_dtms, %if.then281, %arm_cmn_init_counter.exit.cleanup283_crit_edge, %while.body34.6.cleanup283_crit_edge, %if.then28, %while.end.cleanup283_crit_edge, %while.body.cleanup283_crit_edge
  %retval.0 = phi i32 [ -28, %free_dtms ], [ 0, %if.then28 ], [ 0, %while.end.cleanup283_crit_edge ], [ 0, %if.then281 ], [ 0, %arm_cmn_init_counter.exit.cleanup283_crit_edge ], [ -28, %while.body34.6.cleanup283_crit_edge ], [ -28, %while.body.cleanup283_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_event_del(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  tail call void @arm_cmn_event_stop(ptr noundef %event, i32 noundef 4)
  %conv24 = and i64 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %conv24)
  %cmp = icmp eq i64 %conv24, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc = getelementptr i8, ptr %1, i32 -20
  %4 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtc, align 4
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtcs_used, align 4
  %conv15 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv15, i1 false) #14, !range !669
  %cycles = getelementptr %struct.arm_cmn_dtc, ptr %5, i32 %8, i32 5
  %9 = ptrtoint ptr %cycles to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cycles, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %10 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_dns, align 1
  %conv17 = zext i8 %11 to i32
  tail call fastcc void @arm_cmn_event_clear(ptr noundef %add.ptr, ptr noundef %event, i32 noundef %conv17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_event_start(ptr nocapture noundef readonly %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %config, align 8
  %2 = trunc i64 %1 to i16
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.712)
  switch i16 %2, label %if.else76 [
    i16 3, label %if.then
    i16 30576, label %if.then22
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %4 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu, align 8
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtcs_used, align 4
  %conv15 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv15, i1 false) #14, !range !669
  %dtc = getelementptr i8, ptr %5, i32 -20
  %9 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dtc, align 4
  %arrayidx = getelementptr %struct.arm_cmn_dtc, ptr %10, i32 %8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #14, !srcloc !663
  %add.ptr.i = getelementptr i8, ptr %12, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #14, !srcloc !663
  %13 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dtc, align 4
  %cc_active = getelementptr %struct.arm_cmn_dtc, ptr %14, i32 %8, i32 3
  %15 = ptrtoint ptr %cc_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cc_active, align 4
  br label %if.end114

if.then22:                                        ; preds = %entry
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %16 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_dns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp64153.not = icmp eq i8 %17, 0
  br i1 %cmp64153.not, label %if.then22.if.end114_crit_edge, label %for.body.lr.ph

if.then22.if.end114_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

for.body.lr.ph:                                   ; preds = %if.then22
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 8
  %20 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %and.i = lshr i64 %1, 16
  %shr.i = and i64 %and.i, 255
  %and22.i = lshr i64 %1, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i, %shr23.i
  %conv.i = trunc i64 %add.i to i32
  %dtm_offset = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %mul69 = mul nuw nsw i32 %conv.i, 24
  %add70 = add nuw nsw i32 %mul69, 424
  %conv.i142 = trunc i64 %25 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv.i142) #14
  %shr.i143 = lshr i64 %25, 32
  %conv1.i = trunc i64 %shr.i143 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #14
  %add74 = add nuw nsw i32 %mul69, 432
  %conv.i145 = trunc i64 %22 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv.i145) #14
  %shr.i146 = lshr i64 %22, 32
  %conv1.i147 = trunc i64 %shr.i146 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv1.i147) #14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %dn.0155 = phi ptr [ %19, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %dn.0155 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dn.0155, align 4
  %32 = ptrtoint ptr %dtm_offset to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dtm_offset, align 2
  %conv67 = zext i8 %33 to i32
  %mul = shl nuw nsw i32 %conv67, 9
  %add.ptr68 = getelementptr i8, ptr %31, i32 %mul
  %add.ptr71 = getelementptr i8, ptr %add.ptr68, i32 %add70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %26) #14, !srcloc !663
  %add.ptr.i144 = getelementptr i8, ptr %add.ptr71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %27) #14, !srcloc !663
  %add.ptr75 = getelementptr i8, ptr %add.ptr68, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %28) #14, !srcloc !663
  %add.ptr.i148 = getelementptr i8, ptr %add.ptr75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %29) #14, !srcloc !663
  %inc = add nuw nsw i32 %i.0154, 1
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.0155, i32 1
  %34 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_dns, align 1
  %conv63 = zext i8 %35 to i32
  %cmp64 = icmp ult i32 %inc, %conv63
  br i1 %cmp64, label %for.body.for.body_crit_edge, label %for.body.if.end114_crit_edge

for.body.if.end114_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else76:                                        ; preds = %entry
  %num_dns79 = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %36 = ptrtoint ptr %num_dns79 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_dns79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp81157.not = icmp eq i8 %37, 0
  br i1 %cmp81157.not, label %if.else76.if.end114_crit_edge, label %for.body83.lr.ph

if.else76.if.end114_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

for.body83.lr.ph:                                 ; preds = %if.else76
  %38 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i, align 8
  %dtm_idx84 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  br label %for.body83

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %for.body83.lr.ph
  %dn.1159 = phi ptr [ %39, %for.body83.lr.ph ], [ %incdec.ptr112, %for.body83.for.body83_crit_edge ]
  %i.1158 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc111, %for.body83.for.body83_crit_edge ]
  %div2.i = lshr i32 %i.1158, 5
  %arrayidx.i = getelementptr i64, ptr %dtm_idx84, i32 %div2.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i, align 8
  %rem.i = shl nuw i32 %i.1158, 1
  %mul.i = and i32 %rem.i, 62
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i149 = lshr i64 %41, %sh_prom.i
  %42 = trunc i64 %shr.i149 to i32
  %conv.i150 = and i32 %42, 3
  %43 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %config, align 8
  %and104 = lshr i64 %44, 16
  %conv106 = trunc i64 %and104 to i8
  %45 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.1159, i32 0, i32 6
  %arrayidx107 = getelementptr [4 x i8], ptr %45, i32 0, i32 %conv.i150
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv106, ptr %arrayidx107, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %45, align 4
  %49 = ptrtoint ptr %dn.1159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dn.1159, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #14, !srcloc !663
  %inc111 = add nuw nsw i32 %i.1158, 1
  %incdec.ptr112 = getelementptr %struct.arm_cmn_node, ptr %dn.1159, i32 1
  %51 = ptrtoint ptr %num_dns79 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_dns79, align 1
  %conv80 = zext i8 %52 to i32
  %cmp81 = icmp ult i32 %inc111, %conv80
  br i1 %cmp81, label %for.body83.for.body83_crit_edge, label %for.body83.if.end114_crit_edge

for.body83.if.end114_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body83

if.end114:                                        ; preds = %for.body83.if.end114_crit_edge, %if.else76.if.end114_crit_edge, %for.body.if.end114_crit_edge, %if.then22.if.end114_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_event_stop(ptr noundef %event, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %config, align 8
  %2 = trunc i64 %1 to i16
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.713)
  switch i16 %2, label %if.else34 [
    i16 3, label %if.then
    i16 30576, label %if.then19
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %4 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu, align 8
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtcs_used, align 4
  %conv15 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv15, i1 false) #14, !range !669
  %dtc = getelementptr i8, ptr %5, i32 -20
  %9 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dtc, align 4
  %cc_active = getelementptr %struct.arm_cmn_dtc, ptr %10, i32 %8, i32 3
  %11 = ptrtoint ptr %cc_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cc_active, align 4
  br label %if.end51

if.then19:                                        ; preds = %entry
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %12 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_dns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2380.not = icmp eq i8 %13, 0
  br i1 %cmp2380.not, label %if.then19.if.end51_crit_edge, label %for.body.lr.ph

if.then19.if.end51_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.lr.ph:                                   ; preds = %if.then19
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 8
  %and.i = lshr i64 %1, 16
  %shr.i = and i64 %and.i, 255
  %and22.i = lshr i64 %1, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i, %shr23.i
  %conv.i = trunc i64 %add.i to i32
  %dtm_offset = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %mul27 = mul nuw nsw i32 %conv.i, 24
  %add28 = add nuw nsw i32 %mul27, 432
  %add32 = add nuw nsw i32 %mul27, 424
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dn.081 = phi ptr [ %15, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %dn.081 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dn.081, align 4
  %18 = ptrtoint ptr %dtm_offset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dtm_offset, align 2
  %conv25 = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv25, 9
  %add.ptr26 = getelementptr i8, ptr %17, i32 %mul
  %add.ptr29 = getelementptr i8, ptr %add.ptr26, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #14, !srcloc !663
  %add.ptr.i = getelementptr i8, ptr %add.ptr29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !663
  %add.ptr33 = getelementptr i8, ptr %add.ptr26, i32 %add32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1) #14, !srcloc !663
  %add.ptr.i75 = getelementptr i8, ptr %add.ptr33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 -1) #14, !srcloc !663
  %inc = add nuw nsw i32 %i.082, 1
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.081, i32 1
  %20 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_dns, align 1
  %conv22 = zext i8 %21 to i32
  %cmp23 = icmp ult i32 %inc, %conv22
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.if.end51_crit_edge

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else34:                                        ; preds = %entry
  %num_dns37 = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %22 = ptrtoint ptr %num_dns37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_dns37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp3984.not = icmp eq i8 %23, 0
  br i1 %cmp3984.not, label %if.else34.if.end51_crit_edge, label %for.body41.lr.ph

if.else34.if.end51_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body41.lr.ph:                                 ; preds = %if.else34
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 8
  %dtm_idx42 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %i.186 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc48, %for.body41.for.body41_crit_edge ]
  %dn.185 = phi ptr [ %25, %for.body41.lr.ph ], [ %incdec.ptr49, %for.body41.for.body41_crit_edge ]
  %div2.i = lshr i32 %i.186, 5
  %arrayidx.i = getelementptr i64, ptr %dtm_idx42, i32 %div2.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i, align 8
  %rem.i = shl nuw i32 %i.186, 1
  %mul.i = and i32 %rem.i, 62
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i76 = lshr i64 %27, %sh_prom.i
  %28 = trunc i64 %shr.i76 to i32
  %conv.i77 = and i32 %28, 3
  %29 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.185, i32 0, i32 6
  %arrayidx44 = getelementptr [4 x i8], ptr %29, i32 0, i32 %conv.i77
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx44, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %29, align 4
  %33 = ptrtoint ptr %dn.185 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dn.185, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #14, !srcloc !663
  %inc48 = add nuw nsw i32 %i.186, 1
  %incdec.ptr49 = getelementptr %struct.arm_cmn_node, ptr %dn.185, i32 1
  %35 = ptrtoint ptr %num_dns37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_dns37, align 1
  %conv38 = zext i8 %36 to i32
  %cmp39 = icmp ult i32 %inc48, %conv38
  br i1 %cmp39, label %for.body41.for.body41_crit_edge, label %for.body41.if.end51_crit_edge

for.body41.if.end51_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41

if.end51:                                         ; preds = %for.body41.if.end51_crit_edge, %if.else34.if.end51_crit_edge, %for.body.if.end51_crit_edge, %if.then19.if.end51_crit_edge, %if.then
  tail call void @arm_cmn_event_read(ptr noundef %event)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_event_read(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %dtc_idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %dtc_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtc_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %4 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dtcs_used, align 4
  %conv = zext i8 %5 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #14, !range !669
  %dtc = getelementptr i8, ptr %1, i32 -20
  %7 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dtc, align 4
  %add.ptr2 = getelementptr %struct.arm_cmn_dtc, ptr %8, i32 %6
  %9 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr2, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !667
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8260
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !667
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #14
  %18 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr2, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #14, !srcloc !663
  %add.ptr.i4.i = getelementptr i8, ptr %19, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 -2147483648) #14, !srcloc !663
  %sub.i = add i64 %17, 549755813888
  %and.i = and i64 %sub.i, 1099511627775
  %count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %and.i, ptr noundef %count) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_dns.i = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %20 = ptrtoint ptr %num_dns.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_dns.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp2.not.i = icmp eq i8 %21, 0
  br i1 %cmp2.not.i, label %if.end.arm_cmn_read_dtm.exit_crit_edge, label %for.body.lr.ph.i

if.end.arm_cmn_read_dtm.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_read_dtm.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  %dtms.i = getelementptr i8, ptr %1, i32 -24
  %dtm_offset.i = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %dtm_idx11.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.07.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %reg.06.i = phi i64 [ -1, %for.body.lr.ph.i ], [ %reg.1.i, %if.end.i.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %dn.04.i = phi ptr [ %23, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %dtm.03.i = phi ptr [ null, %for.body.lr.ph.i ], [ %dtm.1.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %dtms.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dtms.i, align 4
  %dtm3.i = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.04.i, i32 0, i32 4
  %26 = ptrtoint ptr %dtm3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dtm3.i, align 4
  %arrayidx.i = getelementptr %struct.arm_cmn_dtm, ptr %25, i32 %27
  %cmp4.not.i = icmp eq ptr %dtm.03.i, %arrayidx.i
  br i1 %cmp4.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %dtm_offset.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dtm_offset.i, align 2
  %conv9.i = zext i8 %29 to i32
  %add.ptr.i93 = getelementptr %struct.arm_cmn_dtm, ptr %arrayidx.i, i32 %conv9.i
  %30 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i93, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 544
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #14, !srcloc !667
  %add.ptr.i.i94 = getelementptr i8, ptr %31, i32 548
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #14, !srcloc !667
  %34 = zext i32 %33 to i64
  %35 = zext i32 %32 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %dtm.1.i = phi ptr [ %add.ptr.i93, %if.then.i ], [ %dtm.03.i, %for.body.i.if.end.i_crit_edge ]
  %reg.1.i = phi i64 [ %38, %if.then.i ], [ %reg.06.i, %for.body.i.if.end.i_crit_edge ]
  %div2.i.i = lshr i32 %i.05.i, 5
  %arrayidx.i.i = getelementptr i64, ptr %dtm_idx11.i, i32 %div2.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i.i, align 8
  %rem.i.i = shl nuw i32 %i.05.i, 1
  %mul.i.i = and i32 %rem.i.i, 62
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %40, %sh_prom.i.i
  %41 = trunc i64 %shr.i.i to i32
  %conv.i.i = shl i32 %41, 4
  %mul.i = and i32 %conv.i.i, 48
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %reg.1.i, %sh_prom.i
  %conv14.i = and i64 %shr.i, 65535
  %add.i = add i64 %conv14.i, %count.07.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %incdec.ptr.i = getelementptr %struct.arm_cmn_node, ptr %dn.04.i, i32 1
  %42 = ptrtoint ptr %num_dns.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_dns.i, align 1
  %conv.i = zext i8 %43 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.arm_cmn_read_dtm.exit_crit_edge

if.end.i.arm_cmn_read_dtm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_read_dtm.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

arm_cmn_read_dtm.exit:                            ; preds = %if.end.i.arm_cmn_read_dtm.exit_crit_edge, %if.end.arm_cmn_read_dtm.exit_crit_edge
  %count.0.lcssa.i = phi i64 [ 0, %if.end.arm_cmn_read_dtm.exit_crit_edge ], [ %add.i, %if.end.i.arm_cmn_read_dtm.exit_crit_edge ]
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_xchg(ptr noundef %prev_count, i64 noundef %count.0.lcssa.i) #14
  %sub = sub i64 %count.0.lcssa.i, %call.i
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !670
  %and.i95 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not = icmp eq i32 %and.i95, 0
  br i1 %tobool.not, label %if.then20, label %arm_cmn_read_dtm.exit.do.end23_crit_edge

arm_cmn_read_dtm.exit.do.end23_crit_edge:         ; preds = %arm_cmn_read_dtm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

if.then20:                                        ; preds = %arm_cmn_read_dtm.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %arm_cmn_read_dtm.exit.do.end23_crit_edge
  %dtcs_used24 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %45 = ptrtoint ptr %dtcs_used24 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dtcs_used24, align 4
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool26.not102 = icmp eq i8 %47, 0
  br i1 %tobool26.not102, label %do.end23.do.body33_crit_edge, label %for.body.lr.ph

do.end23.do.body33_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

for.body.lr.ph:                                   ; preds = %do.end23
  %dtc27 = getelementptr i8, ptr %1, i32 -20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %delta.0104 = phi i64 [ %sub, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %48 = ptrtoint ptr %dtc27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dtc27, align 4
  %add.ptr28 = getelementptr %struct.arm_cmn_dtc, ptr %49, i32 %i.0103
  %50 = ptrtoint ptr %dtc_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dtc_idx, align 8
  %.frozen = freeze i32 %51
  %div.i = sdiv i32 %.frozen, 2
  %mul.i96 = shl i32 %div.i, 2
  %52 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %.frozen, %52
  %add.i97 = add i32 %mul.i96, %rem.i.decomposed
  %mul1.i = shl i32 %add.i97, 2
  %add2.i = add i32 %mul1.i, 8192
  %53 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr28, align 4
  %add.ptr.i98 = getelementptr i8, ptr %54, i32 %add2.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #14, !srcloc !667
  %56 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr28, align 4
  %add.ptr4.i = getelementptr i8, ptr %57, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 128) #14, !srcloc !663
  %58 = xor i32 %55, 128
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #14
  %conv31 = zext i32 %59 to i64
  %shl32 = shl nuw nsw i64 %conv31, 16
  %add = add i64 %shl32, %delta.0104
  %inc = add i32 %i.0103, 1
  %60 = ptrtoint ptr %dtcs_used24 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dtcs_used24, align 4
  %conv25 = zext i8 %61 to i32
  %shl = shl nuw i32 1, %inc
  %and = and i32 %shl, %conv25
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %for.body.do.body33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.do.body33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

do.body33:                                        ; preds = %for.body.do.body33_crit_edge, %do.end23.do.body33_crit_edge
  %delta.0.lcssa = phi i64 [ %sub, %do.end23.do.body33_crit_edge ], [ %add, %for.body.do.body33_crit_edge ]
  br i1 %tobool.not, label %if.then42, label %do.body33.do.body44_crit_edge

do.body33.do.body44_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body44

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body44

do.body44:                                        ; preds = %if.then42, %do.body33.do.body44_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !671
  %and.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool52.not, label %if.then56, label %do.body44.do.end59_crit_edge, !prof !661

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #14, !srcloc !672
  %count64 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count64, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %delta.0.lcssa, ptr noundef %count64) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_start_txn(ptr nocapture noundef %pmu, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr i8, ptr %pmu, i32 -56
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.arm_cmn_set_state.exit_crit_edge

entry.arm_cmn_set_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_set_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc.i = getelementptr i8, ptr %pmu, i32 -20
  %2 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !663
  br label %arm_cmn_set_state.exit

arm_cmn_set_state.exit:                           ; preds = %if.then.i, %entry.arm_cmn_set_state.exit_crit_edge
  %6 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state1.i, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %state1.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_commit_txn(ptr nocapture noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i.i = getelementptr i8, ptr %pmu, i32 -56
  %0 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i.i, align 4
  %and.i.i = and i32 %1, -3
  store i32 %and.i.i, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.arm_cmn_end_txn.exit_crit_edge

entry.arm_cmn_end_txn.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_end_txn.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc.i.i = getelementptr i8, ptr %pmu, i32 -20
  %2 = ptrtoint ptr %dtc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1090519040) #14, !srcloc !663
  br label %arm_cmn_end_txn.exit

arm_cmn_end_txn.exit:                             ; preds = %if.then.i.i, %entry.arm_cmn_end_txn.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_cmn_end_txn(ptr nocapture noundef %pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr i8, ptr %pmu, i32 -56
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  %and.i = and i32 %1, -3
  store i32 %and.i, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.arm_cmn_clear_state.exit_crit_edge

entry.arm_cmn_clear_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_clear_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dtc.i = getelementptr i8, ptr %pmu, i32 -20
  %2 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1090519040) #14, !srcloc !663
  br label %arm_cmn_clear_state.exit

arm_cmn_clear_state.exit:                         ; preds = %if.then.i, %entry.arm_cmn_clear_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_cmn_debugfs_init(ptr noundef %cmn, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp sgt i32 %id, 0
  br i1 %cmp, label %if.end, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn, align 4
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.666, i32 noundef %id) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end.if.end2_crit_edge, %entry.if.end2_crit_edge
  %name.010 = phi ptr [ %call, %if.end.if.end2_crit_edge ], [ @.str.665, %entry.if.end2_crit_edge ]
  %2 = load ptr, ptr @arm_cmn_debugfs, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull %name.010, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %cmn, ptr noundef nonnull @arm_cmn_map_fops) #14
  %debug = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 20
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %debug, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arm_cmn_node_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.arm_cmn_node, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.arm_cmn_node, ptr %b, i32 0, i32 3
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %logid = getelementptr inbounds %struct.arm_cmn_node, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %logid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %logid, align 2
  %conv = zext i16 %5 to i32
  %logid2 = getelementptr inbounds %struct.arm_cmn_node, ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %logid2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %logid2, align 2
  %conv3 = zext i16 %7 to i32
  %sub4 = sub nsw i32 %conv, %conv3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp.0 = phi i32 [ %sub, %entry.if.end_crit_edge ], [ %sub4, %if.then ]
  ret i32 %cmp.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @arm_cmn_nid(ptr nocapture noundef readonly %cmn, i16 noundef zeroext %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_xps = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 7
  %0 = ptrtoint ptr %num_xps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_xps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv2 = zext i16 %id to i32
  %2 = lshr i32 %conv2, 2
  %and = and i32 %2, 7
  %and5 = and i32 %conv2, 3
  br label %if.end38

if.else:                                          ; preds = %entry
  %mesh_x.i = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 5
  %3 = ptrtoint ptr %mesh_x.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mesh_x.i, align 4
  %mesh_y.i = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 6
  %5 = ptrtoint ptr %mesh_y.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mesh_y.i, align 1
  %7 = tail call i8 @llvm.umax.i8(i8 %4, i8 %6) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp5.i = icmp ugt i8 %7, 4
  %cond7.i = select i1 %cmp5.i, i32 3, i32 2
  %conv7 = zext i16 %id to i32
  %add = add nuw nsw i32 %cond7.i, 3
  %shr8 = lshr i32 %conv7, %add
  %8 = lshr i32 %conv7, 3
  %notmask = shl nsw i32 -1, %cond7.i
  %sub = xor i32 %notmask, -1
  %and13 = and i32 %8, %sub
  %ports_used = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 10
  %9 = ptrtoint ptr %ports_used to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ports_used, align 1
  %11 = and i8 %10, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else28, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %12 = lshr i32 %conv7, 1
  %and21 = and i32 %12, 3
  %and25 = and i32 %conv7, 1
  br label %if.end

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %13 = lshr i16 %id, 2
  %14 = and i16 %13, 1
  %conv32 = zext i16 %14 to i32
  %15 = and i16 %id, 3
  %conv36 = zext i16 %15 to i32
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then18
  %retval.sroa.7.0 = phi i32 [ %and21, %if.then18 ], [ %conv32, %if.else28 ]
  %retval.sroa.11.0 = phi i32 [ %and25, %if.then18 ], [ %conv36, %if.else28 ]
  %phi.cast = shl nuw nsw i32 %and13, 16
  %phi.bo50 = shl i32 %shr8, 24
  %16 = or i32 %phi.cast, %phi.bo50
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then
  %retval.sroa.7.1 = phi i32 [ %and, %if.then ], [ %retval.sroa.7.0, %if.end ]
  %retval.sroa.11.1 = phi i32 [ %and5, %if.then ], [ %retval.sroa.11.0, %if.end ]
  %retval.sroa.7.0.insert.insert = phi i32 [ 0, %if.then ], [ %16, %if.end ]
  %retval.sroa.7.0.insert.ext = shl nuw nsw i32 %retval.sroa.7.1, 8
  %retval.sroa.7.0.insert.shift = and i32 %retval.sroa.7.0.insert.ext, 65280
  %retval.sroa.4.0.insert.insert = or i32 %retval.sroa.7.0.insert.insert, %retval.sroa.11.1
  %retval.sroa.0.0.insert.insert = or i32 %retval.sroa.4.0.insert.insert, %retval.sroa.7.0.insert.shift
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.end78.for.cond_crit_edge, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %ret.3, %if.end78.for.cond_crit_edge ]
  %dtc.0 = phi ptr [ %dev_id, %entry ], [ %add.ptr85, %if.end78.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtc.0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8472
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !667
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond
  %i.0115 = phi i32 [ 0, %for.cond ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.1114 = phi i32 [ %ret.0, %for.cond ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0115
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.arm_cmn_dtc, ptr %dtc.0, i32 0, i32 4, i32 %i.0115
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %do.end, label %if.end27.critedge, !prof !661

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1487, i32 noundef 9, ptr noundef null) #14
  br label %for.inc

if.end27.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = shl nuw i32 %i.0115, 1
  %mul.i = and i32 %6, 1073741820
  %rem.i = and i32 %i.0115, 1
  %add.i = or i32 %mul.i, %rem.i
  %mul1.i = shl nuw i32 %add.i, 2
  %add2.i = add i32 %mul1.i, 8192
  %7 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dtc.0, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add2.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !667
  %10 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dtc.0, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 128) #14, !srcloc !663
  %12 = xor i32 %9, 128
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %conv = zext i32 %13 to i64
  %shl29 = shl nuw nsw i64 %conv, 16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %shl29, ptr noundef %count) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end27.critedge, %do.end, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ 1, %if.end27.critedge ], [ %ret.1114, %for.body.for.inc_crit_edge ], [ 1, %do.end ]
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %and33 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.end.if.end78_crit_edge, label %if.then35

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then35:                                        ; preds = %for.end
  %cc_active = getelementptr inbounds %struct.arm_cmn_dtc, ptr %dtc.0, i32 0, i32 3
  %16 = ptrtoint ptr %cc_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cc_active, align 4, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool36.not = icmp eq i8 %17, 0
  br i1 %tobool36.not, label %if.then35.if.end78_crit_edge, label %land.lhs.true

if.then35.if.end78_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

land.lhs.true:                                    ; preds = %if.then35
  %cycles = getelementptr inbounds %struct.arm_cmn_dtc, ptr %dtc.0, i32 0, i32 5
  %18 = ptrtoint ptr %cycles to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cycles, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %do.end57, label %if.then72.critedge, !prof !661

do.end57:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1496, i32 noundef 9, ptr noundef null) #14
  br label %if.end78

if.then72.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dtc.0, align 4
  %add.ptr.i112 = getelementptr i8, ptr %21, i32 8256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #14, !srcloc !667
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8260
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !667
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #14
  %29 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dtc.0, align 4
  %add.ptr2.i = getelementptr i8, ptr %30, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #14, !srcloc !663
  %add.ptr.i4.i = getelementptr i8, ptr %30, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 -2147483648) #14, !srcloc !663
  %sub.i = add i64 %28, 549755813888
  %and.i = and i64 %sub.i, 1099511627775
  %31 = ptrtoint ptr %cycles to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cycles, align 4
  %count75 = getelementptr inbounds %struct.perf_event, ptr %32, i32 0, i32 16
  %call.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count75, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %and.i, ptr noundef %count75) #14
  br label %if.end78

if.end78:                                         ; preds = %if.then72.critedge, %do.end57, %if.then35.if.end78_crit_edge, %for.end.if.end78_crit_edge
  %ret.3 = phi i32 [ 1, %if.then72.critedge ], [ 1, %if.then35.if.end78_crit_edge ], [ %ret.2, %for.end.if.end78_crit_edge ], [ 1, %do.end57 ]
  %33 = ptrtoint ptr %dtc.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dtc.0, align 4
  %add.ptr80 = getelementptr i8, ptr %34, i32 8480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %2) #14, !srcloc !663
  %irq_friend = getelementptr inbounds %struct.arm_cmn_dtc, ptr %dtc.0, i32 0, i32 2
  %35 = ptrtoint ptr %irq_friend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_friend, align 4
  %tobool81.not = icmp eq i32 %36, 0
  %add.ptr85 = getelementptr %struct.arm_cmn_dtc, ptr %dtc.0, i32 %36
  br i1 %tobool81.not, label %cleanup88, label %if.end78.for.cond_crit_edge

if.end78.for.cond_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

cleanup88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @arm_cmn_event_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %unused) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %model = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  %model5 = getelementptr i8, ptr %1, i32 -48
  %4 = ptrtoint ptr %model5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model5, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.714)
  switch i32 %7, label %if.end.if.end39_crit_edge [
    i32 30576, label %if.end.cleanup64.sink.split_crit_edge
    i32 6, label %if.then10
  ]

if.end.cleanup64.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64.sink.split

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then10:                                        ; preds = %if.end
  %eventid = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %eventid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eventid, align 4
  %conv = zext i8 %10 to i32
  %11 = lshr i32 %conv, 5
  %12 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.then10.if.end22_crit_edge, label %land.lhs.true

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then10
  %13 = lshr i32 %conv, 2
  %ports_used = getelementptr i8, ptr %1, i32 -37
  %14 = ptrtoint ptr %ports_used to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ports_used, align 1
  %conv17 = zext i8 %15 to i32
  %and18 = and i32 %13, 3
  %shl = shl nuw nsw i32 1, %and18
  %and19 = and i32 %shl, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup64_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true.cleanup64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %16 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.715)
  switch i32 %11, label %if.end22.if.end39_crit_edge [
    i32 5, label %land.lhs.true25
    i32 6, label %land.lhs.true30
  ]

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true25:                                  ; preds = %if.end22
  %17 = getelementptr i8, ptr %1, i32 -36
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp26 = icmp sgt i8 %bf.load, -1
  br i1 %cmp26, label %land.lhs.true25.cleanup64_crit_edge, label %land.lhs.true25.if.end39_crit_edge

land.lhs.true25.if.end39_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true25.cleanup64_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

land.lhs.true30:                                  ; preds = %if.end22
  %19 = getelementptr i8, ptr %1, i32 -36
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load31 = load i8, ptr %19, align 4
  %21 = and i8 %bf.load31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp34.not.not = icmp eq i8 %21, 0
  br i1 %cmp34.not.not, label %land.lhs.true30.cleanup64_crit_edge, label %land.lhs.true30.if.end39_crit_edge

land.lhs.true30.if.end39_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true30.cleanup64_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end39:                                         ; preds = %land.lhs.true30.if.end39_crit_edge, %land.lhs.true25.if.end39_crit_edge, %if.end22.if.end39_crit_edge, %if.end.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp41 = icmp eq i32 %5, 1
  br i1 %cmp41, label %land.lhs.true43, label %if.end39.if.end57_crit_edge

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

land.lhs.true43:                                  ; preds = %if.end39
  %rev = getelementptr i8, ptr %1, i32 -52
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp44 = icmp ult i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp48 = icmp eq i32 %7, 5
  %or.cond = select i1 %cmp44, i1 %cmp48, i1 false
  br i1 %or.cond, label %land.lhs.true50, label %land.lhs.true43.if.end57_crit_edge

land.lhs.true43.if.end57_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

land.lhs.true50:                                  ; preds = %land.lhs.true43
  %eventid51 = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 3
  %24 = ptrtoint ptr %eventid51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eventid51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %25)
  %cmp53 = icmp eq i8 %25, 27
  br i1 %cmp53, label %land.lhs.true50.cleanup64_crit_edge, label %land.lhs.true50.if.end57_crit_edge

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

land.lhs.true50.cleanup64_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

if.end57:                                         ; preds = %land.lhs.true50.if.end57_crit_edge, %land.lhs.true43.if.end57_crit_edge, %if.end39.if.end57_crit_edge
  %dns.i = getelementptr i8, ptr %1, i32 -28
  %26 = ptrtoint ptr %dns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dns.i, align 4
  %type16.i = getelementptr inbounds %struct.arm_cmn_node, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not7.i = icmp eq i32 %29, 0
  br i1 %tobool.not7.i, label %if.end57.cleanup64_crit_edge, label %if.end57.for.body.i_crit_edge

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

if.end57.cleanup64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %30 = phi i32 [ %32, %for.inc.i.for.body.i_crit_edge ], [ %29, %if.end57.for.body.i_crit_edge ]
  %dn.08.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %27, %if.end57.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %7)
  %cmp.i = icmp eq i32 %30, %7
  br i1 %cmp.i, label %arm_cmn_node.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i, i32 1
  %type1.i = getelementptr %struct.arm_cmn_node, ptr %dn.08.i, i32 1, i32 3
  %31 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type1.i, align 4
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup64_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup64_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

arm_cmn_node.exit:                                ; preds = %for.body.i
  %tobool60.not = icmp eq ptr %dn.08.i, null
  br i1 %tobool60.not, label %arm_cmn_node.exit.cleanup64_crit_edge, label %arm_cmn_node.exit.cleanup64.sink.split_crit_edge

arm_cmn_node.exit.cleanup64.sink.split_crit_edge: ; preds = %arm_cmn_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64.sink.split

arm_cmn_node.exit.cleanup64_crit_edge:            ; preds = %arm_cmn_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup64

cleanup64.sink.split:                             ; preds = %arm_cmn_node.exit.cleanup64.sink.split_crit_edge, %if.end.cleanup64.sink.split_crit_edge
  %mode63 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %33 = ptrtoint ptr %mode63 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mode63, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %cleanup64.sink.split, %arm_cmn_node.exit.cleanup64_crit_edge, %for.inc.i.cleanup64_crit_edge, %if.end57.cleanup64_crit_edge, %land.lhs.true50.cleanup64_crit_edge, %land.lhs.true30.cleanup64_crit_edge, %land.lhs.true25.cleanup64_crit_edge, %land.lhs.true.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.1 = phi i16 [ 0, %entry.cleanup64_crit_edge ], [ 0, %land.lhs.true25.cleanup64_crit_edge ], [ 0, %land.lhs.true30.cleanup64_crit_edge ], [ 0, %land.lhs.true.cleanup64_crit_edge ], [ 0, %land.lhs.true50.cleanup64_crit_edge ], [ 0, %arm_cmn_node.exit.cleanup64_crit_edge ], [ 0, %if.end57.cleanup64_crit_edge ], [ %34, %cleanup64.sink.split ], [ 0, %for.inc.i.cleanup64_crit_edge ]
  ret i16 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.716)
  switch i32 %1, label %if.end7 [
    i32 3, label %if.then
    i32 30576, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.630, i32 noundef 3) #14
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %eventid = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %eventid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eventid, align 4
  %conv = zext i8 %4 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.631, i32 noundef 30576, i32 noundef %conv) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %model = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model, align 4
  %eventid9 = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 3
  %7 = ptrtoint ptr %eventid9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eventid9, align 4
  %conv10 = zext i8 %8 to i32
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.717)
  switch i32 %1, label %if.end7.if.end18_crit_edge [
    i32 1, label %if.then.i
    i32 5, label %arm_cmn_is_occup_event.exit
  ]

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1.i = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp2.i = icmp eq i8 %8, 5
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i.if.then12_crit_edge, label %lor.rhs.i

if.then.i.if.then12_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3.i = icmp eq i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp4.i = icmp eq i8 %8, 12
  %spec.select.i = and i1 %cmp3.i, %cmp4.i
  br i1 %spec.select.i, label %lor.rhs.i.if.then12_crit_edge, label %lor.rhs.i.if.end18_crit_edge

lor.rhs.i.if.end18_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

lor.rhs.i.if.then12_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

arm_cmn_is_occup_event.exit:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %8)
  %cmp7.i = icmp eq i8 %8, 15
  br i1 %cmp7.i, label %arm_cmn_is_occup_event.exit.if.then12_crit_edge, label %arm_cmn_is_occup_event.exit.if.end18_crit_edge

arm_cmn_is_occup_event.exit.if.end18_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

arm_cmn_is_occup_event.exit.if.then12_crit_edge:  ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %arm_cmn_is_occup_event.exit.if.then12_crit_edge, %lor.rhs.i.if.then12_crit_edge, %if.then.i.if.then12_crit_edge
  %occupid = getelementptr inbounds %struct.arm_cmn_event_attr, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %occupid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %occupid, align 1
  %conv16 = zext i8 %11 to i32
  %call17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.632, i32 noundef %1, i32 noundef %conv10, i32 noundef %conv16) #14
  br label %cleanup

if.end18:                                         ; preds = %arm_cmn_is_occup_event.exit.if.end18_crit_edge, %lor.rhs.i.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %call22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.633, i32 noundef %1, i32 noundef %conv10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then4 ], [ %call17, %if.then12 ], [ %call22, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_format_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.arm_cmn_format_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %field, align 8
  %conv = trunc i64 %1 to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #14, !range !669
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 false) #14, !range !669
  %sub.i = sub nsw i32 31, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub.i)
  %cmp = icmp eq i32 %2, %sub.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.659, i32 noundef %2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.arm_cmn_format_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.660, i32 noundef %2, i32 noundef %sub.i) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.661, i32 noundef %5, i32 noundef %2, i32 noundef %sub.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call10, %if.end8 ], [ %call7, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_cpumask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %3, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %3, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %4) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_cmn_validate_group(ptr nocapture noundef readonly %cmn, ptr noundef readonly %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %group_leader = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 11
  %0 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_leader, align 4
  %cmp = icmp eq ptr %1, %event
  br i1 %cmp, label %entry.cleanup164_crit_edge, label %if.end

entry.cleanup164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup164

if.end:                                           ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %pmu1 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu1, align 8
  %cmp2.not = icmp eq ptr %3, %5
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %event_caps.i = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %event_caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_caps.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup164_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.cleanup164_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup164

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 560) #18
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup164_crit_edge, label %if.end9

if.end5.cleanup164_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup164

if.end9:                                          ; preds = %if.end5
  tail call fastcc void @arm_cmn_val_add_event(ptr noundef %cmn, ptr noundef nonnull %call7.i.i, ptr noundef %1)
  %group_leader10 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %group_leader10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group_leader10, align 4
  %cmp11 = icmp eq ptr %10, %1
  br i1 %cmp11, label %if.then12, label %if.end9.do.end33_crit_edge

if.end9.do.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33

if.then12:                                        ; preds = %if.end9
  %sibling_list = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %sibling_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn219 = load ptr, ptr %sibling_list, align 8
  %cmp15.not220 = icmp eq ptr %.pn219, %sibling_list
  br i1 %cmp15.not220, label %if.then12.do.end33_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.do.end33_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then12.for.body_crit_edge
  %.pn221 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn219, %if.then12.for.body_crit_edge ]
  %sibling.0 = getelementptr i8, ptr %.pn221, i32 -8
  tail call fastcc void @arm_cmn_val_add_event(ptr noundef %cmn, ptr noundef nonnull %call7.i.i, ptr noundef %sibling.0)
  %12 = ptrtoint ptr %.pn221 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn221, align 8
  %cmp15.not = icmp eq ptr %.pn, %sibling_list
  br i1 %cmp15.not, label %for.body.do.end33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.do.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33

do.end33:                                         ; preds = %for.body.do.end33_crit_edge, %if.then12.do.end33_crit_edge, %if.end9.do.end33_crit_edge
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %config, align 8
  %15 = trunc i64 %14 to i32
  %conv = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %cmp35 = icmp eq i32 %conv, 3
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #16
  %cycles = getelementptr inbounds %struct.arm_cmn_val, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %cycles to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cycles, align 4, !range !662
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool38.not, i32 0, i32 -22
  br label %done

if.end40:                                         ; preds = %do.end33
  %dtc_count = getelementptr inbounds %struct.arm_cmn_val, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %dtc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dtc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp41 = icmp eq i32 %19, 8
  br i1 %cmp41, label %if.end40.done_crit_edge, label %if.end44

if.end40.done_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end44:                                         ; preds = %if.end40
  %model = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 4
  %20 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model, align 4
  %22 = lshr i32 %15, 16
  %conv65 = and i32 %22, 255
  %trunc = trunc i64 %14 to i16
  %23 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.718)
  switch i16 %trunc, label %if.end44.if.end89_crit_edge [
    i16 1, label %if.then.i
    i16 5, label %arm_cmn_is_occup_event.exit
  ]

if.end44.if.end89_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp1.i = icmp eq i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv65)
  %cmp2.i = icmp eq i32 %conv65, 5
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i.do.end82_crit_edge, label %lor.rhs.i

if.then.i.do.end82_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp3.i = icmp eq i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv65)
  %cmp4.i = icmp eq i32 %conv65, 12
  %spec.select.i = and i1 %cmp4.i, %cmp3.i
  br i1 %spec.select.i, label %lor.rhs.i.do.end82_crit_edge, label %lor.rhs.i.if.end89_crit_edge

lor.rhs.i.if.end89_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

lor.rhs.i.do.end82_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

arm_cmn_is_occup_event.exit:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv65)
  %cmp7.i = icmp eq i32 %conv65, 15
  br i1 %cmp7.i, label %arm_cmn_is_occup_event.exit.do.end82_crit_edge, label %arm_cmn_is_occup_event.exit.if.end89_crit_edge

arm_cmn_is_occup_event.exit.if.end89_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

arm_cmn_is_occup_event.exit.do.end82_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

do.end82:                                         ; preds = %arm_cmn_is_occup_event.exit.do.end82_crit_edge, %lor.rhs.i.do.end82_crit_edge, %if.then.i.do.end82_crit_edge
  %24 = lshr i32 %15, 24
  %25 = and i32 %24, 15
  %conv88 = add nuw nsw i32 %25, 1
  br label %if.end89

if.end89:                                         ; preds = %do.end82, %arm_cmn_is_occup_event.exit.if.end89_crit_edge, %lor.rhs.i.if.end89_crit_edge, %if.end44.if.end89_crit_edge
  %occupid.0 = phi i32 [ %conv88, %do.end82 ], [ 0, %arm_cmn_is_occup_event.exit.if.end89_crit_edge ], [ 0, %lor.rhs.i.if.end89_crit_edge ], [ 0, %if.end44.if.end89_crit_edge ]
  %and.i214 = lshr i64 %14, 16
  %shr.i = and i64 %and.i214, 255
  %and22.i = lshr i64 %14, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i, %shr23.i
  %conv.i = trunc i64 %add.i to i32
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %26 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_dns, align 1
  %conv92 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp93222.not = icmp eq i8 %27, 0
  br i1 %cmp93222.not, label %if.end89.done_crit_edge, label %for.body95.lr.ph

if.end89.done_crit_edge:                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.body95.lr.ph:                                 ; preds = %if.end89
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %occupid.0)
  %tobool103.not = icmp eq i32 %occupid.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 30576, i32 %conv)
  %cmp118.not = icmp eq i32 %conv, 30576
  %xor = xor i32 %conv.i, 1
  %and153 = lshr i64 %14, 24
  %shr154 = and i64 %and153, 15
  %add155 = add nuw nsw i64 %shr154, 1
  br label %for.body95

for.body95:                                       ; preds = %for.inc162.for.body95_crit_edge, %for.body95.lr.ph
  %dn.0224 = phi ptr [ %29, %for.body95.lr.ph ], [ %incdec.ptr, %for.inc162.for.body95_crit_edge ]
  %i.0223 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc, %for.inc162.for.body95_crit_edge ]
  %dtm96 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0224, i32 0, i32 4
  %30 = ptrtoint ptr %dtm96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dtm96, align 4
  %arrayidx = getelementptr [92 x i8], ptr %call7.i.i, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp98 = icmp eq i8 %33, 4
  br i1 %cmp98, label %for.body95.done_crit_edge, label %if.end101

for.body95.done_crit_edge:                        ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end101:                                        ; preds = %for.body95
  br i1 %tobool103.not, label %if.end101.if.end117_crit_edge, label %land.lhs.true104

if.end101.if.end117_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

land.lhs.true104:                                 ; preds = %if.end101
  %arrayidx106 = getelementptr %struct.arm_cmn_val, ptr %call7.i.i, i32 0, i32 1, i32 %31
  %34 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool108.not = icmp eq i8 %35, 0
  %conv107 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %occupid.0, i32 %conv107)
  %cmp114.not = icmp eq i32 %occupid.0, %conv107
  %or.cond = select i1 %tobool108.not, i1 true, i1 %cmp114.not
  br i1 %or.cond, label %land.lhs.true104.if.end117_crit_edge, label %land.lhs.true104.done_crit_edge

land.lhs.true104.done_crit_edge:                  ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

land.lhs.true104.if.end117_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.end117:                                        ; preds = %land.lhs.true104.if.end117_crit_edge, %if.end101.if.end117_crit_edge
  br i1 %cmp118.not, label %if.end121, label %if.end117.for.inc162_crit_edge

if.end117.for.inc162_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc162

if.end121:                                        ; preds = %if.end117
  %arrayidx124 = getelementptr %struct.arm_cmn_val, ptr %call7.i.i, i32 0, i32 2, i32 %31, i32 %conv.i
  %36 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool125.not = icmp eq i8 %37, 0
  br i1 %tobool125.not, label %if.end127, label %if.end121.done_crit_edge

if.end121.done_crit_edge:                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end127:                                        ; preds = %if.end121
  %arrayidx130 = getelementptr %struct.arm_cmn_val, ptr %call7.i.i, i32 0, i32 2, i32 %31, i32 %xor
  %38 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool132.not = icmp eq i8 %39, 0
  %conv134 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add155, i64 %conv134)
  %cmp156.not = icmp eq i64 %add155, %conv134
  %or.cond229 = select i1 %tobool132.not, i1 true, i1 %cmp156.not
  br i1 %or.cond229, label %if.end127.for.inc162_crit_edge, label %if.end127.done_crit_edge

if.end127.done_crit_edge:                         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end127.for.inc162_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc162

for.inc162:                                       ; preds = %if.end127.for.inc162_crit_edge, %if.end117.for.inc162_crit_edge
  %inc = add nuw nsw i32 %i.0223, 1
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.0224, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv92
  br i1 %exitcond.not, label %for.inc162.done_crit_edge, label %for.inc162.for.body95_crit_edge

for.inc162.for.body95_crit_edge:                  ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body95

for.inc162.done_crit_edge:                        ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

done:                                             ; preds = %for.inc162.done_crit_edge, %if.end127.done_crit_edge, %if.end121.done_crit_edge, %land.lhs.true104.done_crit_edge, %for.body95.done_crit_edge, %if.end89.done_crit_edge, %if.end40.done_crit_edge, %if.then37
  %ret.0 = phi i32 [ %cond, %if.then37 ], [ -22, %if.end40.done_crit_edge ], [ 0, %if.end89.done_crit_edge ], [ 0, %for.inc162.done_crit_edge ], [ -22, %for.body95.done_crit_edge ], [ -22, %land.lhs.true104.done_crit_edge ], [ -22, %if.end121.done_crit_edge ], [ -22, %if.end127.done_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup164

cleanup164:                                       ; preds = %done, %if.end5.cleanup164_crit_edge, %land.lhs.true.cleanup164_crit_edge, %entry.cleanup164_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ 0, %entry.cleanup164_crit_edge ], [ -22, %land.lhs.true.cleanup164_crit_edge ], [ -12, %if.end5.cleanup164_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_cmn_val_add_event(ptr nocapture noundef readonly %cmn, ptr nocapture noundef %val, ptr nocapture noundef readonly %event) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %event_caps.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %event_caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_caps.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup101_crit_edge

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup101

do.end13:                                         ; preds = %entry
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  %cycles = getelementptr inbounds %struct.arm_cmn_val, ptr %val, i32 0, i32 4
  %5 = ptrtoint ptr %cycles to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cycles, align 4
  br label %cleanup101

if.end16:                                         ; preds = %do.end13
  %dtc_count = getelementptr inbounds %struct.arm_cmn_val, ptr %val, i32 0, i32 3
  %6 = ptrtoint ptr %dtc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtc_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %dtc_count, align 4
  %model = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 4
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %model, align 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %config, align 8
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 16
  %conv37 = and i32 %13, 255
  %trunc = trunc i64 %3 to i16
  %14 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.719)
  switch i16 %trunc, label %if.end16.if.end61_crit_edge [
    i16 1, label %if.then.i
    i16 5, label %arm_cmn_is_occup_event.exit
  ]

if.end16.if.end61_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp1.i = icmp eq i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv37)
  %cmp2.i = icmp eq i32 %conv37, 5
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i.do.end54_crit_edge, label %lor.rhs.i

if.then.i.do.end54_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3.i = icmp eq i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv37)
  %cmp4.i = icmp eq i32 %conv37, 12
  %spec.select.i = and i1 %cmp3.i, %cmp4.i
  br i1 %spec.select.i, label %lor.rhs.i.do.end54_crit_edge, label %lor.rhs.i.if.end61_crit_edge

lor.rhs.i.if.end61_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

lor.rhs.i.do.end54_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

arm_cmn_is_occup_event.exit:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv37)
  %cmp7.i = icmp eq i32 %conv37, 15
  br i1 %cmp7.i, label %arm_cmn_is_occup_event.exit.do.end54_crit_edge, label %arm_cmn_is_occup_event.exit.if.end61_crit_edge

arm_cmn_is_occup_event.exit.if.end61_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

arm_cmn_is_occup_event.exit.do.end54_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

do.end54:                                         ; preds = %arm_cmn_is_occup_event.exit.do.end54_crit_edge, %lor.rhs.i.do.end54_crit_edge, %if.then.i.do.end54_crit_edge
  %and58 = lshr i64 %11, 24
  %15 = trunc i64 %and58 to i8
  %16 = and i8 %15, 15
  %conv60 = add nuw nsw i8 %16, 1
  br label %if.end61

if.end61:                                         ; preds = %do.end54, %arm_cmn_is_occup_event.exit.if.end61_crit_edge, %lor.rhs.i.if.end61_crit_edge, %if.end16.if.end61_crit_edge
  %occupid.0 = phi i8 [ %conv60, %do.end54 ], [ 0, %arm_cmn_is_occup_event.exit.if.end61_crit_edge ], [ 0, %lor.rhs.i.if.end61_crit_edge ], [ 0, %if.end16.if.end61_crit_edge ]
  %num_dns = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 4
  %17 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_dns, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp64130.not = icmp eq i8 %18, 0
  br i1 %cmp64130.not, label %if.end61.cleanup101_crit_edge, label %for.body.lr.ph

if.end61.cleanup101_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup101

for.body.lr.ph:                                   ; preds = %if.end61
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30576, i32 %conv)
  %cmp70.not = icmp eq i32 %conv, 30576
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dn.0132 = phi ptr [ %20, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc100, %cleanup.for.body_crit_edge ]
  %dtm66 = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.0132, i32 0, i32 4
  %21 = ptrtoint ptr %dtm66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtm66, align 4
  %arrayidx = getelementptr [92 x i8], ptr %val, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %inc67 = add i8 %24, 1
  store i8 %inc67, ptr %arrayidx, align 1
  %arrayidx69 = getelementptr %struct.arm_cmn_val, ptr %val, i32 0, i32 1, i32 %22
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %occupid.0, ptr %arrayidx69, align 1
  br i1 %cmp70.not, label %if.end73, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end73:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %config, align 8
  %and.i125 = lshr i64 %27, 16
  %shr.i = and i64 %and.i125, 255
  %and22.i = lshr i64 %27, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i, %shr23.i
  %conv.i = trunc i64 %add.i to i32
  %and93 = lshr i64 %27, 24
  %28 = trunc i64 %and93 to i8
  %29 = and i8 %28, 15
  %conv96 = add nuw nsw i8 %29, 1
  %arrayidx98 = getelementptr %struct.arm_cmn_val, ptr %val, i32 0, i32 2, i32 %22, i32 %conv.i
  %30 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv96, ptr %arrayidx98, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %for.body.cleanup_crit_edge
  %inc100 = add nuw nsw i32 %i.0131, 1
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.0132, i32 1
  %31 = ptrtoint ptr %num_dns to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_dns, align 1
  %conv63 = zext i8 %32 to i32
  %cmp64 = icmp ult i32 %inc100, %conv63
  br i1 %cmp64, label %cleanup.for.body_crit_edge, label %cleanup.cleanup101_crit_edge

cleanup.cleanup101_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup101

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup101:                                       ; preds = %cleanup.cleanup101_crit_edge, %if.end61.cleanup101_crit_edge, %if.then15, %entry.cleanup101_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_cmn_event_clear(ptr nocapture noundef readonly %cmn, ptr nocapture noundef %event, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not89 = icmp eq i32 %i, 0
  br i1 %tobool.not89, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %config, align 8
  %dtms = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 14
  %dtm_offset = getelementptr inbounds %struct.arm_cmn_hw_event, ptr %hw.i, i32 0, i32 5
  %dtm_idx16 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  %conv87 = and i64 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 30576, i64 %conv87)
  %cmp = icmp eq i64 %conv87, 30576
  %model = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 4
  %trunc = trunc i64 %1 to i16
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %dec90.in = phi i32 [ %i, %while.body.lr.ph ], [ %dec90, %if.end47.while.body_crit_edge ]
  %dec90 = add i32 %dec90.in, -1
  %2 = ptrtoint ptr %dtms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtms, align 4
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 8
  %dtm13 = getelementptr %struct.arm_cmn_node, ptr %5, i32 %dec90, i32 4
  %6 = ptrtoint ptr %dtm13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtm13, align 4
  %arrayidx14 = getelementptr %struct.arm_cmn_dtm, ptr %3, i32 %7
  %8 = ptrtoint ptr %dtm_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dtm_offset, align 2
  %conv15 = zext i8 %9 to i32
  %add.ptr = getelementptr %struct.arm_cmn_dtm, ptr %arrayidx14, i32 %conv15
  %div2.i = lshr i32 %dec90, 5
  %arrayidx.i = getelementptr i64, ptr %dtm_idx16, i32 %div2.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i, align 8
  %rem.i = shl i32 %dec90, 1
  %mul.i = and i32 %rem.i, 62
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %11, %sh_prom.i
  %12 = trunc i64 %shr.i to i32
  %conv.i = and i32 %12, 3
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %wp_event = getelementptr inbounds %struct.arm_cmn_dtm, ptr %add.ptr, i32 0, i32 3
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %config, align 8
  %and.i = lshr i64 %14, 16
  %shr.i80 = and i64 %and.i, 255
  %and22.i = lshr i64 %14, 56
  %shr23.i = and i64 %and22.i, 1
  %add.i = add nuw nsw i64 %shr.i80, %shr23.i
  %conv.i81 = trunc i64 %add.i to i32
  %arrayidx20 = getelementptr [4 x i8], ptr %wp_event, i32 0, i32 %conv.i81
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx20, align 1
  br label %if.end47

if.end:                                           ; preds = %while.body
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 4
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %config, align 8
  %20 = trunc i64 %19 to i32
  %21 = lshr i32 %20, 16
  %conv41 = and i32 %21, 255
  %22 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.720)
  switch i16 %trunc, label %if.end.if.end47_crit_edge [
    i16 1, label %if.then.i
    i16 5, label %arm_cmn_is_occup_event.exit
  ]

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp1.i = icmp eq i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv41)
  %cmp2.i = icmp eq i32 %conv41, 5
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i.if.then43_crit_edge, label %lor.rhs.i

if.then.i.if.then43_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp3.i = icmp eq i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv41)
  %cmp4.i = icmp eq i32 %conv41, 12
  %spec.select.i = and i1 %cmp3.i, %cmp4.i
  br i1 %spec.select.i, label %lor.rhs.i.if.then43_crit_edge, label %lor.rhs.i.if.end47_crit_edge

lor.rhs.i.if.end47_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

lor.rhs.i.if.then43_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

arm_cmn_is_occup_event.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv41)
  %cmp7.i = icmp eq i32 %conv41, 15
  br i1 %cmp7.i, label %arm_cmn_is_occup_event.exit.if.then43_crit_edge, label %arm_cmn_is_occup_event.exit.if.end47_crit_edge

arm_cmn_is_occup_event.exit.if.end47_crit_edge:   ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

arm_cmn_is_occup_event.exit.if.then43_crit_edge:  ; preds = %arm_cmn_is_occup_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43:                                        ; preds = %arm_cmn_is_occup_event.exit.if.then43_crit_edge, %lor.rhs.i.if.then43_crit_edge, %if.then.i.if.then43_crit_edge
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  %occupid_count = getelementptr %struct.arm_cmn_node, ptr %24, i32 %dec90, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %occupid_count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %occupid_count, align 1
  %dec46 = add i8 %26, -1
  store i8 %dec46, ptr %occupid_count, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %arm_cmn_is_occup_event.exit.if.end47_crit_edge, %lor.rhs.i.if.end47_crit_edge, %if.end.if.end47_crit_edge, %if.end.thread
  %add = or i32 %conv.i, 4
  %shl = shl nuw nsw i32 1, %add
  %neg = xor i32 %shl, -1
  %pmu_config_low = getelementptr inbounds %struct.arm_cmn_dtm, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %pmu_config_low to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pmu_config_low, align 4
  %and48 = and i32 %28, %neg
  store i32 %and48, ptr %pmu_config_low, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %and48)
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %add.ptr50 = getelementptr i8, ptr %31, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %29) #14, !srcloc !663
  %tobool.not = icmp eq i32 %dec90, 0
  br i1 %tobool.not, label %if.end47.while.end_crit_edge, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end47.while.end_crit_edge, %entry.while.end_crit_edge
  %dtm_idx51 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 1
  %32 = call ptr @memset(ptr %dtm_idx51, i32 0, i32 16)
  %dtcs_used = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %33 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dtcs_used, align 4
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool56.not93 = icmp eq i8 %35, 0
  br i1 %tobool56.not93, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %dtc = getelementptr inbounds %struct.arm_cmn, ptr %cmn, i32 0, i32 15
  %dtc_idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.addr.194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %36 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dtc, align 4
  %38 = ptrtoint ptr %dtc_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dtc_idx, align 8
  %arrayidx58 = getelementptr %struct.arm_cmn_dtc, ptr %37, i32 %i.addr.194, i32 4, i32 %39
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx58, align 4
  %inc = add i32 %i.addr.194, 1
  %41 = ptrtoint ptr %dtcs_used to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dtcs_used, align 4
  %conv53 = zext i8 %42 to i32
  %shl54 = shl nuw i32 1, %inc
  %and55 = and i32 %shl54, %conv53
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @arm_cmn_map_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_map_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %port = alloca [6 x [8 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ports_used = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ports_used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ports_used, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #14, !range !669
  %sub.i = sub nuw nsw i32 32, %4
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.667) #14
  %mesh_x = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp219.not = icmp eq i8 %6, 0
  br i1 %cmp219.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %x.0220 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.668, i32 noundef %x.0220) #14
  %inc = add nuw nsw i32 %x.0220, 1
  %7 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mesh_x, align 4
  %conv1 = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.669) #14
  %mesh_y = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %mesh_y to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mesh_y, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not248 = icmp eq i8 %10, 0
  br i1 %tobool.not248, label %for.end.for.cond128.preheader_crit_edge, label %while.body.lr.ph

for.end.for.cond128.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond128.preheader

while.body.lr.ph:                                 ; preds = %for.end
  %conv3 = zext i8 %10 to i32
  %xps = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp92242.not = icmp eq i32 %cond.i, 0
  br label %while.body

for.cond128.preheader:                            ; preds = %for.end127.for.cond128.preheader_crit_edge, %for.end.for.cond128.preheader_crit_edge
  %11 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp131251.not = icmp eq i8 %12, 0
  br i1 %cmp131251.not, label %for.cond128.preheader.for.end136_crit_edge, label %for.cond128.preheader.for.body133_crit_edge

for.cond128.preheader.for.body133_crit_edge:      ; preds = %for.cond128.preheader
  br label %for.body133

for.cond128.preheader.for.end136_crit_edge:       ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end136

while.body:                                       ; preds = %for.end127.while.body_crit_edge, %while.body.lr.ph
  %dec249.in = phi i32 [ %conv3, %while.body.lr.ph ], [ %dec249, %for.end127.while.body_crit_edge ]
  %dec249 = add nsw i32 %dec249.in, -1
  %13 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mesh_x, align 4
  %conv5 = zext i8 %14 to i32
  %mul = mul i32 %dec249, %conv5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %port) #14
  %15 = call ptr @memset(ptr %port, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp9222.not = icmp eq i8 %14, 0
  br i1 %cmp9222.not, label %while.body.for.end14_crit_edge, label %while.body.for.body11_crit_edge

while.body.for.body11_crit_edge:                  ; preds = %while.body
  br label %for.body11

while.body.for.end14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %while.body.for.body11_crit_edge
  %x.1223 = phi i32 [ %inc13, %for.body11.for.body11_crit_edge ], [ 0, %while.body.for.body11_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.670) #14
  %inc13 = add nuw nsw i32 %x.1223, 1
  %16 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mesh_x, align 4
  %conv8 = zext i8 %17 to i32
  %cmp9 = icmp ult i32 %inc13, %conv8
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.for.end14_crit_edge

for.body11.for.end14_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.end14:                                        ; preds = %for.body11.for.end14_crit_edge, %while.body.for.end14_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.671, i32 noundef %dec249) #14
  %18 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp18225.not = icmp eq i8 %19, 0
  br i1 %cmp18225.not, label %for.end14.for.end64_crit_edge, label %for.end14.for.body20_crit_edge

for.end14.for.body20_crit_edge:                   ; preds = %for.end14
  br label %for.body20

for.end14.for.end64_crit_edge:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end64

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.end14.for.body20_crit_edge
  %x.2226 = phi i32 [ %inc63, %for.body20.for.body20_crit_edge ], [ 0, %for.end14.for.body20_crit_edge ]
  %20 = ptrtoint ptr %xps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xps, align 4
  %add.ptr = getelementptr %struct.arm_cmn_node, ptr %21, i32 %mul
  %add.ptr21 = getelementptr %struct.arm_cmn_node, ptr %add.ptr, i32 %x.2226
  %22 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr21, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 -8184
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #14, !srcloc !667
  %25 = lshr i32 %24, 24
  %conv25 = trunc i32 %25 to i8
  %arrayidx26 = getelementptr [8 x i8], ptr %port, i32 0, i32 %x.2226
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv25, ptr %arrayidx26, align 1
  %add.ptr28 = getelementptr i8, ptr %23, i32 -8176
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #14, !srcloc !667
  %28 = lshr i32 %27, 24
  %conv31 = trunc i32 %28 to i8
  %arrayidx33 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 1, i32 %x.2226
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv31, ptr %arrayidx33, align 1
  %add.ptr35 = getelementptr i8, ptr %23, i32 -8152
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #14, !srcloc !667
  %31 = lshr i32 %30, 24
  %conv38 = trunc i32 %31 to i8
  %arrayidx40 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 2, i32 %x.2226
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv38, ptr %arrayidx40, align 1
  %add.ptr42 = getelementptr i8, ptr %23, i32 -8144
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #14, !srcloc !667
  %34 = lshr i32 %33, 24
  %conv45 = trunc i32 %34 to i8
  %arrayidx47 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 3, i32 %x.2226
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv45, ptr %arrayidx47, align 1
  %add.ptr49 = getelementptr i8, ptr %23, i32 -8136
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #14, !srcloc !667
  %37 = lshr i32 %36, 24
  %conv52 = trunc i32 %37 to i8
  %arrayidx54 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 4, i32 %x.2226
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv52, ptr %arrayidx54, align 1
  %add.ptr56 = getelementptr i8, ptr %23, i32 -8128
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #14, !srcloc !667
  %40 = lshr i32 %39, 24
  %conv59 = trunc i32 %40 to i8
  %arrayidx61 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 5, i32 %x.2226
  %41 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv59, ptr %arrayidx61, align 1
  %add = add nsw i32 %x.2226, %mul
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.672, i32 noundef %add) #14
  %inc63 = add nuw nsw i32 %x.2226, 1
  %42 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mesh_x, align 4
  %conv17 = zext i8 %43 to i32
  %cmp18 = icmp ult i32 %inc63, %conv17
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.body20.for.end64_crit_edge

for.body20.for.end64_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end64

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

for.end64:                                        ; preds = %for.body20.for.end64_crit_edge, %for.end14.for.end64_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.673) #14
  %44 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp68228.not = icmp eq i8 %45, 0
  br i1 %cmp68228.not, label %for.end64.for.end81_crit_edge, label %for.end64.for.body70_crit_edge

for.end64.for.body70_crit_edge:                   ; preds = %for.end64
  br label %for.body70

for.end64.for.end81_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

for.body70:                                       ; preds = %if.end.for.body70_crit_edge, %for.end64.for.body70_crit_edge
  %x.3229 = phi i32 [ %inc80, %if.end.for.body70_crit_edge ], [ 0, %for.end64.for.body70_crit_edge ]
  %46 = ptrtoint ptr %xps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xps, align 4
  %add72 = add nsw i32 %x.3229, %mul
  %48 = getelementptr %struct.arm_cmn_node, ptr %47, i32 %add72, i32 5
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv74 = zext i8 %50 to i32
  %sub = add nuw nsw i32 %conv74, 255
  %and = and i32 %sub, %conv74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.674) #14
  br label %if.end

if.else:                                          ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #16
  %51 = tail call i32 @llvm.cttz.i32(i32 %conv74, i1 false) #14, !range !669
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.675, i32 noundef %51) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc80 = add nuw nsw i32 %x.3229, 1
  %52 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mesh_x, align 4
  %conv67 = zext i8 %53 to i32
  %cmp68 = icmp ult i32 %inc80, %conv67
  br i1 %cmp68, label %if.end.for.body70_crit_edge, label %if.end.for.end81_crit_edge

if.end.for.end81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

if.end.for.body70_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body70

for.end81:                                        ; preds = %if.end.for.end81_crit_edge, %for.end64.for.end81_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.673) #14
  %54 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp85231.not = icmp eq i8 %55, 0
  br i1 %cmp85231.not, label %for.end81.for.cond91.preheader_crit_edge, label %for.end81.for.body87_crit_edge

for.end81.for.body87_crit_edge:                   ; preds = %for.end81
  br label %for.body87

for.end81.for.cond91.preheader_crit_edge:         ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %for.body87.for.cond91.preheader_crit_edge, %for.end81.for.cond91.preheader_crit_edge
  br i1 %cmp92242.not, label %for.cond91.preheader.for.end127_crit_edge, label %for.cond91.preheader.for.body94_crit_edge

for.cond91.preheader.for.body94_crit_edge:        ; preds = %for.cond91.preheader
  br label %for.body94

for.cond91.preheader.for.end127_crit_edge:        ; preds = %for.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end127

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.end81.for.body87_crit_edge
  %x.4232 = phi i32 [ %inc89, %for.body87.for.body87_crit_edge ], [ 0, %for.end81.for.body87_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.676) #14
  %inc89 = add nuw nsw i32 %x.4232, 1
  %56 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mesh_x, align 4
  %conv84 = zext i8 %57 to i32
  %cmp85 = icmp ult i32 %inc89, %conv84
  br i1 %cmp85, label %for.body87.for.body87_crit_edge, label %for.body87.for.cond91.preheader_crit_edge

for.body87.for.cond91.preheader_crit_edge:        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond91.preheader

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body87

for.body94:                                       ; preds = %for.inc125.for.body94_crit_edge, %for.cond91.preheader.for.body94_crit_edge
  %p.0243 = phi i32 [ %inc126, %for.inc125.for.body94_crit_edge ], [ 0, %for.cond91.preheader.for.body94_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.677, i32 noundef %p.0243) #14
  %58 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp98234.not = icmp eq i8 %59, 0
  br i1 %cmp98234.not, label %for.body94.for.end106_crit_edge, label %for.body94.for.body100_crit_edge

for.body94.for.body100_crit_edge:                 ; preds = %for.body94
  br label %for.body100

for.body94.for.end106_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end106

for.body100:                                      ; preds = %arm_cmn_device_type.exit.for.body100_crit_edge, %for.body94.for.body100_crit_edge
  %x.5235 = phi i32 [ %inc105, %arm_cmn_device_type.exit.for.body100_crit_edge ], [ 0, %for.body94.for.body100_crit_edge ]
  %arrayidx102 = getelementptr [6 x [8 x i8]], ptr %port, i32 0, i32 %p.0243, i32 %x.5235
  %60 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx102, align 1
  %switch.tableidx = add i8 %61, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %switch.tableidx)
  %62 = icmp ult i8 %switch.tableidx, 28
  br i1 %62, label %switch.lookup, label %for.body100.arm_cmn_device_type.exit_crit_edge

for.body100.arm_cmn_device_type.exit_crit_edge:   ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_device_type.exit

switch.lookup:                                    ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #16
  %63 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [28 x ptr], ptr @switch.table.arm_cmn_map_show, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %arm_cmn_device_type.exit

arm_cmn_device_type.exit:                         ; preds = %switch.lookup, %for.body100.arm_cmn_device_type.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.704, %for.body100.arm_cmn_device_type.exit_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %retval.0.i) #14
  %inc105 = add nuw nsw i32 %x.5235, 1
  %65 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mesh_x, align 4
  %conv97 = zext i8 %66 to i32
  %cmp98 = icmp ult i32 %inc105, %conv97
  br i1 %cmp98, label %arm_cmn_device_type.exit.for.body100_crit_edge, label %arm_cmn_device_type.exit.for.end106_crit_edge

arm_cmn_device_type.exit.for.end106_crit_edge:    ; preds = %arm_cmn_device_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end106

arm_cmn_device_type.exit.for.body100_crit_edge:   ; preds = %arm_cmn_device_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body100

for.end106:                                       ; preds = %arm_cmn_device_type.exit.for.end106_crit_edge, %for.body94.for.end106_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.678) #14
  %67 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp110237.not = icmp eq i8 %68, 0
  br i1 %cmp110237.not, label %for.end106.for.end115_crit_edge, label %for.end106.for.body112_crit_edge

for.end106.for.body112_crit_edge:                 ; preds = %for.end106
  br label %for.body112

for.end106.for.end115_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end115

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %for.end106.for.body112_crit_edge
  %x.6238 = phi i32 [ %inc114, %for.body112.for.body112_crit_edge ], [ 0, %for.end106.for.body112_crit_edge ]
  tail call fastcc void @arm_cmn_show_logid(ptr noundef %s, i32 noundef %x.6238, i32 noundef %dec249, i32 noundef %p.0243, i32 noundef 0)
  %inc114 = add nuw nsw i32 %x.6238, 1
  %69 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mesh_x, align 4
  %conv109 = zext i8 %70 to i32
  %cmp110 = icmp ult i32 %inc114, %conv109
  br i1 %cmp110, label %for.body112.for.body112_crit_edge, label %for.body112.for.end115_crit_edge

for.body112.for.end115_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end115

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body112

for.end115:                                       ; preds = %for.body112.for.end115_crit_edge, %for.end106.for.end115_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.679) #14
  %71 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mesh_x, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp119240.not = icmp eq i8 %72, 0
  br i1 %cmp119240.not, label %for.end115.for.inc125_crit_edge, label %for.end115.for.body121_crit_edge

for.end115.for.body121_crit_edge:                 ; preds = %for.end115
  br label %for.body121

for.end115.for.inc125_crit_edge:                  ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc125

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.end115.for.body121_crit_edge
  %x.7241 = phi i32 [ %inc123, %for.body121.for.body121_crit_edge ], [ 0, %for.end115.for.body121_crit_edge ]
  tail call fastcc void @arm_cmn_show_logid(ptr noundef %s, i32 noundef %x.7241, i32 noundef %dec249, i32 noundef %p.0243, i32 noundef 1)
  %inc123 = add nuw nsw i32 %x.7241, 1
  %73 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mesh_x, align 4
  %conv118 = zext i8 %74 to i32
  %cmp119 = icmp ult i32 %inc123, %conv118
  br i1 %cmp119, label %for.body121.for.body121_crit_edge, label %for.body121.for.inc125_crit_edge

for.body121.for.inc125_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc125

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body121

for.inc125:                                       ; preds = %for.body121.for.inc125_crit_edge, %for.end115.for.inc125_crit_edge
  %inc126 = add nuw nsw i32 %p.0243, 1
  %exitcond.not = icmp eq i32 %inc126, %cond.i
  br i1 %exitcond.not, label %for.inc125.for.end127_crit_edge, label %for.inc125.for.body94_crit_edge

for.inc125.for.body94_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body94

for.inc125.for.end127_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end127

for.end127:                                       ; preds = %for.inc125.for.end127_crit_edge, %for.cond91.preheader.for.end127_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.680) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %port) #14
  %tobool.not = icmp eq i32 %dec249, 0
  br i1 %tobool.not, label %for.end127.for.cond128.preheader_crit_edge, label %for.end127.while.body_crit_edge

for.end127.while.body_crit_edge:                  ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

for.end127.for.cond128.preheader_crit_edge:       ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond128.preheader

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %for.cond128.preheader.for.body133_crit_edge
  %x.8252 = phi i32 [ %inc135, %for.body133.for.body133_crit_edge ], [ 0, %for.cond128.preheader.for.body133_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.670) #14
  %inc135 = add nuw nsw i32 %x.8252, 1
  %75 = ptrtoint ptr %mesh_x to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mesh_x, align 4
  %conv130 = zext i8 %76 to i32
  %cmp131 = icmp ult i32 %inc135, %conv130
  br i1 %cmp131, label %for.body133.for.body133_crit_edge, label %for.body133.for.end136_crit_edge

for.body133.for.end136_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end136

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body133

for.end136:                                       ; preds = %for.body133.for.end136_crit_edge, %for.cond128.preheader.for.end136_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.681) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_cmn_show_logid(ptr noundef %s, i32 noundef %x, i32 noundef %y, i32 noundef %p, i32 noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dns = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dns, align 4
  %type39 = getelementptr inbounds %struct.arm_cmn_node, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not40 = icmp eq i32 %5, 0
  br i1 %tobool.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_xps.i = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_xps.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_xps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.i = icmp eq i16 %7, 1
  %mesh_x.i.i = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 5
  %mesh_y.i.i = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 6
  %ports_used.i = getelementptr inbounds %struct.arm_cmn, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %5, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %dn.041 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.041, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv2.i = zext i16 %10 to i32
  %11 = lshr i32 %conv2.i, 2
  %and.i = and i32 %11, 7
  %and5.i = and i32 %conv2.i, 3
  br label %arm_cmn_nid.exit

if.else.i:                                        ; preds = %for.body
  %12 = ptrtoint ptr %mesh_x.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mesh_x.i.i, align 4
  %14 = ptrtoint ptr %mesh_y.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mesh_y.i.i, align 1
  %16 = tail call i8 @llvm.umax.i8(i8 %13, i8 %15) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp5.i.i = icmp ugt i8 %16, 4
  %cond7.i.i = select i1 %cmp5.i.i, i32 3, i32 2
  %conv7.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %cond7.i.i, 3
  %shr8.i = lshr i32 %conv7.i, %add.i
  %17 = lshr i32 %conv7.i, 3
  %notmask.i = shl nsw i32 -1, %cond7.i.i
  %sub.i = xor i32 %notmask.i, -1
  %and13.i = and i32 %17, %sub.i
  %18 = ptrtoint ptr %ports_used.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ports_used.i, align 1
  %20 = and i8 %19, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else28.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = lshr i32 %conv7.i, 1
  %and21.i = and i32 %21, 3
  %and25.i = and i32 %conv7.i, 1
  br label %if.end.i

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = lshr i16 %10, 2
  %23 = and i16 %22, 1
  %conv32.i = zext i16 %23 to i32
  %24 = and i16 %10, 3
  %conv36.i = zext i16 %24 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else28.i, %if.then18.i
  %retval.sroa.7.0.i = phi i32 [ %and21.i, %if.then18.i ], [ %conv32.i, %if.else28.i ]
  %retval.sroa.11.0.i = phi i32 [ %and25.i, %if.then18.i ], [ %conv36.i, %if.else28.i ]
  %phi.cast.i = shl nuw nsw i32 %and13.i, 16
  %phi.bo50.i = shl i32 %shr8.i, 24
  %25 = or i32 %phi.cast.i, %phi.bo50.i
  br label %arm_cmn_nid.exit

arm_cmn_nid.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.sroa.7.1.i = phi i32 [ %and.i, %if.then.i ], [ %retval.sroa.7.0.i, %if.end.i ]
  %retval.sroa.11.1.i = phi i32 [ %and5.i, %if.then.i ], [ %retval.sroa.11.0.i, %if.end.i ]
  %retval.sroa.7.0.insert.insert.i = phi i32 [ 0, %if.then.i ], [ %25, %if.end.i ]
  %26 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.721)
  switch i32 %8, label %if.end5 [
    i32 6, label %arm_cmn_nid.exit.for.inc_crit_edge
    i32 3, label %arm_cmn_nid.exit.for.inc_crit_edge48
    i32 2, label %arm_cmn_nid.exit.for.inc_crit_edge49
    i32 1, label %arm_cmn_nid.exit.for.inc_crit_edge50
  ]

arm_cmn_nid.exit.for.inc_crit_edge50:             ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

arm_cmn_nid.exit.for.inc_crit_edge49:             ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

arm_cmn_nid.exit.for.inc_crit_edge48:             ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

arm_cmn_nid.exit.for.inc_crit_edge:               ; preds = %arm_cmn_nid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end5:                                          ; preds = %arm_cmn_nid.exit
  %retval.sroa.4.0.insert.insert.i = or i32 %retval.sroa.7.0.insert.insert.i, %retval.sroa.11.1.i
  %retval.sroa.7.0.insert.ext.i = shl nuw nsw i32 %retval.sroa.7.1.i, 8
  %retval.sroa.0.0.insert.insert.i = or i32 %retval.sroa.4.0.insert.insert.i, %retval.sroa.7.0.insert.ext.i
  %nid.sroa.7.0.extract.shift = lshr i32 %retval.sroa.0.0.insert.insert.i, 8
  %nid.sroa.5.0.extract.shift = lshr i32 %retval.sroa.4.0.insert.insert.i, 16
  %nid.sroa.0.0.extract.shift = lshr i32 %retval.sroa.4.0.insert.insert.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %nid.sroa.0.0.extract.shift, i32 %x)
  %cmp7.not = icmp eq i32 %nid.sroa.0.0.extract.shift, %x
  %conv10 = and i32 %nid.sroa.5.0.extract.shift, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %y)
  %cmp11.not = icmp eq i32 %conv10, %y
  %or.cond = select i1 %cmp7.not, i1 %cmp11.not, i1 false
  %conv14 = and i32 %nid.sroa.7.0.extract.shift, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %p)
  %cmp15.not = icmp eq i32 %conv14, %p
  %or.cond35 = select i1 %or.cond, i1 %cmp15.not, i1 false
  %conv18 = and i32 %retval.sroa.4.0.insert.insert.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %d)
  %cmp19.not = icmp eq i32 %conv18, %d
  %or.cond36 = select i1 %or.cond35, i1 %cmp19.not, i1 false
  br i1 %or.cond36, label %if.end22, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end22:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %logid = getelementptr inbounds %struct.arm_cmn_node, ptr %dn.041, i32 0, i32 2
  %27 = ptrtoint ptr %logid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %logid, align 2
  %conv23 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.705, i32 noundef %conv23) #14
  br label %cleanup24

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %arm_cmn_nid.exit.for.inc_crit_edge, %arm_cmn_nid.exit.for.inc_crit_edge48, %arm_cmn_nid.exit.for.inc_crit_edge49, %arm_cmn_nid.exit.for.inc_crit_edge50
  %incdec.ptr = getelementptr %struct.arm_cmn_node, ptr %dn.041, i32 1
  %type = getelementptr %struct.arm_cmn_node, ptr %dn.041, i32 1, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.704) #14
  br label %cleanup24

cleanup24:                                        ; preds = %for.end, %if.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arm_cmn_pmu_online_cpu(i32 noundef %cpu, ptr noundef readnone %cpuhp_node) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_cmn_pmu_offline_cpu(i32 noundef %cpu, ptr noundef %cpuhp_node) #2 align 64 {
entry:
  %mask = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #14
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !660
  %tobool.not = icmp eq ptr %cpuhp_node, null
  %add.ptr = getelementptr i8, ptr %cpuhp_node, i32 -56
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpu2 = getelementptr inbounds %struct.arm_cmn, ptr %spec.select, i32 0, i32 17
  %1 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cpu)
  %cmp.not = icmp eq i32 %2, %cpu
  br i1 %cmp.not, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %mask, ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end.i.i.if.else_crit_edge, label %if.end.i.i32

if.end.i.i.if.else_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.i.i32:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call.i.i31 = call i32 @__bitmap_andnot(ptr noundef nonnull %mask, ptr noundef nonnull %mask, ptr noundef %add.ptr.i, i32 noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool7.not = icmp eq i32 %call.i.i31, 0
  br i1 %tobool7.not, label %if.end.i.i32.if.else_crit_edge, label %if.then8

if.end.i.i32.if.else_crit_edge:                   ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then8:                                         ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @_find_first_bit_be(ptr noundef nonnull %mask, i32 noundef %5) #14
  br label %if.end11

if.else:                                          ; preds = %if.end.i.i32.if.else_crit_edge, %if.end.i.i.if.else_crit_edge
  %call10 = call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #19
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %target.0 = phi i32 [ %call.i, %if.then8 ], [ %call10, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %target.0, i32 %6)
  %cmp12 = icmp ult i32 %target.0, %6
  br i1 %cmp12, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %pmu.i = getelementptr inbounds %struct.arm_cmn, ptr %spec.select, i32 0, i32 19
  %7 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu2, align 4
  call void @perf_pmu_migrate_context(ptr noundef %pmu.i, i32 noundef %8, i32 noundef %target.0) #14
  %num_dtcs.i = getelementptr inbounds %struct.arm_cmn, ptr %spec.select, i32 0, i32 16
  %9 = ptrtoint ptr %num_dtcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_dtcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.not.i = icmp eq i32 %10, 0
  br i1 %cmp12.not.i, label %if.then13.arm_cmn_migrate.exit_crit_edge, label %for.body.lr.ph.i

if.then13.arm_cmn_migrate.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_migrate.exit

for.body.lr.ph.i:                                 ; preds = %if.then13
  %dtc.i = getelementptr inbounds %struct.arm_cmn, ptr %spec.select, i32 0, i32 15
  %rem.i.i = and i32 %target.0, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %target.0, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %dtc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dtc.i, align 4
  %irq.i = getelementptr %struct.arm_cmn_dtc, ptr %12, i32 %i.013.i, i32 1
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  %call2.i = call i32 @irq_set_affinity(i32 noundef %14, ptr noundef %add.ptr.i.i) #14
  %inc.i = add nuw i32 %i.013.i, 1
  %15 = ptrtoint ptr %num_dtcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_dtcs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.arm_cmn_migrate.exit_crit_edge

for.body.i.arm_cmn_migrate.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_cmn_migrate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

arm_cmn_migrate.exit:                             ; preds = %for.body.i.arm_cmn_migrate.exit_crit_edge, %if.then13.arm_cmn_migrate.exit_crit_edge
  %17 = ptrtoint ptr %cpu2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %target.0, ptr %cpu2, align 4
  br label %cleanup

cleanup:                                          ; preds = %arm_cmn_migrate.exit, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 723)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 723)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !562, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649}
!llvm.module.flags = !{!651, !652, !653, !654, !655, !656, !657, !658}
!llvm.ident = !{!659}

!0 = !{ptr @__initcall__kmod_arm_cmn__508_2017_arm_cmn_init6, !1, !"__initcall__kmod_arm_cmn__508_2017_arm_cmn_init6", i1 false, i1 false}
!1 = !{!"../drivers/perf/arm-cmn.c", i32 2017, i32 1}
!2 = !{ptr @__exitcall_arm_cmn_exit, !3, !"__exitcall_arm_cmn_exit", i1 false, i1 false}
!3 = !{!"../drivers/perf/arm-cmn.c", i32 2018, i32 1}
!4 = !{ptr @__UNIQUE_ID_author509, !5, !"__UNIQUE_ID_author509", i1 false, i1 false}
!5 = !{!"../drivers/perf/arm-cmn.c", i32 2020, i32 1}
!6 = !{ptr @__UNIQUE_ID_description510, !7, !"__UNIQUE_ID_description510", i1 false, i1 false}
!7 = !{!"../drivers/perf/arm-cmn.c", i32 2021, i32 1}
!8 = !{ptr @__UNIQUE_ID_file511, !9, !"__UNIQUE_ID_file511", i1 false, i1 false}
!9 = !{!"../drivers/perf/arm-cmn.c", i32 2022, i32 1}
!10 = !{ptr @__UNIQUE_ID_license512, !9, !"__UNIQUE_ID_license512", i1 false, i1 false}
!11 = !{ptr @arm_cmn_hp_state, !12, !"arm_cmn_hp_state", i1 false, i1 false}
!12 = !{!"../drivers/perf/arm-cmn.c", i32 296, i32 12}
!13 = !{ptr @arm_cmn_debugfs, !14, !"arm_cmn_debugfs", i1 false, i1 false}
!14 = !{!"../drivers/perf/arm-cmn.c", i32 356, i32 16}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/perf/arm-cmn.c", i32 1980, i32 11}
!17 = !{ptr @arm_cmn_driver, !18, !"arm_cmn_driver", i1 false, i1 false}
!18 = !{!"../drivers/perf/arm-cmn.c", i32 1978, i32 31}
!19 = !{ptr @arm_cmn_probe.id, !20, !"id", i1 false, i1 false}
!20 = !{!"../drivers/perf/arm-cmn.c", i32 1876, i32 18}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/perf/arm-cmn.c", i32 1932, i32 46}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/perf/arm-cmn.c", i32 1869, i32 34}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/perf/arm-cmn.c", i32 1767, i32 5}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @arm_cmn_discover.__UNIQUE_ID_ddebug505, !26, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/perf/arm-cmn.c", i32 1798, i32 5}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @arm_cmn_discover._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @arm_cmn_discover._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/perf/arm-cmn.c", i32 1827, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @arm_cmn_discover._entry.10, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @arm_cmn_discover._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/perf/arm-cmn.c", i32 1829, i32 2}
!44 = !{ptr @arm_cmn_discover.__UNIQUE_ID_ddebug506, !43, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/perf/arm-cmn.c", i32 1831, i32 2}
!47 = !{ptr @arm_cmn_discover.__UNIQUE_ID_ddebug507, !46, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/perf/arm-cmn.c", i32 1641, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @arm_cmn_init_node_info.__UNIQUE_ID_ddebug464, !51, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!54 = !{ptr @arm_cmn_attr_groups, !55, !"arm_cmn_attr_groups", i1 false, i1 false}
!55 = !{!"../drivers/perf/arm-cmn.c", i32 888, i32 38}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/perf/arm-cmn.c", i32 816, i32 10}
!58 = !{ptr @arm_cmn_event_attrs_group, !59, !"arm_cmn_event_attrs_group", i1 false, i1 false}
!59 = !{!"../drivers/perf/arm-cmn.c", i32 815, i32 37}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/perf/arm-cmn.c", i32 658, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/perf/arm-cmn.c", i32 665, i32 2}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/perf/arm-cmn.c", i32 666, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/perf/arm-cmn.c", i32 667, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/perf/arm-cmn.c", i32 668, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/perf/arm-cmn.c", i32 669, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/perf/arm-cmn.c", i32 670, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/perf/arm-cmn.c", i32 671, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/perf/arm-cmn.c", i32 672, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/perf/arm-cmn.c", i32 673, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/perf/arm-cmn.c", i32 674, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/perf/arm-cmn.c", i32 675, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/perf/arm-cmn.c", i32 676, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/perf/arm-cmn.c", i32 677, i32 2}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/perf/arm-cmn.c", i32 678, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/perf/arm-cmn.c", i32 679, i32 2}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/perf/arm-cmn.c", i32 680, i32 2}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/perf/arm-cmn.c", i32 681, i32 2}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/perf/arm-cmn.c", i32 682, i32 2}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/perf/arm-cmn.c", i32 683, i32 2}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/perf/arm-cmn.c", i32 684, i32 2}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/perf/arm-cmn.c", i32 685, i32 2}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/perf/arm-cmn.c", i32 687, i32 2}
!106 = !{ptr @.str.66, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/perf/arm-cmn.c", i32 688, i32 2}
!108 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/perf/arm-cmn.c", i32 689, i32 2}
!110 = !{ptr @.str.70, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/perf/arm-cmn.c", i32 690, i32 2}
!112 = !{ptr @.str.72, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/perf/arm-cmn.c", i32 691, i32 2}
!114 = !{ptr @.str.74, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/perf/arm-cmn.c", i32 692, i32 2}
!116 = !{ptr @.str.76, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/perf/arm-cmn.c", i32 693, i32 2}
!118 = !{ptr @.str.78, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/perf/arm-cmn.c", i32 694, i32 2}
!120 = !{ptr @.str.80, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/perf/arm-cmn.c", i32 695, i32 2}
!122 = !{ptr @.str.82, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/perf/arm-cmn.c", i32 696, i32 2}
!124 = !{ptr @.str.84, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/perf/arm-cmn.c", i32 697, i32 2}
!126 = !{ptr @.str.86, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/perf/arm-cmn.c", i32 698, i32 2}
!128 = !{ptr @.str.88, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/perf/arm-cmn.c", i32 699, i32 2}
!130 = !{ptr @.str.90, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/perf/arm-cmn.c", i32 700, i32 2}
!132 = !{ptr @.str.92, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/perf/arm-cmn.c", i32 701, i32 2}
!134 = !{ptr @.str.94, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/perf/arm-cmn.c", i32 702, i32 2}
!136 = !{ptr @.str.96, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/perf/arm-cmn.c", i32 703, i32 2}
!138 = !{ptr @.str.98, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/perf/arm-cmn.c", i32 704, i32 2}
!140 = !{ptr @.str.100, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/perf/arm-cmn.c", i32 705, i32 2}
!142 = !{ptr @.str.102, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/perf/arm-cmn.c", i32 706, i32 2}
!144 = !{ptr @.str.104, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/perf/arm-cmn.c", i32 707, i32 2}
!146 = !{ptr @.str.106, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/perf/arm-cmn.c", i32 708, i32 2}
!148 = !{ptr @.str.108, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/perf/arm-cmn.c", i32 709, i32 2}
!150 = !{ptr @.str.110, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/perf/arm-cmn.c", i32 710, i32 2}
!152 = !{ptr @.str.112, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/perf/arm-cmn.c", i32 711, i32 2}
!154 = !{ptr @.str.114, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/perf/arm-cmn.c", i32 712, i32 2}
!156 = !{ptr @.str.116, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/perf/arm-cmn.c", i32 713, i32 2}
!158 = !{ptr @.str.118, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/perf/arm-cmn.c", i32 714, i32 2}
!160 = !{ptr @.str.120, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/perf/arm-cmn.c", i32 715, i32 2}
!162 = !{ptr @.str.122, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/perf/arm-cmn.c", i32 716, i32 2}
!164 = !{ptr @.str.124, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/perf/arm-cmn.c", i32 717, i32 2}
!166 = !{ptr @.str.126, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/perf/arm-cmn.c", i32 718, i32 2}
!168 = !{ptr @.str.128, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/perf/arm-cmn.c", i32 719, i32 2}
!170 = !{ptr @.str.130, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/perf/arm-cmn.c", i32 720, i32 2}
!172 = !{ptr @.str.132, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/perf/arm-cmn.c", i32 721, i32 2}
!174 = !{ptr @.str.134, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/perf/arm-cmn.c", i32 722, i32 2}
!176 = !{ptr @.str.136, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/perf/arm-cmn.c", i32 723, i32 2}
!178 = !{ptr @.str.138, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/perf/arm-cmn.c", i32 724, i32 2}
!180 = !{ptr @.str.140, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/perf/arm-cmn.c", i32 726, i32 2}
!182 = !{ptr @.str.142, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/perf/arm-cmn.c", i32 727, i32 2}
!184 = !{ptr @.str.144, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/perf/arm-cmn.c", i32 728, i32 2}
!186 = !{ptr @.str.146, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/perf/arm-cmn.c", i32 729, i32 2}
!188 = !{ptr @.str.148, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/perf/arm-cmn.c", i32 730, i32 2}
!190 = !{ptr @.str.150, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/perf/arm-cmn.c", i32 731, i32 2}
!192 = !{ptr @.str.152, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/perf/arm-cmn.c", i32 732, i32 2}
!194 = !{ptr @.str.154, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/perf/arm-cmn.c", i32 733, i32 2}
!196 = !{ptr @.str.156, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/perf/arm-cmn.c", i32 734, i32 2}
!198 = !{ptr @.str.158, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/perf/arm-cmn.c", i32 735, i32 2}
!200 = !{ptr @.str.160, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/perf/arm-cmn.c", i32 736, i32 2}
!202 = !{ptr @.str.162, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/perf/arm-cmn.c", i32 737, i32 2}
!204 = !{ptr @.str.164, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/perf/arm-cmn.c", i32 738, i32 2}
!206 = !{ptr @.str.166, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/perf/arm-cmn.c", i32 739, i32 2}
!208 = !{ptr @.str.168, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/perf/arm-cmn.c", i32 740, i32 2}
!210 = !{ptr @.str.170, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/perf/arm-cmn.c", i32 741, i32 2}
!212 = !{ptr @.str.172, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/perf/arm-cmn.c", i32 742, i32 2}
!214 = !{ptr @.str.174, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/perf/arm-cmn.c", i32 743, i32 2}
!216 = !{ptr @.str.176, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/perf/arm-cmn.c", i32 744, i32 2}
!218 = !{ptr @.str.178, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/perf/arm-cmn.c", i32 746, i32 2}
!220 = !{ptr @.str.180, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.182, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.184, !219, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.186, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.188, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.190, !219, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.192, !219, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.194, !219, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.196, !219, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.198, !219, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.200, !219, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.202, !219, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.204, !219, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.206, !219, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.208, !219, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.210, !219, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.212, !219, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.214, !219, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.216, !219, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.218, !219, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.220, !219, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.222, !219, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.224, !219, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.226, !219, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.228, !219, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.230, !219, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.232, !219, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.234, !219, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.236, !219, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.238, !219, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.240, !219, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.242, !219, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.244, !219, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.246, !219, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.248, !219, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.250, !219, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.252, !219, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.254, !219, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.256, !219, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.258, !219, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.260, !219, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.262, !219, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.264, !219, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.266, !219, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.268, !219, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.270, !219, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.272, !219, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.274, !219, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.276, !219, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.278, !219, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.280, !219, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.282, !219, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.284, !219, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.286, !219, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.288, !219, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.290, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/perf/arm-cmn.c", i32 747, i32 2}
!277 = !{ptr @.str.292, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.294, !276, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.296, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.298, !276, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.300, !276, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.302, !276, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.304, !276, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.306, !276, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.308, !276, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.310, !276, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.312, !276, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.314, !276, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.316, !276, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.318, !276, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.320, !276, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.322, !276, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.324, !276, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.326, !276, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.328, !276, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.330, !276, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.332, !276, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.334, !276, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.336, !276, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.338, !276, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.340, !276, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.342, !276, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.344, !276, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.346, !276, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.348, !276, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.350, !276, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.352, !276, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.354, !276, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.356, !276, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.358, !276, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.360, !276, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.362, !276, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.364, !276, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.366, !276, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.368, !276, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.370, !276, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.372, !276, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.374, !276, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.376, !276, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.378, !276, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.380, !276, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.382, !276, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.384, !276, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.386, !276, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.388, !276, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.390, !276, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.392, !276, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.394, !276, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.396, !276, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.398, !276, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.400, !276, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.402, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/perf/arm-cmn.c", i32 748, i32 2}
!334 = !{ptr @.str.404, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.406, !333, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.408, !333, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.410, !333, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.412, !333, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.414, !333, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.416, !333, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.418, !333, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.420, !333, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.422, !333, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.424, !333, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.426, !333, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.428, !333, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.430, !333, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.432, !333, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.434, !333, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.436, !333, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.438, !333, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.440, !333, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.442, !333, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.444, !333, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.446, !333, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.448, !333, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.450, !333, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.452, !333, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.454, !333, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.456, !333, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.458, !333, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.460, !333, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.462, !333, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.464, !333, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.466, !333, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.468, !333, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.470, !333, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.472, !333, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.474, !333, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.476, !333, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.478, !333, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.480, !333, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.482, !333, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.484, !333, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.486, !333, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.488, !333, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.490, !333, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.492, !333, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.494, !333, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.496, !333, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.498, !333, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.500, !333, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.502, !333, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.504, !333, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.506, !333, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.508, !333, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.510, !333, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.512, !333, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.514, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/perf/arm-cmn.c", i32 750, i32 2}
!391 = !{ptr @.str.516, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/perf/arm-cmn.c", i32 751, i32 2}
!393 = !{ptr @.str.518, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/perf/arm-cmn.c", i32 753, i32 2}
!395 = !{ptr @.str.520, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/perf/arm-cmn.c", i32 754, i32 2}
!397 = !{ptr @.str.522, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/perf/arm-cmn.c", i32 755, i32 2}
!399 = !{ptr @.str.524, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/perf/arm-cmn.c", i32 756, i32 2}
!401 = !{ptr @.str.526, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/perf/arm-cmn.c", i32 757, i32 2}
!403 = !{ptr @.str.528, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/perf/arm-cmn.c", i32 758, i32 2}
!405 = !{ptr @.str.530, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/perf/arm-cmn.c", i32 759, i32 2}
!407 = !{ptr @.str.532, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/perf/arm-cmn.c", i32 760, i32 2}
!409 = !{ptr @.str.534, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/perf/arm-cmn.c", i32 761, i32 2}
!411 = !{ptr @.str.536, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/perf/arm-cmn.c", i32 762, i32 2}
!413 = !{ptr @.str.538, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/perf/arm-cmn.c", i32 763, i32 2}
!415 = !{ptr @.str.540, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/perf/arm-cmn.c", i32 764, i32 2}
!417 = !{ptr @.str.542, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/perf/arm-cmn.c", i32 765, i32 2}
!419 = !{ptr @.str.544, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/perf/arm-cmn.c", i32 766, i32 2}
!421 = !{ptr @.str.546, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/perf/arm-cmn.c", i32 767, i32 2}
!423 = !{ptr @.str.548, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/perf/arm-cmn.c", i32 768, i32 2}
!425 = !{ptr @.str.550, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/perf/arm-cmn.c", i32 769, i32 2}
!427 = !{ptr @.str.552, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/perf/arm-cmn.c", i32 770, i32 2}
!429 = !{ptr @.str.554, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/perf/arm-cmn.c", i32 772, i32 2}
!431 = !{ptr @.str.556, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/perf/arm-cmn.c", i32 773, i32 2}
!433 = !{ptr @.str.558, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/perf/arm-cmn.c", i32 774, i32 2}
!435 = !{ptr @.str.560, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/perf/arm-cmn.c", i32 775, i32 2}
!437 = !{ptr @.str.562, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/perf/arm-cmn.c", i32 776, i32 2}
!439 = !{ptr @.str.564, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/perf/arm-cmn.c", i32 777, i32 2}
!441 = !{ptr @.str.566, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/perf/arm-cmn.c", i32 778, i32 2}
!443 = !{ptr @.str.568, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/perf/arm-cmn.c", i32 779, i32 2}
!445 = !{ptr @.str.570, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/perf/arm-cmn.c", i32 780, i32 2}
!447 = !{ptr @.str.572, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/perf/arm-cmn.c", i32 781, i32 2}
!449 = !{ptr @.str.574, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/perf/arm-cmn.c", i32 782, i32 2}
!451 = !{ptr @.str.576, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/perf/arm-cmn.c", i32 783, i32 2}
!453 = !{ptr @.str.578, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/perf/arm-cmn.c", i32 784, i32 2}
!455 = !{ptr @.str.580, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/perf/arm-cmn.c", i32 785, i32 2}
!457 = !{ptr @.str.582, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/perf/arm-cmn.c", i32 786, i32 2}
!459 = !{ptr @.str.584, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/perf/arm-cmn.c", i32 787, i32 2}
!461 = !{ptr @.str.586, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/perf/arm-cmn.c", i32 788, i32 2}
!463 = !{ptr @.str.588, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/perf/arm-cmn.c", i32 789, i32 2}
!465 = !{ptr @.str.590, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/perf/arm-cmn.c", i32 790, i32 2}
!467 = !{ptr @.str.592, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/perf/arm-cmn.c", i32 791, i32 2}
!469 = !{ptr @.str.594, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/perf/arm-cmn.c", i32 792, i32 2}
!471 = !{ptr @.str.596, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/perf/arm-cmn.c", i32 793, i32 2}
!473 = !{ptr @.str.598, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/perf/arm-cmn.c", i32 794, i32 2}
!475 = !{ptr @.str.600, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/perf/arm-cmn.c", i32 795, i32 2}
!477 = !{ptr @.str.602, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/perf/arm-cmn.c", i32 796, i32 2}
!479 = !{ptr @.str.604, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/perf/arm-cmn.c", i32 797, i32 2}
!481 = !{ptr @.str.606, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/perf/arm-cmn.c", i32 799, i32 2}
!483 = !{ptr @.str.608, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/perf/arm-cmn.c", i32 800, i32 2}
!485 = !{ptr @.str.610, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/perf/arm-cmn.c", i32 801, i32 2}
!487 = !{ptr @.str.612, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/perf/arm-cmn.c", i32 802, i32 2}
!489 = !{ptr @.str.614, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/perf/arm-cmn.c", i32 803, i32 2}
!491 = !{ptr @.str.616, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/perf/arm-cmn.c", i32 804, i32 2}
!493 = !{ptr @.str.618, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/perf/arm-cmn.c", i32 805, i32 2}
!495 = !{ptr @.str.620, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/perf/arm-cmn.c", i32 806, i32 2}
!497 = !{ptr @.str.622, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/perf/arm-cmn.c", i32 807, i32 2}
!499 = !{ptr @.str.624, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/perf/arm-cmn.c", i32 808, i32 2}
!501 = !{ptr @.str.626, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/perf/arm-cmn.c", i32 809, i32 2}
!503 = !{ptr @.str.628, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/perf/arm-cmn.c", i32 810, i32 2}
!505 = !{ptr @arm_cmn_event_attrs, !506, !"arm_cmn_event_attrs", i1 false, i1 false}
!506 = !{!"../drivers/perf/arm-cmn.c", i32 657, i32 26}
!507 = !{ptr @.str.630, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/perf/arm-cmn.c", i32 558, i32 26}
!509 = !{ptr @.str.631, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/perf/arm-cmn.c", i32 562, i32 7}
!511 = !{ptr @.str.632, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/perf/arm-cmn.c", i32 566, i32 26}
!513 = !{ptr @.str.633, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/perf/arm-cmn.c", i32 569, i32 25}
!515 = !{ptr @.str.634, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/perf/arm-cmn.c", i32 864, i32 10}
!517 = !{ptr @arm_cmn_format_attrs_group, !518, !"arm_cmn_format_attrs_group", i1 false, i1 false}
!518 = !{!"../drivers/perf/arm-cmn.c", i32 863, i32 37}
!519 = !{ptr @.str.635, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/perf/arm-cmn.c", i32 845, i32 2}
!521 = !{ptr @.str.637, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/perf/arm-cmn.c", i32 846, i32 2}
!523 = !{ptr @.str.639, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/perf/arm-cmn.c", i32 847, i32 2}
!525 = !{ptr @.str.641, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/perf/arm-cmn.c", i32 848, i32 2}
!527 = !{ptr @.str.643, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/perf/arm-cmn.c", i32 849, i32 2}
!529 = !{ptr @.str.645, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/perf/arm-cmn.c", i32 851, i32 2}
!531 = !{ptr @.str.647, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/perf/arm-cmn.c", i32 852, i32 2}
!533 = !{ptr @.str.649, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/perf/arm-cmn.c", i32 853, i32 2}
!535 = !{ptr @.str.651, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/perf/arm-cmn.c", i32 854, i32 2}
!537 = !{ptr @.str.653, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/perf/arm-cmn.c", i32 855, i32 2}
!539 = !{ptr @.str.655, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/perf/arm-cmn.c", i32 857, i32 2}
!541 = !{ptr @.str.657, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/perf/arm-cmn.c", i32 858, i32 2}
!543 = !{ptr @arm_cmn_format_attrs, !544, !"arm_cmn_format_attrs", i1 false, i1 false}
!544 = !{!"../drivers/perf/arm-cmn.c", i32 844, i32 26}
!545 = !{ptr @.str.659, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/perf/arm-cmn.c", i32 828, i32 26}
!547 = !{ptr @.str.660, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/perf/arm-cmn.c", i32 831, i32 26}
!549 = !{ptr @.str.661, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/perf/arm-cmn.c", i32 833, i32 25}
!551 = !{ptr @arm_cmn_cpumask_attr_group, !552, !"arm_cmn_cpumask_attr_group", i1 false, i1 false}
!552 = !{!"../drivers/perf/arm-cmn.c", i32 884, i32 37}
!553 = !{ptr @arm_cmn_cpumask_attrs, !554, !"arm_cmn_cpumask_attrs", i1 false, i1 false}
!554 = !{!"../drivers/perf/arm-cmn.c", i32 879, i32 26}
!555 = !{ptr @.str.662, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/perf/arm-cmn.c", i32 877, i32 3}
!557 = !{ptr @arm_cmn_cpumask_attr, !558, !"arm_cmn_cpumask_attr", i1 false, i1 false}
!558 = !{!"../drivers/perf/arm-cmn.c", i32 876, i32 32}
!559 = !{ptr @.str.663, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/perf/arm-cmn.c", i32 1254, i32 3}
!561 = !{ptr @.str.664, !560, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @arm_cmn_event_init.__UNIQUE_ID_ddebug403, !560, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!563 = !{ptr @.str.665, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/perf/arm-cmn.c", i32 477, i32 22}
!565 = !{ptr @.str.666, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/perf/arm-cmn.c", i32 480, i32 47}
!567 = !{ptr @arm_cmn_map_fops, !568, !"arm_cmn_map_fops", i1 false, i1 false}
!568 = !{!"../drivers/perf/arm-cmn.c", i32 473, i32 1}
!569 = !{ptr @.str.667, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/perf/arm-cmn.c", i32 416, i32 14}
!571 = !{ptr @.str.668, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/perf/arm-cmn.c", i32 418, i32 17}
!573 = !{ptr @.str.669, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/perf/arm-cmn.c", i32 419, i32 14}
!575 = !{ptr @.str.670, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/perf/arm-cmn.c", i32 426, i32 16}
!577 = !{ptr @.str.671, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/perf/arm-cmn.c", i32 428, i32 17}
!579 = !{ptr @.str.672, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/perf/arm-cmn.c", i32 439, i32 18}
!581 = !{ptr @.str.673, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/perf/arm-cmn.c", i32 442, i32 15}
!583 = !{ptr @.str.674, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/perf/arm-cmn.c", i32 447, i32 17}
!585 = !{ptr @.str.675, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/perf/arm-cmn.c", i32 449, i32 19}
!587 = !{ptr @.str.676, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/perf/arm-cmn.c", i32 453, i32 16}
!589 = !{ptr @.str.677, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/perf/arm-cmn.c", i32 456, i32 18}
!591 = !{ptr @.str.678, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/perf/arm-cmn.c", i32 459, i32 16}
!593 = !{ptr @.str.679, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/perf/arm-cmn.c", i32 462, i32 16}
!595 = !{ptr @.str.680, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/perf/arm-cmn.c", i32 466, i32 15}
!597 = !{ptr @.str.681, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/perf/arm-cmn.c", i32 470, i32 14}
!599 = !{ptr @.str.682, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/perf/arm-cmn.c", i32 362, i32 21}
!601 = !{ptr @.str.683, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/perf/arm-cmn.c", i32 363, i32 21}
!603 = !{ptr @.str.684, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/perf/arm-cmn.c", i32 364, i32 21}
!605 = !{ptr @.str.685, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/perf/arm-cmn.c", i32 365, i32 21}
!607 = !{ptr @.str.686, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/perf/arm-cmn.c", i32 366, i32 21}
!609 = !{ptr @.str.687, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/perf/arm-cmn.c", i32 367, i32 21}
!611 = !{ptr @.str.688, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/perf/arm-cmn.c", i32 368, i32 21}
!613 = !{ptr @.str.689, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/perf/arm-cmn.c", i32 369, i32 21}
!615 = !{ptr @.str.690, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/perf/arm-cmn.c", i32 370, i32 21}
!617 = !{ptr @.str.691, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/perf/arm-cmn.c", i32 371, i32 21}
!619 = !{ptr @.str.692, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/perf/arm-cmn.c", i32 372, i32 21}
!621 = !{ptr @.str.693, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/perf/arm-cmn.c", i32 373, i32 21}
!623 = !{ptr @.str.694, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/perf/arm-cmn.c", i32 374, i32 21}
!625 = !{ptr @.str.695, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/perf/arm-cmn.c", i32 375, i32 21}
!627 = !{ptr @.str.696, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/perf/arm-cmn.c", i32 376, i32 21}
!629 = !{ptr @.str.697, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/perf/arm-cmn.c", i32 377, i32 21}
!631 = !{ptr @.str.698, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/perf/arm-cmn.c", i32 378, i32 21}
!633 = !{ptr @.str.699, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/perf/arm-cmn.c", i32 379, i32 21}
!635 = !{ptr @.str.700, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/perf/arm-cmn.c", i32 380, i32 21}
!637 = !{ptr @.str.701, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/perf/arm-cmn.c", i32 381, i32 21}
!639 = !{ptr @.str.702, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/perf/arm-cmn.c", i32 382, i32 21}
!641 = !{ptr @.str.703, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/perf/arm-cmn.c", i32 383, i32 21}
!643 = !{ptr @.str.704, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/perf/arm-cmn.c", i32 384, i32 21}
!645 = !{ptr @.str.705, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/perf/arm-cmn.c", i32 405, i32 17}
!647 = !{ptr @arm_cmn_of_match, !648, !"arm_cmn_of_match", i1 false, i1 false}
!648 = !{!"../drivers/perf/arm-cmn.c", i32 1962, i32 34}
!649 = !{ptr @.str.706, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/perf/arm-cmn.c", i32 1993, i32 11}
!651 = !{i32 1, !"wchar_size", i32 2}
!652 = !{i32 1, !"min_enum_size", i32 4}
!653 = !{i32 8, !"branch-target-enforcement", i32 0}
!654 = !{i32 8, !"sign-return-address", i32 0}
!655 = !{i32 8, !"sign-return-address-all", i32 0}
!656 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!657 = !{i32 7, !"uwtable", i32 1}
!658 = !{i32 7, !"frame-pointer", i32 2}
!659 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!660 = !{!"auto-init"}
!661 = !{!"branch_weights", i32 1, i32 2000}
!662 = !{i8 0, i8 2}
!663 = !{i64 6717053}
!664 = !{i64 2148446404}
!665 = !{i64 2148360991, i64 2148361023, i64 2148361052, i64 2148361086, i64 2148361117, i64 2148361140}
!666 = !{i64 2148446632}
!667 = !{i64 6717471}
!668 = !{i64 2149003753, i64 2149003758, i64 2149003771, i64 2149003815, i64 2149003849, i64 2149003870}
!669 = !{i32 0, i32 33}
!670 = !{i64 751942, i64 752003}
!671 = !{i64 754674}
!672 = !{i64 754959}
