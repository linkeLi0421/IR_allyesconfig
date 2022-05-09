; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-etm-perf.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-etm-perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+etm_perf_symlink\22, \22a\22\09"
module asm "\09.weak\09__crc_etm_perf_symlink\09\09\09\09"
module asm "\09.long\09__crc_etm_perf_symlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_etm_perf_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22etm_perf_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_etm_perf_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.etm_ctxt = type { %struct.perf_output_handle, ptr }
%struct.perf_output_handle = type { ptr, ptr, i32, i32, i64, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cpumask = type { [1 x i32] }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
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
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.cscfg_config_desc = type { ptr, ptr, %struct.list_head, i32, ptr, i32, i32, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.55, i64, i64, i64, %union.anon.56, i32, %union.anon.57, %union.anon.58, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%struct.hw_perf_event = type { %union.anon.59, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.66, i64, i64, i64, i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.etm_event_data = type { %struct.work_struct, %struct.cpumask, ptr, i32, ptr }
%struct.coresight_ops_sink = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.coresight_ops_source = type { ptr, ptr, ptr, ptr }
%struct.perf_addr_filter_range = type { i32, i32 }
%struct.etm_filter = type { i32, i32, i32 }
%struct.perf_addr_filter = type { %struct.list_head, %struct.path, i32, i32, i32 }
%struct.path = type { ptr, ptr }
%struct.etm_filters = type { [8 x %struct.etm_filter], i32, i8 }

@etm_pmu = internal global { %struct.pmu, [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%d\00", [26 x i8] zeroinitializer }, align 32
@etm_perf_up = internal global { i1, [31 x i8] } zeroinitializer, align 32
@csdev_src = weak dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_etm_perf_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_etm_perf_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_etm_perf_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @etm_perf_symlink to i32), ptr @__kstrtab_etm_perf_symlink, ptr @__kstrtabns_etm_perf_symlink }, section "___ksymtab_gpl+etm_perf_symlink", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sinks\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@etm_pmu_attr_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @etm_pmu_format_group, ptr @etm_pmu_sinks_group, ptr @etm_pmu_events_group, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs_etm\00", [25 x i8] zeroinitializer }, align 32
@__pcpu_unique_etm_ctxt = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@etm_ctxt = weak dso_local global %struct.etm_ctxt zeroinitializer, section ".data..percpu", align 8
@__pcpu_unique_csdev_src = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@etm_perf_add_symlink_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%lx\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"configid=0x%lx\0A\00", [16 x i8] zeroinitializer }, align 32
@etm_pmu_format_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.6, ptr null, ptr null, ptr @etm_config_formats_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@etm_pmu_sinks_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.1, ptr null, ptr null, ptr @etm_config_sinks_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@etm_pmu_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @etm_config_events_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@etm_config_formats_attr = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @format_attr_cycacc, ptr @format_attr_contextid, ptr @format_attr_contextid1, ptr @format_attr_contextid2, ptr @format_attr_timestamp, ptr @format_attr_retstack, ptr @format_attr_sinkid, ptr @format_attr_preset, ptr @format_attr_configid, ptr null], [56 x i8] zeroinitializer }, align 32
@format_attr_cycacc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cycacc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_contextid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @format_attr_contextid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_contextid1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @contextid1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_contextid2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @contextid2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_timestamp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timestamp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_retstack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @retstack_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_sinkid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sinkid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_preset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @preset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_configid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @configid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cycacc\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:12\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"contextid\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"contextid1\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:14\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"contextid2\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:15\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timestamp\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:28\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"retstack\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:29\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sinkid\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config2:0-31\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"preset\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config:0-3\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"configid\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config2:32-63\0A\00", [17 x i8] zeroinitializer }, align 32
@etm_config_sinks_attr = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@etm_config_events_attr = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@etm_setup_aux.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&event_data->work)\00", [59 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/hwtracing/coresight/coresight-etm-perf.c\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@etm_event_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@etm_event_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"etm_pmu\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 26, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 701, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"etm_perf_up\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 781, i32 52 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 829, i32 77 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"etm_pmu_attr_groups\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 126, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 872, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 753, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 727, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 819, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"etm_pmu_format_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 103, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"etm_pmu_sinks_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 112, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"etm_pmu_events_group\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 121, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 104, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"etm_config_formats_attr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 90, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"format_attr_cycacc\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"format_attr_contextid\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 87, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"format_attr_contextid1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"format_attr_contextid2\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"format_attr_timestamp\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"format_attr_retstack\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"format_attr_sinkid\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"format_attr_preset\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"format_attr_configid\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 55, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 88, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 84, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 57, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 59, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 60, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 61, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 65, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 63, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 67, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"etm_config_sinks_attr\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 108, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant [23 x i8] c"etm_config_events_attr\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 117, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 309, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [52 x i8] c"../drivers/hwtracing/coresight/coresight-etm-perf.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 198, i32 6 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab_etm_perf_symlink, ptr @etm_pmu, ptr @.str, ptr @etm_perf_up, ptr @.str.1, ptr @.str.2, ptr @etm_pmu_attr_groups, ptr @.str.3, ptr @etm_perf_add_symlink_group.__key, ptr @.str.4, ptr @.str.5, ptr @etm_pmu_format_group, ptr @etm_pmu_sinks_group, ptr @etm_pmu_events_group, ptr @.str.6, ptr @etm_config_formats_attr, ptr @format_attr_cycacc, ptr @format_attr_contextid, ptr @format_attr_contextid1, ptr @format_attr_contextid2, ptr @format_attr_timestamp, ptr @format_attr_retstack, ptr @format_attr_sinkid, ptr @format_attr_preset, ptr @format_attr_configid, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @etm_config_sinks_attr, ptr @etm_config_events_attr, ptr @etm_setup_aux.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_pmu to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_perf_up to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_pmu_attr_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_perf_add_symlink_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_pmu_format_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_pmu_sinks_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_pmu_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_config_formats_attr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_cycacc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_contextid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_contextid1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_contextid2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_timestamp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_retstack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_sinkid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_preset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_configid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_config_sinks_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_config_events_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etm_setup_aux.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etm_perf_symlink(ptr noundef %csdev, i1 noundef zeroext %link) #0 align 64 {
entry:
  %entry1 = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %entry1) #14
  %ops = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %entry1, i32 255, i32 11)
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 8
  %source_ops = getelementptr inbounds %struct.coresight_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %source_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %source_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call i32 %6(ptr noundef %csdev) #14
  %7 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 2), align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %entry1, ptr noundef nonnull @.str, i32 noundef %call)
  %.b35 = load i1, ptr @etm_perf_up, align 1
  br i1 %.b35, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %link, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call7 = call i32 @sysfs_create_link(ptr noundef %7, ptr noundef %dev, ptr noundef nonnull %entry1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.cleanup.sink.split_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @sysfs_remove_link(ptr noundef %7, ptr noundef nonnull %entry1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then4.cleanup.sink.split_crit_edge
  %csdev.sink = phi ptr [ null, %if.else ], [ %csdev, %if.then4.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @csdev_src to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %csdev.sink, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %call7, %if.then4.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %entry1) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etm_perf_add_symlink_sink(ptr noundef %csdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %type = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge33
  ]

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge33
  %ea = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 10
  %3 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ea, align 8
  %cmp4.not = icmp eq ptr %4, null
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end6.dev_name.exit_crit_edge ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 2), align 4
  %.b39.i = load i1, ptr @etm_perf_up, align 1
  br i1 %.b39.i, label %if.end.i28, label %dev_name.exit.if.then11_crit_edge

dev_name.exit.if.then11_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.end.i28:                                       ; preds = %dev_name.exit
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #14
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i28.if.then11_crit_edge, label %if.end5.i

if.end.i28.if.then11_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.end5.i:                                        ; preds = %if.end.i28
  %call6.i = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %retval.0.i) #17
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @etm_perf_add_symlink_group.__key, ptr %key.i, align 4
  %call8.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %retval.0.i, i32 noundef 3264) #14
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %call.i.i, align 4
  %tobool15.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool15.not.i, label %if.end5.i.if.then11_crit_edge, label %etm_perf_add_symlink_group.exit

if.end5.i.if.then11_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

etm_perf_add_symlink_group.exit:                  ; preds = %if.end5.i
  %conv.i = trunc i64 %call6.i to i32
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 292, ptr %mode.i, align 4
  %13 = inttoptr i32 %conv.i to ptr
  %var.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %var.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %var.i, align 4
  %call23.i = tail call i32 @sysfs_add_file_to_group(ptr noundef %9, ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %15 = inttoptr i32 %call23.i to ptr
  %spec.select.i = select i1 %tobool24.not.i, ptr %call.i.i, ptr %15
  %16 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i, ptr %ea, align 8
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %etm_perf_add_symlink_group.exit.if.then11_crit_edge, label %if.else

etm_perf_add_symlink_group.exit.if.then11_crit_edge: ; preds = %etm_perf_add_symlink_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.then11:                                        ; preds = %etm_perf_add_symlink_group.exit.if.then11_crit_edge, %if.end5.i.if.then11_crit_edge, %if.end.i28.if.then11_crit_edge, %dev_name.exit.if.then11_crit_edge
  %retval.0.i2932 = phi ptr [ %spec.select.i, %etm_perf_add_symlink_group.exit.if.then11_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.if.then11_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i28.if.then11_crit_edge ], [ inttoptr (i32 -517 to ptr), %dev_name.exit.if.then11_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i2932 to i32
  %18 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ea, align 8
  br label %cleanup

if.else:                                          ; preds = %etm_perf_add_symlink_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  %show = getelementptr inbounds %struct.device_attribute, ptr %spec.select.i, i32 0, i32 1
  %19 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @etm_perf_sink_name_show, ptr %show, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %17, %if.then11 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_perf_sink_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %dattr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %2) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etm_perf_del_symlink_sink(ptr nocapture noundef %csdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge12
  ]

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge12
  %ea = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 10
  %3 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ea, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 2), align 4
  tail call void @sysfs_remove_file_from_group(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #14
  %6 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ea, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etm_perf_add_symlink_cscfg(ptr noundef %dev, ptr nocapture noundef %config_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %event_ea = getelementptr inbounds %struct.cscfg_config_desc, ptr %config_desc, i32 0, i32 8
  %0 = ptrtoint ptr %event_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_ea, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %config_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_desc, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 2), align 4
  %.b39.i = load i1, ptr @etm_perf_up, align 1
  br i1 %.b39.i, label %if.end.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #14
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.else_crit_edge, label %if.end5.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %3) #17
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @etm_perf_add_symlink_group.__key, ptr %key.i, align 4
  %call8.i = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef %3, i32 noundef 3264) #14
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %call.i.i, align 4
  %tobool15.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool15.not.i, label %if.end5.i.if.else_crit_edge, label %etm_perf_add_symlink_group.exit

if.end5.i.if.else_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

etm_perf_add_symlink_group.exit:                  ; preds = %if.end5.i
  %conv.i = trunc i64 %call6.i to i32
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 292, ptr %mode.i, align 4
  %8 = inttoptr i32 %conv.i to ptr
  %var.i = getelementptr inbounds %struct.dev_ext_attribute, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %var.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %var.i, align 4
  %call23.i = tail call i32 @sysfs_add_file_to_group(ptr noundef %4, ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %10 = inttoptr i32 %call23.i to ptr
  %spec.select.i = select i1 %tobool24.not.i, ptr %call.i.i, ptr %10
  %11 = ptrtoint ptr %event_ea to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i, ptr %event_ea, align 4
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %etm_perf_add_symlink_group.exit.if.else_crit_edge, label %if.then4

etm_perf_add_symlink_group.exit.if.else_crit_edge: ; preds = %etm_perf_add_symlink_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then4:                                         ; preds = %etm_perf_add_symlink_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  %show = getelementptr inbounds %struct.device_attribute, ptr %spec.select.i, i32 0, i32 1
  %12 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @etm_perf_cscfg_event_show, ptr %show, align 4
  br label %cleanup

if.else:                                          ; preds = %etm_perf_add_symlink_group.exit.if.else_crit_edge, %if.end5.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %retval.0.i18 = phi ptr [ %spec.select.i, %etm_perf_add_symlink_group.exit.if.else_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.if.else_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.else_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end.if.else_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i18 to i32
  %14 = ptrtoint ptr %event_ea to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event_ea, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %13, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_perf_cscfg_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %dattr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %2) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etm_perf_del_symlink_cscfg(ptr nocapture noundef %config_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %event_ea = getelementptr inbounds %struct.cscfg_config_desc, ptr %config_desc, i32 0, i32 8
  %0 = ptrtoint ptr %event_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_ea, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load ptr, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 2), align 4
  tail call void @sysfs_remove_file_from_group(ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #14
  %3 = ptrtoint ptr %event_ea to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %event_ea, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etm_perf_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 48, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 7), align 4
  store ptr @etm_pmu_attr_groups, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 3), align 4
  store i32 1, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 11), align 4
  store ptr @etm_event_read, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 23), align 4
  store ptr @etm_event_init, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 16), align 4
  store ptr @etm_setup_aux, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 31), align 4
  store ptr @etm_free_aux, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 32), align 4
  store ptr @etm_event_start, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 21), align 4
  store ptr @etm_event_stop, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 22), align 4
  store ptr @etm_event_add, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 19), align 4
  store ptr @etm_event_del, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 20), align 4
  store ptr @etm_addr_filters_sync, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 35), align 4
  store ptr @etm_addr_filters_validate, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 34), align 4
  store i32 8, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 13), align 4
  %call = tail call i32 @perf_pmu_register(ptr noundef nonnull @etm_pmu, ptr noundef nonnull @.str.3, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @etm_perf_up, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @etm_event_read(ptr nocapture noundef %event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_event_init(ptr nocapture noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.pmu, ptr @etm_pmu, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 104) #18
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end2_crit_edge, label %if.then3.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %addr_filters.i = getelementptr inbounds %struct.perf_event, ptr %5, i32 0, i32 25, i32 2
  %6 = ptrtoint ptr %addr_filters.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr_filters.i, align 4
  %8 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %7, i32 104)
  br label %if.end2

if.end2:                                          ; preds = %if.then3.i, %if.end.i.if.end2_crit_edge
  %addr_filters7.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 2
  %9 = ptrtoint ptr %addr_filters7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i.i, ptr %addr_filters7.i, align 4
  %destroy = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 55
  %10 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @etm_event_destroy, ptr %destroy, align 8
  br label %out

out:                                              ; preds = %if.end2, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end2 ], [ -2, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @etm_setup_aux(ptr noundef %event, ptr noundef %pages, i32 noundef %nr_pages, i1 noundef zeroext %overwrite) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu1 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %0 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup73_crit_edge, label %if.end.i

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

if.end.i:                                         ; preds = %entry
  %mask1.i = getelementptr inbounds %struct.etm_event_data, ptr %call7.i.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i.i.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i.i.i.i, label %if.then2.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then2.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then2.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !102

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then2.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %1, ptr noundef %mask1.i) #14
  br label %if.end3.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %3, 31
  %4 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %4, 536870908
  %5 = call ptr @memcpy(ptr %mask1.i, ptr @__cpu_present_mask, i32 %mul.i.i.i)
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i, %cpumask_set_cpu.exit.i
  %call4.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #19
  %path.i = getelementptr inbounds %struct.etm_event_data, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i, ptr %path.i, align 8
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %do.body

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup73

do.body:                                          ; preds = %if.end3.i
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #14
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @etm_setup_aux.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @free_event_data, ptr %func, align 4
  %11 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %and = and i64 %13, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %do.body.if.end11_crit_edge, label %if.then8

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i64 %13 to i32
  %call10 = tail call ptr @coresight_get_sink_by_id(i32 noundef %conv) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body.if.end11_crit_edge
  %user_sink.0 = phi ptr [ %call10, %if.then8 ], [ null, %do.body.if.end11_crit_edge ]
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %11, align 8
  %shr = lshr i64 %15, 32
  %conv14 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14)
  %tobool15.not = icmp eq i32 %conv14, 0
  br i1 %tobool15.not, label %if.end11.if.end22_crit_edge, label %if.then16

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then16:                                        ; preds = %if.end11
  %call17 = tail call i32 @cscfg_activate_config(i32 noundef %conv14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.err_crit_edge

if.then16.err_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %cfg_hash21 = getelementptr inbounds %struct.etm_event_data, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %cfg_hash21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %cfg_hash21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end11.if.end22_crit_edge
  %call24151 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask1.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24151, i32 %17)
  %cmp152 = icmp ult i32 %call24151, %17
  br i1 %cmp152, label %for.body.lr.ph, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %tobool33.not = icmp eq ptr %user_sink.0, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %call24156 = phi i32 [ %call24151, %for.body.lr.ph ], [ %call24, %cleanup.for.body_crit_edge ]
  %last_sink.0154 = phi ptr [ null, %for.body.lr.ph ], [ %last_sink.2, %cleanup.for.body_crit_edge ]
  %sink.1153 = phi ptr [ %user_sink.0, %for.body.lr.ph ], [ %sink.3, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call24156
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @csdev_src to i32)
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %cpumask_clear_cpu.exit, label %if.end32

cpumask_clear_cpu.exit:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef %call24156, ptr noundef %mask1.i) #14
  br label %cleanup

if.end32:                                         ; preds = %for.body
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then34:                                        ; preds = %if.end32
  %call35 = tail call ptr @coresight_find_default_sink(ptr noundef nonnull %22) #14
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call24156)
  %cmp.not.i.i.i126 = icmp ugt i32 %23, %call24156
  br i1 %cmp.not.i.i.i126, label %if.then37.cpumask_clear_cpu.exit130_crit_edge, label %land.rhs.i.i.i128

if.then37.cpumask_clear_cpu.exit130_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit130

land.rhs.i.i.i128:                                ; preds = %if.then37
  %.b37.i.i.i127 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i127, label %land.rhs.i.i.i128.cpumask_clear_cpu.exit130_crit_edge, label %if.then.i.i.i129, !prof !102

land.rhs.i.i.i128.cpumask_clear_cpu.exit130_crit_edge: ; preds = %land.rhs.i.i.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit130

if.then.i.i.i129:                                 ; preds = %land.rhs.i.i.i128
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_clear_cpu.exit130

cpumask_clear_cpu.exit130:                        ; preds = %if.then.i.i.i129, %land.rhs.i.i.i128.cpumask_clear_cpu.exit130_crit_edge, %if.then37.cpumask_clear_cpu.exit130_crit_edge
  tail call void @_clear_bit(i32 noundef %call24156, ptr noundef %mask1.i) #14
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %tobool39.not = icmp eq ptr %last_sink.0154, null
  br i1 %tobool39.not, label %if.end38.if.end43_crit_edge, label %if.end.i132

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end.i132:                                      ; preds = %if.end38
  %subtype.i = getelementptr inbounds %struct.coresight_device, ptr %last_sink.0154, i32 0, i32 2
  %24 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %subtype.i, align 8
  %subtype2.i = getelementptr inbounds %struct.coresight_device, ptr %call35, i32 0, i32 2
  %26 = ptrtoint ptr %subtype2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subtype2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i = icmp eq i32 %25, %27
  br i1 %cmp.i, label %sinks_compatible.exit, label %if.end.i132.if.then41_crit_edge

if.end.i132.if.then41_crit_edge:                  ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

sinks_compatible.exit:                            ; preds = %if.end.i132
  %ops.i = getelementptr inbounds %struct.coresight_device, ptr %last_sink.0154, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %ops4.i = getelementptr inbounds %struct.coresight_device, ptr %call35, i32 0, i32 3
  %32 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops4.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %cmp6.i = icmp eq ptr %31, %35
  br i1 %cmp6.i, label %sinks_compatible.exit.if.end43_crit_edge, label %sinks_compatible.exit.if.then41_crit_edge

sinks_compatible.exit.if.then41_crit_edge:        ; preds = %sinks_compatible.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

sinks_compatible.exit.if.end43_crit_edge:         ; preds = %sinks_compatible.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then41:                                        ; preds = %sinks_compatible.exit.if.then41_crit_edge, %if.end.i132.if.then41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %call24156)
  %cmp.not.i.i.i134 = icmp ugt i32 %36, %call24156
  br i1 %cmp.not.i.i.i134, label %if.then41.cpumask_clear_cpu.exit138_crit_edge, label %land.rhs.i.i.i136

if.then41.cpumask_clear_cpu.exit138_crit_edge:    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit138

land.rhs.i.i.i136:                                ; preds = %if.then41
  %.b37.i.i.i135 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i135, label %land.rhs.i.i.i136.cpumask_clear_cpu.exit138_crit_edge, label %if.then.i.i.i137, !prof !102

land.rhs.i.i.i136.cpumask_clear_cpu.exit138_crit_edge: ; preds = %land.rhs.i.i.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit138

if.then.i.i.i137:                                 ; preds = %land.rhs.i.i.i136
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_clear_cpu.exit138

cpumask_clear_cpu.exit138:                        ; preds = %if.then.i.i.i137, %land.rhs.i.i.i136.cpumask_clear_cpu.exit138_crit_edge, %if.then41.cpumask_clear_cpu.exit138_crit_edge
  tail call void @_clear_bit(i32 noundef %call24156, ptr noundef %mask1.i) #14
  br label %cleanup

if.end43:                                         ; preds = %sinks_compatible.exit.if.end43_crit_edge, %if.end38.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %sink.2 = phi ptr [ %sink.1153, %if.end32.if.end43_crit_edge ], [ %call35, %sinks_compatible.exit.if.end43_crit_edge ], [ %call35, %if.end38.if.end43_crit_edge ]
  %last_sink.1 = phi ptr [ %last_sink.0154, %if.end32.if.end43_crit_edge ], [ %call35, %sinks_compatible.exit.if.end43_crit_edge ], [ %call35, %if.end38.if.end43_crit_edge ]
  %call44 = tail call ptr @coresight_build_path(ptr noundef nonnull %22, ptr noundef %sink.2) #14
  %cmp.i139 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %call24156)
  %cmp.not.i.i.i140 = icmp ugt i32 %37, %call24156
  br i1 %cmp.not.i.i.i140, label %if.then46.cpumask_clear_cpu.exit144_crit_edge, label %land.rhs.i.i.i142

if.then46.cpumask_clear_cpu.exit144_crit_edge:    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit144

land.rhs.i.i.i142:                                ; preds = %if.then46
  %.b37.i.i.i141 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i141, label %land.rhs.i.i.i142.cpumask_clear_cpu.exit144_crit_edge, label %if.then.i.i.i143, !prof !102

land.rhs.i.i.i142.cpumask_clear_cpu.exit144_crit_edge: ; preds = %land.rhs.i.i.i142
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_clear_cpu.exit144

if.then.i.i.i143:                                 ; preds = %land.rhs.i.i.i142
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_clear_cpu.exit144

cpumask_clear_cpu.exit144:                        ; preds = %if.then.i.i.i143, %land.rhs.i.i.i142.cpumask_clear_cpu.exit144_crit_edge, %if.then46.cpumask_clear_cpu.exit144_crit_edge
  tail call void @_clear_bit(i32 noundef %call24156, ptr noundef %mask1.i) #14
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %path.i, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %42, %40
  %43 = inttoptr i32 %add.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call44, ptr %43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %cpumask_clear_cpu.exit144, %cpumask_clear_cpu.exit138, %cpumask_clear_cpu.exit130, %cpumask_clear_cpu.exit
  %sink.3 = phi ptr [ %sink.2, %cpumask_clear_cpu.exit144 ], [ %sink.2, %if.end47 ], [ %call35, %cpumask_clear_cpu.exit138 ], [ null, %cpumask_clear_cpu.exit130 ], [ %sink.1153, %cpumask_clear_cpu.exit ]
  %last_sink.2 = phi ptr [ %last_sink.1, %cpumask_clear_cpu.exit144 ], [ %last_sink.1, %if.end47 ], [ %last_sink.0154, %cpumask_clear_cpu.exit138 ], [ %last_sink.0154, %cpumask_clear_cpu.exit130 ], [ %last_sink.0154, %cpumask_clear_cpu.exit ]
  %call24 = tail call i32 @cpumask_next(i32 noundef %call24156, ptr noundef %mask1.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call24, %45
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end22.for.end_crit_edge
  %sink.1.lcssa = phi ptr [ %user_sink.0, %if.end22.for.end_crit_edge ], [ %sink.3, %cleanup.for.end_crit_edge ]
  %.lcssa = phi i32 [ %17, %if.end22.for.end_crit_edge ], [ %45, %cleanup.for.end_crit_edge ]
  %tobool50.not = icmp eq ptr %sink.1.lcssa, null
  br i1 %tobool50.not, label %for.end.err_crit_edge, label %if.end52

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end52:                                         ; preds = %for.end
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask1.i, i32 noundef %.lcssa) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %46)
  %cmp54.not = icmp ult i32 %call.i, %46
  br i1 %cmp54.not, label %if.end57, label %if.end52.err_crit_edge

if.end52.err_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end57:                                         ; preds = %if.end52
  %ops = getelementptr inbounds %struct.coresight_device, ptr %sink.1.lcssa, i32 0, i32 3
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %alloc_buffer = getelementptr inbounds %struct.coresight_ops_sink, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %alloc_buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alloc_buffer, align 4
  %tobool58.not = icmp eq ptr %52, null
  br i1 %tobool58.not, label %if.end57.err_crit_edge, label %lor.lhs.false

if.end57.err_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

lor.lhs.false:                                    ; preds = %if.end57
  %free_buffer = getelementptr inbounds %struct.coresight_ops_sink, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %free_buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free_buffer, align 4
  %tobool61.not = icmp eq ptr %54, null
  br i1 %tobool61.not, label %lor.lhs.false.err_crit_edge, label %if.end63

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end63:                                         ; preds = %lor.lhs.false
  %call68 = tail call ptr %52(ptr noundef nonnull %sink.1.lcssa, ptr noundef %event, ptr noundef %pages, i32 noundef %nr_pages, i1 noundef zeroext %overwrite) #14
  %snk_config = getelementptr inbounds %struct.etm_event_data, ptr %call7.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %snk_config to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call68, ptr %snk_config, align 8
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %if.end63.err_crit_edge, label %if.end63.cleanup73_crit_edge

if.end63.cleanup73_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup73

if.end63.err_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

err:                                              ; preds = %if.end63.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end57.err_crit_edge, %if.end52.err_crit_edge, %for.end.err_crit_edge, %if.then16.err_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup73

cleanup73:                                        ; preds = %err, %if.end63.cleanup73_crit_edge, %if.then7.i, %entry.cleanup73_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ %call7.i.i.i, %if.end63.cleanup73_crit_edge ], [ null, %if.then7.i ], [ null, %entry.cleanup73_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_free_aux(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %data) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_event_start(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @etm_ctxt to i32)
  %6 = inttoptr i32 %add to ptr
  %add14 = add i32 %5, ptrtoint (ptr @csdev_src to i32)
  %7 = inttoptr i32 %add14 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end:                                           ; preds = %entry
  %event_data15 = getelementptr inbounds %struct.etm_ctxt, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %event_data15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event_data15, align 8
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.end44.critedge, label %do.end28, !prof !102

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 438, i32 noundef 9, ptr noundef null) #14
  br label %fail

if.end44.critedge:                                ; preds = %if.end
  %call45 = tail call ptr @perf_aux_output_begin(ptr noundef %6, ptr noundef %event) #14
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.critedge.fail_crit_edge, label %if.end48

if.end44.critedge.fail_crit_edge:                 ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end48:                                         ; preds = %if.end44.critedge
  %mask = getelementptr inbounds %struct.etm_event_data, ptr %call45, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %12, %3
  br i1 %cmp.not.i.i.i, label %if.end48.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end48.cpumask_test_cpu.exit_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end48
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !102

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.end48.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %mask, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool50.not = icmp eq i32 %16, 0
  br i1 %tobool50.not, label %cpumask_test_cpu.exit.out_crit_edge, label %if.end52

cpumask_test_cpu.exit.out_crit_edge:              ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end52:                                         ; preds = %cpumask_test_cpu.exit
  %path.i.i = getelementptr inbounds %struct.etm_event_data, ptr %call45, i32 0, i32 4
  %17 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.i.i = add i32 %21, %19
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call54 = tail call ptr @coresight_get_sink(ptr noundef %24) #14
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %land.rhs, label %if.end109.critedge

land.rhs:                                         ; preds = %if.end52
  %.b156 = load i1, ptr @etm_event_start.__already_done, align 1
  br i1 %.b156, label %land.rhs.do.end121_crit_edge, label %if.then72, !prof !102

land.rhs.do.end121_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end121

if.then72:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @etm_event_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 467, i32 noundef 9, ptr noundef null) #14
  br label %do.end121

if.end109.critedge:                               ; preds = %if.end52
  %call110 = tail call i32 @coresight_enable_path(ptr noundef %24, i32 noundef 2, ptr noundef %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.critedge.do.end121_crit_edge

if.end109.critedge.do.end121_crit_edge:           ; preds = %if.end109.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end121

if.end113:                                        ; preds = %if.end109.critedge
  %ops = getelementptr inbounds %struct.coresight_device, ptr %9, i32 0, i32 3
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 8
  %source_ops = getelementptr inbounds %struct.coresight_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %source_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %source_ops, align 4
  %enable = getelementptr inbounds %struct.coresight_ops_source, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enable, align 4
  %call114 = tail call i32 %30(ptr noundef nonnull %9, ptr noundef %event, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.out_crit_edge, label %fail_disable_path

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %if.end113.out_crit_edge, %cpumask_test_cpu.exit.out_crit_edge
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %state, align 4
  %32 = ptrtoint ptr %event_data15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %event_data15, align 8
  br label %cleanup

fail_disable_path:                                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @coresight_disable_path(ptr noundef %24) #14
  br label %do.end121

do.end121:                                        ; preds = %fail_disable_path, %if.end109.critedge.do.end121_crit_edge, %if.then72, %land.rhs.do.end121_crit_edge
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %6, align 8
  %tobool124.not = icmp eq ptr %34, null
  br i1 %tobool124.not, label %do.end121.fail_crit_edge, label %if.then125

do.end121.fail_crit_edge:                         ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then125:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @perf_aux_output_flag(ptr noundef %6, i64 noundef 1) #14
  tail call void @perf_aux_output_end(ptr noundef %6, i32 noundef 0) #14
  br label %fail

fail:                                             ; preds = %if.then125, %do.end121.fail_crit_edge, %if.end44.critedge.fail_crit_edge, %do.end28, %entry.fail_crit_edge
  %state128 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %35 = ptrtoint ptr %state128 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %state128, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %out
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_event_stop(ptr noundef %event, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @csdev_src to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add13 = add i32 %5, ptrtoint (ptr @etm_ctxt to i32)
  %9 = inttoptr i32 %add13 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %land.lhs.true

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true:                                    ; preds = %entry
  %call16 = tail call ptr @perf_get_aux(ptr noundef %9) #14
  %event_data17 = getelementptr inbounds %struct.etm_ctxt, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %event_data17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event_data17, align 8
  %cmp.not = icmp eq ptr %call16, %13
  br i1 %cmp.not, label %land.lhs.true.if.end43_crit_edge, label %do.end28, !prof !102

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

do.end28:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 517, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %entry.if.end43_crit_edge
  %event_data44 = getelementptr inbounds %struct.etm_ctxt, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %event_data44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event_data44, align 8
  store ptr null, ptr %event_data44, align 8
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp46 = icmp eq i32 %17, 1
  br i1 %cmp46, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %tobool50.not = icmp eq ptr %15, null
  br i1 %tobool50.not, label %do.end68, label %if.end84, !prof !103

do.end68:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 528, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end84:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %tobool86.not = icmp eq ptr %19, null
  %and = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool88.not, %tobool86.not
  br i1 %or.cond, label %if.end84.if.end95_crit_edge, label %land.lhs.true89

if.end84.if.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

land.lhs.true89:                                  ; preds = %if.end84
  %mask = getelementptr inbounds %struct.etm_event_data, ptr %15, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %20, %3
  br i1 %cmp.not.i.i.i, label %land.lhs.true89.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true89.cpumask_test_cpu.exit_crit_edge:  ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true89
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !102

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true89.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %mask, i32 %div3.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %23 = shl nuw i32 1, %and.i.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool91.not = icmp eq i32 %24, 0
  br i1 %tobool91.not, label %if.then92, label %cpumask_test_cpu.exit.if.end95_crit_edge

cpumask_test_cpu.exit.if.end95_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then92:                                        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %state, align 4
  tail call void @perf_aux_output_end(ptr noundef %9, i32 noundef 0) #14
  br label %cleanup

if.end95:                                         ; preds = %cpumask_test_cpu.exit.if.end95_crit_edge, %if.end84.if.end95_crit_edge
  %tobool96.not = icmp eq ptr %8, null
  br i1 %tobool96.not, label %if.end95.cleanup_crit_edge, label %if.end98

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end98:                                         ; preds = %if.end95
  %path.i.i = getelementptr inbounds %struct.etm_event_data, ptr %15, i32 0, i32 4
  %26 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add.i.i = add i32 %30, %28
  %31 = inttoptr i32 %add.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool100.not = icmp eq ptr %33, null
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %if.end102

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  %call103 = tail call ptr @coresight_get_sink(ptr noundef nonnull %33) #14
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.end102.cleanup_crit_edge, label %if.end106

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  %ops = getelementptr inbounds %struct.coresight_device, ptr %8, i32 0, i32 3
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 8
  %source_ops = getelementptr inbounds %struct.coresight_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %source_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %source_ops, align 4
  %disable = getelementptr inbounds %struct.coresight_ops_source, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disable, align 4
  tail call void %39(ptr noundef nonnull %8, ptr noundef %event) #14
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 4
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %9, align 8
  %tobool110.not = icmp eq ptr %42, null
  %or.cond261 = or i1 %tobool88.not, %tobool110.not
  br i1 %or.cond261, label %if.end106.if.end216_crit_edge, label %if.then114

if.end106.if.end216_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end216

if.then114:                                       ; preds = %if.end106
  %cmp116.not = icmp eq ptr %42, %event
  br i1 %cmp116.not, label %if.end168, label %land.rhs

land.rhs:                                         ; preds = %if.then114
  %.b260 = load i1, ptr @etm_event_stop.__already_done, align 1
  br i1 %.b260, label %land.rhs.cleanup_crit_edge, label %if.then131, !prof !102

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then131:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @etm_event_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 568, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end168:                                        ; preds = %if.then114
  %ops169 = getelementptr inbounds %struct.coresight_device, ptr %call103, i32 0, i32 3
  %43 = ptrtoint ptr %ops169 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops169, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %update_buffer = getelementptr inbounds %struct.coresight_ops_sink, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %update_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %update_buffer, align 4
  %tobool170.not = icmp eq ptr %48, null
  br i1 %tobool170.not, label %if.end168.cleanup_crit_edge, label %if.end172

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end172:                                        ; preds = %if.end168
  %snk_config = getelementptr inbounds %struct.etm_event_data, ptr %15, i32 0, i32 2
  %49 = ptrtoint ptr %snk_config to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %snk_config, align 4
  %call176 = tail call i32 %48(ptr noundef nonnull %call103, ptr noundef %9, ptr noundef %50) #14
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %9, align 8
  %tobool182.not = icmp eq ptr %52, null
  br i1 %tobool182.not, label %if.else, label %if.then183

if.then183:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @perf_aux_output_end(ptr noundef %9, i32 noundef %call176) #14
  br label %if.end216

if.else:                                          ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool185.not = icmp eq i32 %call176, 0
  br i1 %tobool185.not, label %if.else.if.end216_crit_edge, label %do.end201, !prof !102

if.else.if.end216_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end216

do.end201:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 591, i32 noundef 9, ptr noundef null) #14
  br label %if.end216

if.end216:                                        ; preds = %do.end201, %if.else.if.end216_crit_edge, %if.then183, %if.end106.if.end216_crit_edge
  tail call void @coresight_disable_path(ptr noundef nonnull %33) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end216, %if.end168.cleanup_crit_edge, %if.then131, %land.rhs.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.then92, %do.end68, %if.end43.cleanup_crit_edge, %do.end28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_event_add(ptr noundef %event, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @etm_event_start(ptr noundef %event, i32 noundef 0)
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and1 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -22
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %state4 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %2 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.else ], [ %spec.select, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_event_del(ptr noundef %event, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @etm_event_stop(ptr noundef %event, i32 noundef 4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_addr_filters_sync(ptr noundef readonly %event) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %event, ptr %1
  %ifh.0.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 51
  %addr_filter_ranges = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 52
  %2 = ptrtoint ptr %addr_filter_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr_filter_ranges, align 4
  %addr_filters = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 2
  %4 = ptrtoint ptr %addr_filters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr_filters, align 4
  %6 = ptrtoint ptr %ifh.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %filter.038 = load ptr, ptr %ifh.0.i, align 4
  %cmp.not39 = icmp eq ptr %filter.038, %ifh.0.i
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %filter.042 = phi ptr [ %filter.0, %sw.epilog.for.body_crit_edge ], [ %filter.038, %entry.for.body_crit_edge ]
  %i.040 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.perf_addr_filter_range, ptr %3, i32 %i.040
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.perf_addr_filter_range, ptr %3, i32 %i.040, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %add = add i32 %10, %8
  %arrayidx6 = getelementptr [8 x %struct.etm_filter], ptr %5, i32 0, i32 %i.040
  %action = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.042, i32 0, i32 4
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %12, label %for.body.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
    i32 0, label %sw.bb10
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %arrayidx6, align 4
  %stop_addr = getelementptr [8 x %struct.etm_filter], ptr %5, i32 0, i32 %i.040, i32 1
  %15 = ptrtoint ptr %stop_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %stop_addr, align 4
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %arrayidx6, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %stop_addr11 = getelementptr [8 x %struct.etm_filter], ptr %5, i32 0, i32 %i.040, i32 1
  %17 = ptrtoint ptr %stop_addr11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %stop_addr11, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb7, %sw.bb
  %.sink = phi i32 [ 4, %sw.bb10 ], [ 3, %sw.bb7 ], [ 2, %sw.bb ]
  %type12 = getelementptr [8 x %struct.etm_filter], ptr %5, i32 0, i32 %i.040, i32 2
  %18 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %type12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %inc = add i32 %i.040, 1
  %19 = ptrtoint ptr %filter.042 to i32
  call void @__asan_load4_noabort(i32 %19)
  %filter.0 = load ptr, ptr %filter.042, align 4
  %cmp.not = icmp eq ptr %filter.0, %ifh.0.i
  br i1 %cmp.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %sw.epilog.for.end_crit_edge ]
  %nr_filters = getelementptr inbounds %struct.etm_filters, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %nr_filters to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0.lcssa, ptr %nr_filters, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @etm_addr_filters_validate(ptr noundef readonly %filters) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %0)
  %filter.0 = load ptr, ptr %filters, align 4
  %cmp.not = icmp eq ptr %filter.0, %filters
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %entry
  %size = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.for.cond.1_crit_edge, label %if.then3

for.body.for.cond.1_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.1

if.then3:                                         ; preds = %for.body
  %action = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0, i32 0, i32 4
  %3 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.then3.cleanup_crit_edge, label %if.then3.for.cond.1_crit_edge

if.then3.for.cond.1_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.1

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.1:                                       ; preds = %if.then3.for.cond.1_crit_edge, %for.body.for.cond.1_crit_edge
  %5 = ptrtoint ptr %filter.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %filter.0.1 = load ptr, ptr %filter.0, align 4
  %cmp.not.1 = icmp eq ptr %filter.0.1, %filters
  br i1 %cmp.not.1, label %for.cond.1.cleanup_crit_edge, label %for.body.1

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.1:                                       ; preds = %for.cond.1
  %6 = xor i1 %tobool.not, true
  %size.1 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.1, i32 0, i32 3
  %7 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1 = icmp eq i32 %8, 0
  br i1 %tobool.not.1, label %for.body.1.if.end9.1_crit_edge, label %if.then3.1

for.body.1.if.end9.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.1

if.then3.1:                                       ; preds = %for.body.1
  %action.1 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.1, i32 0, i32 4
  %9 = ptrtoint ptr %action.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %action.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.1 = icmp ult i32 %10, 2
  br i1 %switch.1, label %if.then3.1.cleanup_crit_edge, label %if.then3.1.if.end9.1_crit_edge

if.then3.1.if.end9.1_crit_edge:                   ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.1

if.then3.1.cleanup_crit_edge:                     ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.1:                                        ; preds = %if.then3.1.if.end9.1_crit_edge, %for.body.1.if.end9.1_crit_edge
  %address.1.off0.1 = phi i1 [ %tobool.not, %if.then3.1.if.end9.1_crit_edge ], [ true, %for.body.1.if.end9.1_crit_edge ]
  %range.1.off0.1 = phi i1 [ true, %if.then3.1.if.end9.1_crit_edge ], [ %6, %for.body.1.if.end9.1_crit_edge ]
  %11 = select i1 %range.1.off0.1, i1 %address.1.off0.1, i1 false
  br i1 %11, label %if.end9.1.cleanup_crit_edge, label %for.cond.2

if.end9.1.cleanup_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.2:                                       ; preds = %if.end9.1
  %12 = ptrtoint ptr %filter.0.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %filter.0.2 = load ptr, ptr %filter.0.1, align 4
  %cmp.not.2 = icmp eq ptr %filter.0.2, %filters
  br i1 %cmp.not.2, label %for.cond.2.cleanup_crit_edge, label %for.body.2

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.2:                                       ; preds = %for.cond.2
  %size.2 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.2, i32 0, i32 3
  %13 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2 = icmp eq i32 %14, 0
  br i1 %tobool.not.2, label %for.body.2.if.end9.2_crit_edge, label %if.then3.2

for.body.2.if.end9.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.2

if.then3.2:                                       ; preds = %for.body.2
  %action.2 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.2, i32 0, i32 4
  %15 = ptrtoint ptr %action.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %action.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.2 = icmp ult i32 %16, 2
  br i1 %switch.2, label %if.then3.2.cleanup_crit_edge, label %if.then3.2.if.end9.2_crit_edge

if.then3.2.if.end9.2_crit_edge:                   ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.2

if.then3.2.cleanup_crit_edge:                     ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.2:                                        ; preds = %if.then3.2.if.end9.2_crit_edge, %for.body.2.if.end9.2_crit_edge
  %address.1.off0.2 = phi i1 [ %address.1.off0.1, %if.then3.2.if.end9.2_crit_edge ], [ true, %for.body.2.if.end9.2_crit_edge ]
  %range.1.off0.2 = phi i1 [ true, %if.then3.2.if.end9.2_crit_edge ], [ %range.1.off0.1, %for.body.2.if.end9.2_crit_edge ]
  %17 = select i1 %range.1.off0.2, i1 %address.1.off0.2, i1 false
  br i1 %17, label %if.end9.2.cleanup_crit_edge, label %for.cond.3

if.end9.2.cleanup_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.3:                                       ; preds = %if.end9.2
  %18 = ptrtoint ptr %filter.0.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %filter.0.3 = load ptr, ptr %filter.0.2, align 4
  %cmp.not.3 = icmp eq ptr %filter.0.3, %filters
  br i1 %cmp.not.3, label %for.cond.3.cleanup_crit_edge, label %for.body.3

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.3:                                       ; preds = %for.cond.3
  %size.3 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.3, i32 0, i32 3
  %19 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.3 = icmp eq i32 %20, 0
  br i1 %tobool.not.3, label %for.body.3.if.end9.3_crit_edge, label %if.then3.3

for.body.3.if.end9.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.3

if.then3.3:                                       ; preds = %for.body.3
  %action.3 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.3, i32 0, i32 4
  %21 = ptrtoint ptr %action.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch.3 = icmp ult i32 %22, 2
  br i1 %switch.3, label %if.then3.3.cleanup_crit_edge, label %if.then3.3.if.end9.3_crit_edge

if.then3.3.if.end9.3_crit_edge:                   ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.3

if.then3.3.cleanup_crit_edge:                     ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.3:                                        ; preds = %if.then3.3.if.end9.3_crit_edge, %for.body.3.if.end9.3_crit_edge
  %address.1.off0.3 = phi i1 [ %address.1.off0.2, %if.then3.3.if.end9.3_crit_edge ], [ true, %for.body.3.if.end9.3_crit_edge ]
  %range.1.off0.3 = phi i1 [ true, %if.then3.3.if.end9.3_crit_edge ], [ %range.1.off0.2, %for.body.3.if.end9.3_crit_edge ]
  %23 = select i1 %range.1.off0.3, i1 %address.1.off0.3, i1 false
  br i1 %23, label %if.end9.3.cleanup_crit_edge, label %for.cond.4

if.end9.3.cleanup_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.4:                                       ; preds = %if.end9.3
  %24 = ptrtoint ptr %filter.0.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %filter.0.4 = load ptr, ptr %filter.0.3, align 4
  %cmp.not.4 = icmp eq ptr %filter.0.4, %filters
  br i1 %cmp.not.4, label %for.cond.4.cleanup_crit_edge, label %for.body.4

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.4:                                       ; preds = %for.cond.4
  %size.4 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.4, i32 0, i32 3
  %25 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.4 = icmp eq i32 %26, 0
  br i1 %tobool.not.4, label %for.body.4.if.end9.4_crit_edge, label %if.then3.4

for.body.4.if.end9.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.4

if.then3.4:                                       ; preds = %for.body.4
  %action.4 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.4, i32 0, i32 4
  %27 = ptrtoint ptr %action.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %action.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch.4 = icmp ult i32 %28, 2
  br i1 %switch.4, label %if.then3.4.cleanup_crit_edge, label %if.then3.4.if.end9.4_crit_edge

if.then3.4.if.end9.4_crit_edge:                   ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.4

if.then3.4.cleanup_crit_edge:                     ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.4:                                        ; preds = %if.then3.4.if.end9.4_crit_edge, %for.body.4.if.end9.4_crit_edge
  %address.1.off0.4 = phi i1 [ %address.1.off0.3, %if.then3.4.if.end9.4_crit_edge ], [ true, %for.body.4.if.end9.4_crit_edge ]
  %range.1.off0.4 = phi i1 [ true, %if.then3.4.if.end9.4_crit_edge ], [ %range.1.off0.3, %for.body.4.if.end9.4_crit_edge ]
  %29 = select i1 %range.1.off0.4, i1 %address.1.off0.4, i1 false
  br i1 %29, label %if.end9.4.cleanup_crit_edge, label %for.cond.5

if.end9.4.cleanup_crit_edge:                      ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.5:                                       ; preds = %if.end9.4
  %30 = ptrtoint ptr %filter.0.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %filter.0.5 = load ptr, ptr %filter.0.4, align 4
  %cmp.not.5 = icmp eq ptr %filter.0.5, %filters
  br i1 %cmp.not.5, label %for.cond.5.cleanup_crit_edge, label %for.body.5

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.5:                                       ; preds = %for.cond.5
  %size.5 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.5, i32 0, i32 3
  %31 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.5 = icmp eq i32 %32, 0
  br i1 %tobool.not.5, label %for.body.5.if.end9.5_crit_edge, label %if.then3.5

for.body.5.if.end9.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.5

if.then3.5:                                       ; preds = %for.body.5
  %action.5 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.5, i32 0, i32 4
  %33 = ptrtoint ptr %action.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %action.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %switch.5 = icmp ult i32 %34, 2
  br i1 %switch.5, label %if.then3.5.cleanup_crit_edge, label %if.then3.5.if.end9.5_crit_edge

if.then3.5.if.end9.5_crit_edge:                   ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.5

if.then3.5.cleanup_crit_edge:                     ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.5:                                        ; preds = %if.then3.5.if.end9.5_crit_edge, %for.body.5.if.end9.5_crit_edge
  %address.1.off0.5 = phi i1 [ %address.1.off0.4, %if.then3.5.if.end9.5_crit_edge ], [ true, %for.body.5.if.end9.5_crit_edge ]
  %range.1.off0.5 = phi i1 [ true, %if.then3.5.if.end9.5_crit_edge ], [ %range.1.off0.4, %for.body.5.if.end9.5_crit_edge ]
  %35 = select i1 %range.1.off0.5, i1 %address.1.off0.5, i1 false
  br i1 %35, label %if.end9.5.cleanup_crit_edge, label %for.cond.6

if.end9.5.cleanup_crit_edge:                      ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.6:                                       ; preds = %if.end9.5
  %36 = ptrtoint ptr %filter.0.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %filter.0.6 = load ptr, ptr %filter.0.5, align 4
  %cmp.not.6 = icmp eq ptr %filter.0.6, %filters
  br i1 %cmp.not.6, label %for.cond.6.cleanup_crit_edge, label %for.body.6

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.6:                                       ; preds = %for.cond.6
  %size.6 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.6, i32 0, i32 3
  %37 = ptrtoint ptr %size.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.6 = icmp eq i32 %38, 0
  br i1 %tobool.not.6, label %for.body.6.if.end9.6_crit_edge, label %if.then3.6

for.body.6.if.end9.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.6

if.then3.6:                                       ; preds = %for.body.6
  %action.6 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.6, i32 0, i32 4
  %39 = ptrtoint ptr %action.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch.6 = icmp ult i32 %40, 2
  br i1 %switch.6, label %if.then3.6.cleanup_crit_edge, label %if.then3.6.if.end9.6_crit_edge

if.then3.6.if.end9.6_crit_edge:                   ; preds = %if.then3.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.6

if.then3.6.cleanup_crit_edge:                     ; preds = %if.then3.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.6:                                        ; preds = %if.then3.6.if.end9.6_crit_edge, %for.body.6.if.end9.6_crit_edge
  %address.1.off0.6 = phi i1 [ %address.1.off0.5, %if.then3.6.if.end9.6_crit_edge ], [ true, %for.body.6.if.end9.6_crit_edge ]
  %range.1.off0.6 = phi i1 [ true, %if.then3.6.if.end9.6_crit_edge ], [ %range.1.off0.5, %for.body.6.if.end9.6_crit_edge ]
  %41 = select i1 %range.1.off0.6, i1 %address.1.off0.6, i1 false
  br i1 %41, label %if.end9.6.cleanup_crit_edge, label %for.cond.7

if.end9.6.cleanup_crit_edge:                      ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.7:                                       ; preds = %if.end9.6
  %42 = ptrtoint ptr %filter.0.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %filter.0.7 = load ptr, ptr %filter.0.6, align 4
  %cmp.not.7 = icmp eq ptr %filter.0.7, %filters
  br i1 %cmp.not.7, label %for.cond.7.cleanup_crit_edge, label %for.body.7

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.7:                                       ; preds = %for.cond.7
  %size.7 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.7, i32 0, i32 3
  %43 = ptrtoint ptr %size.7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.7 = icmp eq i32 %44, 0
  br i1 %tobool.not.7, label %for.body.7.if.end9.7_crit_edge, label %if.then3.7

for.body.7.if.end9.7_crit_edge:                   ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.7

if.then3.7:                                       ; preds = %for.body.7
  %action.7 = getelementptr inbounds %struct.perf_addr_filter, ptr %filter.0.7, i32 0, i32 4
  %45 = ptrtoint ptr %action.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %switch.7 = icmp ult i32 %46, 2
  br i1 %switch.7, label %if.then3.7.cleanup_crit_edge, label %if.then3.7.if.end9.7_crit_edge

if.then3.7.if.end9.7_crit_edge:                   ; preds = %if.then3.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.7

if.then3.7.cleanup_crit_edge:                     ; preds = %if.then3.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.7:                                        ; preds = %if.then3.7.if.end9.7_crit_edge, %for.body.7.if.end9.7_crit_edge
  %address.1.off0.7 = phi i1 [ %address.1.off0.6, %if.then3.7.if.end9.7_crit_edge ], [ true, %for.body.7.if.end9.7_crit_edge ]
  %range.1.off0.7 = phi i1 [ true, %if.then3.7.if.end9.7_crit_edge ], [ %range.1.off0.6, %for.body.7.if.end9.7_crit_edge ]
  %47 = select i1 %range.1.off0.7, i1 %address.1.off0.7, i1 false
  br i1 %47, label %if.end9.7.cleanup_crit_edge, label %for.cond.8

if.end9.7.cleanup_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.8:                                       ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %filter.0.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %filter.0.8 = load ptr, ptr %filter.0.7, align 4
  %cmp.not.8 = icmp eq ptr %filter.0.8, %filters
  %spec.select = select i1 %cmp.not.8, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %if.end9.7.cleanup_crit_edge, %if.then3.7.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %if.end9.6.cleanup_crit_edge, %if.then3.6.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end9.5.cleanup_crit_edge, %if.then3.5.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end9.4.cleanup_crit_edge, %if.then3.4.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end9.3.cleanup_crit_edge, %if.then3.3.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end9.2.cleanup_crit_edge, %if.then3.2.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end9.1.cleanup_crit_edge, %if.then3.1.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ -95, %if.then3.1.cleanup_crit_edge ], [ -95, %if.end9.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ -95, %if.then3.2.cleanup_crit_edge ], [ -95, %if.end9.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ -95, %if.then3.3.cleanup_crit_edge ], [ -95, %if.end9.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ -95, %if.then3.4.cleanup_crit_edge ], [ -95, %if.end9.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ -95, %if.then3.5.cleanup_crit_edge ], [ -95, %if.end9.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ -95, %if.then3.6.cleanup_crit_edge ], [ -95, %if.end9.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ -95, %if.then3.7.cleanup_crit_edge ], [ -95, %if.end9.7.cleanup_crit_edge ], [ %spec.select, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etm_perf_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @perf_pmu_unregister(ptr noundef nonnull @etm_pmu) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cycacc_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.8, i32 11)
  ret i32 10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @format_attr_contextid_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.10, i32 noundef 14)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @contextid1_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.12, i32 11)
  ret i32 10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @contextid2_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.14, i32 11)
  ret i32 10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @timestamp_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.16, i32 11)
  ret i32 10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @retstack_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.18, i32 11)
  ret i32 10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sinkid_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.20, i32 14)
  ret i32 13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @preset_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.22, i32 12)
  ret i32 11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @configid_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.24, i32 15)
  ret i32 14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etm_event_destroy(ptr nocapture noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_filters = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 2
  %0 = ptrtoint ptr %addr_filters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_filters, align 4
  tail call void @kfree(ptr noundef %1) #14
  %2 = ptrtoint ptr %addr_filters to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %addr_filters, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_event_data(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mask1 = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 1
  %snk_config.i = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %snk_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snk_config.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.free_sink_buffer.exit_crit_edge, label %cpumask_empty.exit.i

entry.free_sink_buffer.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sink_buffer.exit

cpumask_empty.exit.i:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %mask1, i32 noundef %2) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %2)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %2
  br i1 %cmp4.i.i.i, label %do.end.i, label %if.end25.i, !prof !103

do.end.i:                                         ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 198, i32 noundef 9, ptr noundef null) #14
  br label %free_sink_buffer.exit

if.end25.i:                                       ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %mask1, i32 noundef %3) #14
  %path.i.i.i = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %path.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call28.i = tail call ptr @coresight_get_sink(ptr noundef %11) #14
  %ops.i = getelementptr inbounds %struct.coresight_device, ptr %call28.i, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %free_buffer.i = getelementptr inbounds %struct.coresight_ops_sink, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %free_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_buffer.i, align 4
  %18 = ptrtoint ptr %snk_config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snk_config.i, align 4
  tail call void %17(ptr noundef %19) #14
  br label %free_sink_buffer.exit

free_sink_buffer.exit:                            ; preds = %if.end25.i, %do.end.i, %entry.free_sink_buffer.exit_crit_edge
  %cfg_hash = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 3
  %20 = ptrtoint ptr %cfg_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %free_sink_buffer.exit.if.end_crit_edge, label %if.then

free_sink_buffer.exit.if.end_crit_edge:           ; preds = %free_sink_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %free_sink_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cscfg_deactivate_config(i32 noundef %21) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %free_sink_buffer.exit.if.end_crit_edge
  %call18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %22)
  %cmp19 = icmp ult i32 %call18, %22
  br i1 %cmp19, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %path.i = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %call20 = phi i32 [ %call18, %for.body.lr.ph ], [ %call, %if.end6.for.body_crit_edge ]
  %23 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %path.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call20
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %25
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool.not.i17 = icmp eq ptr %30, null
  %cmp.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i17, %cmp.i
  br i1 %spec.select.i, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @coresight_release_path(ptr noundef nonnull %30) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %28, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call20, ptr noundef %mask1) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %32
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %path = getelementptr inbounds %struct.etm_event_data, ptr %work, i32 0, i32 4
  %33 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %path, align 4
  tail call void @free_percpu(ptr noundef %34) #14
  tail call void @kfree(ptr noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_sink_by_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cscfg_activate_config(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_find_default_sink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_build_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cscfg_deactivate_config(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_release_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_sink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_aux_output_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_enable_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disable_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_aux_output_flag(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_aux_output_end(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_get_aux(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !85, !86, !88, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 701, i32 17}
!2 = !{ptr @__ksymtab_etm_perf_symlink, !3, !"__ksymtab_etm_perf_symlink", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 718, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 781, i32 52}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 829, i32 77}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 872, i32 36}
!10 = !{ptr @etm_pmu, !11, !"etm_pmu", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 26, i32 19}
!12 = distinct !{null, !13, !"etm_perf_up", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 27, i32 13}
!14 = !{ptr @__pcpu_unique_etm_ctxt, !15, !"__pcpu_unique_etm_ctxt", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 48, i32 8}
!16 = !{ptr @etm_ctxt, !15, !"etm_ctxt", i1 false, i1 false}
!17 = !{ptr @__pcpu_unique_csdev_src, !18, !"__pcpu_unique_csdev_src", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 49, i32 8}
!19 = !{ptr @csdev_src, !18, !"csdev_src", i1 false, i1 false}
!20 = !{ptr @etm_perf_add_symlink_group.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 753, i32 2}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 727, i32 35}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 819, i32 35}
!26 = !{ptr @etm_pmu_attr_groups, !27, !"etm_pmu_attr_groups", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 126, i32 38}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 104, i32 12}
!30 = !{ptr @etm_pmu_format_group, !31, !"etm_pmu_format_group", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 103, i32 37}
!32 = !{ptr @etm_config_formats_attr, !33, !"etm_config_formats_attr", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 90, i32 26}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 55, i32 1}
!36 = !{ptr @format_attr_cycacc, !35, !"format_attr_cycacc", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 88, i32 2}
!40 = !{ptr @format_attr_contextid, !41, !"format_attr_contextid", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 87, i32 32}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 84, i32 23}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 57, i32 1}
!46 = !{ptr @format_attr_contextid1, !45, !"format_attr_contextid1", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 59, i32 1}
!50 = !{ptr @format_attr_contextid2, !49, !"format_attr_contextid2", i1 false, i1 false}
!51 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 60, i32 1}
!54 = !{ptr @format_attr_timestamp, !53, !"format_attr_timestamp", i1 false, i1 false}
!55 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 61, i32 1}
!58 = !{ptr @format_attr_retstack, !57, !"format_attr_retstack", i1 false, i1 false}
!59 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 65, i32 1}
!62 = !{ptr @format_attr_sinkid, !61, !"format_attr_sinkid", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 63, i32 1}
!66 = !{ptr @format_attr_preset, !65, !"format_attr_preset", i1 false, i1 false}
!67 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 67, i32 1}
!70 = !{ptr @format_attr_configid, !69, !"format_attr_configid", i1 false, i1 false}
!71 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @etm_pmu_sinks_group, !73, !"etm_pmu_sinks_group", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 112, i32 37}
!74 = !{ptr @etm_config_sinks_attr, !75, !"etm_config_sinks_attr", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 108, i32 26}
!76 = !{ptr @etm_pmu_events_group, !77, !"etm_pmu_events_group", i1 false, i1 false}
!77 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 121, i32 37}
!78 = !{ptr @etm_config_events_attr, !79, !"etm_config_events_attr", i1 false, i1 false}
!79 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 117, i32 26}
!80 = !{ptr @etm_setup_aux.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 309, i32 2}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 198, i32 6}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 467, i32 6}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/hwtracing/coresight/coresight-etm-perf.c", i32 568, i32 7}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!"branch_weights", i32 1, i32 2000}
