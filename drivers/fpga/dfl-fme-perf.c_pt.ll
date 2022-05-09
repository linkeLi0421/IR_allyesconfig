; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-perf.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_feature_id = type { i16 }
%struct.dfl_feature_ops = type { ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.atomic_t = type { i32 }
%struct.fme_perf_event_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.fme_perf_priv = type { ptr, ptr, %struct.pmu, i16, i32, i32, %struct.spinlock, i32, %struct.hlist_node, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@fme_perf_id_table = dso_local constant { [3 x %struct.dfl_feature_id], [26 x i8] } { [3 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 3 }, %struct.dfl_feature_id { i16 7 }, %struct.dfl_feature_id zeroinitializer], [26 x i8] zeroinitializer }, align 32
@fme_perf_ops = dso_local constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @fme_perf_init, ptr @fme_perf_uinit, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"perf/fpga/dfl_fme:online\00", [39 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@fme_perf_pmu_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->fab_lock\00", [16 x i8] zeroinitializer }, align 32
@fme_perf_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @fme_perf_format_group, ptr @fme_perf_cpumask_group, ptr @fme_perf_events_group, ptr null], [16 x i8] zeroinitializer }, align 32
@fme_perf_events_groups = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @fme_perf_basic_events_group, ptr @fme_perf_cache_events_group, ptr @fme_perf_fabric_events_group, ptr @fme_perf_vtd_events_group, ptr @fme_perf_vtd_sip_events_group, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dfl_fme%d\00", [22 x i8] zeroinitializer }, align 32
@fme_perf_format_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @fme_perf_format_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_cpumask_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fme_perf_cpumask_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr null, ptr null, ptr @fme_perf_events_attrs_empty, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@fme_perf_format_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @format_attr_event, ptr @format_attr_evtype, ptr @format_attr_portid, ptr null], [16 x i8] zeroinitializer }, align 32
@format_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_evtype = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @evtype_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@format_attr_portid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @portid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:0-11\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"evtype\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config:12-15\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"portid\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config:16-23\0A\00", [18 x i8] zeroinitializer }, align 32
@fme_perf_cpumask_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_cpumask, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_cpumask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpumask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@fme_perf_events_attrs_empty = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@fme_perf_basic_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr null, ptr null, ptr @fme_perf_basic_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_cache_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr @fme_perf_events_visible, ptr null, ptr @fme_perf_cache_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_fabric_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr @fme_perf_fabric_events_visible, ptr null, ptr @fme_perf_fabric_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_vtd_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr @fme_perf_events_visible, ptr null, ptr @fme_perf_vtd_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_vtd_sip_events_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr @fme_perf_events_visible, ptr null, ptr @fme_perf_vtd_sip_events_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_perf_basic_events_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fme_perf_event_clock, ptr null], [24 x i8] zeroinitializer }, align 32
@fme_perf_event_clock = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16711680 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"event=0x%02x\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",evtype=0x%02x\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",portid=0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",portid=?\0A\00", [21 x i8] zeroinitializer }, align 32
@fme_perf_cache_events_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @fme_perf_event_cache_read_hit, ptr @fme_perf_event_cache_read_miss, ptr @fme_perf_event_cache_write_hit, ptr @fme_perf_event_cache_write_miss, ptr @fme_perf_event_cache_hold_request, ptr @fme_perf_event_cache_tx_req_stall, ptr @fme_perf_event_cache_rx_req_stall, ptr @fme_perf_event_cache_eviction, ptr @fme_perf_event_cache_data_write_port_contention, ptr @fme_perf_event_cache_tag_write_port_contention, ptr null], [52 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_read_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715776 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_read_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715778 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_write_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715777 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_write_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715779 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_hold_request = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715781 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_tx_req_stall = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715784 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_rx_req_stall = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715785 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_eviction = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715786 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_data_write_port_contention = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715782 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_cache_tag_write_port_contention = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16715783 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cache_read_hit\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_read_miss\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_write_hit\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache_write_miss\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_hold_request\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_tx_req_stall\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_rx_req_stall\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cache_eviction\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cache_data_write_port_contention\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cache_tag_write_port_contention\00", [32 x i8] zeroinitializer }, align 32
@fme_perf_fabric_events_attrs = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @fme_perf_event_fab_pcie0_read, ptr @fme_perf_event_fab_pcie0_write, ptr @fme_perf_event_fab_pcie1_read, ptr @fme_perf_event_fab_pcie1_write, ptr @fme_perf_event_fab_upi_read, ptr @fme_perf_event_fab_upi_write, ptr @fme_perf_event_fab_mmio_read, ptr @fme_perf_event_fab_mmio_write, ptr @fme_perf_event_fab_port_pcie0_read, ptr @fme_perf_event_fab_port_pcie0_write, ptr @fme_perf_event_fab_port_pcie1_read, ptr @fme_perf_event_fab_port_pcie1_write, ptr @fme_perf_event_fab_port_upi_read, ptr @fme_perf_event_fab_port_upi_write, ptr @fme_perf_event_fab_port_mmio_read, ptr @fme_perf_event_fab_port_mmio_write, ptr null], [60 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_pcie0_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719872 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_pcie0_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719873 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_pcie1_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719874 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_pcie1_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719875 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_upi_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719876 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_upi_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719877 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_mmio_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719878 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_mmio_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16719879 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_pcie0_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8192 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_pcie0_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8193 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_pcie1_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8194 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_pcie1_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8195 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_upi_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8196 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_upi_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8197 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_mmio_read = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8198 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_fab_port_mmio_write = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 8199 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fab_pcie0_read\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fab_pcie0_write\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fab_pcie1_read\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fab_pcie1_write\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fab_upi_read\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fab_upi_write\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fab_mmio_read\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fab_mmio_write\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fab_port_pcie0_read\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fab_port_pcie0_write\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fab_port_pcie1_read\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fab_port_pcie1_write\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fab_port_upi_read\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fab_port_upi_write\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fab_port_mmio_read\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fab_port_mmio_write\00", [44 x i8] zeroinitializer }, align 32
@fme_perf_vtd_events_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @fme_perf_event_vtd_port_read_transaction, ptr @fme_perf_event_vtd_port_write_transaction, ptr @fme_perf_event_vtd_port_devtlb_read_hit, ptr @fme_perf_event_vtd_port_devtlb_write_hit, ptr @fme_perf_event_vtd_port_devtlb_4k_fill, ptr @fme_perf_event_vtd_port_devtlb_2m_fill, ptr @fme_perf_event_vtd_port_devtlb_1g_fill, ptr null], [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_read_transaction = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12288 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_write_transaction = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12289 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_devtlb_read_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12290 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_devtlb_write_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12291 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_devtlb_4k_fill = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12292 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_devtlb_2m_fill = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12293 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_port_devtlb_1g_fill = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 12294 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vtd_port_read_transaction\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vtd_port_write_transaction\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vtd_port_devtlb_read_hit\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vtd_port_devtlb_write_hit\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vtd_port_devtlb_4k_fill\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vtd_port_devtlb_2m_fill\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vtd_port_devtlb_1g_fill\00", [40 x i8] zeroinitializer }, align 32
@fme_perf_vtd_sip_events_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @fme_perf_event_vtd_sip_iotlb_4k_hit, ptr @fme_perf_event_vtd_sip_iotlb_2m_hit, ptr @fme_perf_event_vtd_sip_iotlb_1g_hit, ptr @fme_perf_event_vtd_sip_slpwc_l3_hit, ptr @fme_perf_event_vtd_sip_slpwc_l4_hit, ptr @fme_perf_event_vtd_sip_rcc_hit, ptr @fme_perf_event_vtd_sip_iotlb_4k_miss, ptr @fme_perf_event_vtd_sip_iotlb_2m_miss, ptr @fme_perf_event_vtd_sip_iotlb_1g_miss, ptr @fme_perf_event_vtd_sip_slpwc_l3_miss, ptr @fme_perf_event_vtd_sip_slpwc_l4_miss, ptr @fme_perf_event_vtd_sip_rcc_miss, ptr null], [44 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_4k_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728064 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_2m_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728065 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_1g_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728066 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_slpwc_l3_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728067 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_slpwc_l4_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728068 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_rcc_hit = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728069 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_4k_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728070 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_2m_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728071 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_iotlb_1g_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728072 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_slpwc_l3_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728073 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_slpwc_l4_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728074 to ptr) }, [32 x i8] zeroinitializer }, align 32
@fme_perf_event_vtd_sip_rcc_miss = internal global { %struct.dev_ext_attribute, [32 x i8] } { %struct.dev_ext_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_perf_event_show, ptr null }, ptr inttoptr (i32 16728075 to ptr) }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtd_sip_iotlb_4k_hit\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtd_sip_iotlb_2m_hit\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtd_sip_iotlb_1g_hit\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtd_sip_slpwc_l3_hit\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtd_sip_slpwc_l4_hit\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vtd_sip_rcc_hit\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vtd_sip_iotlb_4k_miss\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vtd_sip_iotlb_2m_miss\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vtd_sip_iotlb_1g_miss\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vtd_sip_slpwc_l3_miss\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vtd_sip_slpwc_l4_miss\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vtd_sip_rcc_miss\00", [47 x i8] zeroinitializer }, align 32
@fme_perf_event_init.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_fme\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fme_perf_event_init\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/fpga/dfl-fme-perf.c\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s event=0x%x, evtype=0x%x, portid=0x%x,\0A\00", [54 x i8] zeroinitializer }, align 32
@fme_perf_event_ops = internal constant { [5 x %struct.fme_perf_event_ops], [36 x i8] } { [5 x %struct.fme_perf_event_ops] [%struct.fme_perf_event_ops { ptr @basic_event_init, ptr null, ptr @basic_read_event_counter }, %struct.fme_perf_event_ops { ptr @cache_event_init, ptr null, ptr @cache_read_event_counter }, %struct.fme_perf_event_ops { ptr @fabric_event_init, ptr @fabric_event_destroy, ptr @fabric_read_event_counter }, %struct.fme_perf_event_ops { ptr @vtd_event_init, ptr null, ptr @vtd_read_event_counter }, %struct.fme_perf_event_ops { ptr @vtd_sip_event_init, ptr null, ptr @vtd_sip_read_event_counter }], [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cache_read_event_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.64, i32 337, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"timeout, unmatched cache event code in counter register.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cache_read_event_counter\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cache_read_event_counter._entry_ptr = internal global ptr @cache_read_event_counter._entry, section ".printk_index", align 4
@fabric_event_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.62, ptr @.str.70, ptr @.str.64, ptr @.str.71, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fabric_event_init\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"conflict fabric event monitoring mode.\0A\00", [56 x i8] zeroinitializer }, align 32
@fabric_read_event_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.64, i32 436, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"timeout, unmatched fab event code in counter register.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fabric_read_event_counter\00", [38 x i8] zeroinitializer }, align 32
@fabric_read_event_counter._entry_ptr = internal global ptr @fabric_read_event_counter._entry, section ".printk_index", align 4
@vtd_read_event_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.64, i32 469, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"timeout, unmatched vtd event code in counter register.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vtd_read_event_counter\00", [41 x i8] zeroinitializer }, align 32
@vtd_read_event_counter._entry_ptr = internal global ptr @vtd_read_event_counter._entry, section ".printk_index", align 4
@vtd_sip_read_event_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.64, i32 500, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"timeout, unmatched vtd sip event code in counter register\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vtd_sip_read_event_counter\00", [37 x i8] zeroinitializer }, align 32
@vtd_sip_read_event_counter._entry_ptr = internal global ptr @vtd_sip_read_event_counter._entry, section ".printk_index", align 4
@switch.table.cache_read_event_counter = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\00\01\00\00\01\01", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"fme_perf_id_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1013, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"fme_perf_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1019, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 977, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 911, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"fme_perf_groups\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 247, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"fme_perf_events_groups\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 769, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 927, i32 47 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"fme_perf_format_group\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 228, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"fme_perf_cpumask_group\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 195, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"fme_perf_events_group\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 242, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 229, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"fme_perf_format_attrs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 221, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"format_attr_event\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"format_attr_evtype\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"format_attr_portid\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 217, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 218, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 219, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"fme_perf_cpumask_attrs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 190, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"dev_attr_cpumask\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 188, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 243, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"fme_perf_events_attrs_empty\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 238, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [28 x i8] c"fme_perf_basic_events_group\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 569, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant [28 x i8] c"fme_perf_cache_events_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 615, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [29 x i8] c"fme_perf_fabric_events_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 689, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"fme_perf_vtd_events_group\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 721, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [30 x i8] c"fme_perf_vtd_sip_events_group\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 763, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant [28 x i8] c"fme_perf_basic_events_attrs\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 564, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"fme_perf_event_clock\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 562, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 532, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 533, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 536, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 538, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"fme_perf_cache_events_attrs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 592, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [30 x i8] c"fme_perf_event_cache_read_hit\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"fme_perf_event_cache_read_miss\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [31 x i8] c"fme_perf_event_cache_write_hit\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [32 x i8] c"fme_perf_event_cache_write_miss\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [34 x i8] c"fme_perf_event_cache_hold_request\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [34 x i8] c"fme_perf_event_cache_tx_req_stall\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [34 x i8] c"fme_perf_event_cache_rx_req_stall\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"fme_perf_event_cache_eviction\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [48 x i8] c"fme_perf_event_cache_data_write_port_contention\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [47 x i8] c"fme_perf_event_cache_tag_write_port_contention\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 581, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 582, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 583, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 584, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 585, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 586, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 587, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 588, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 589, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 590, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [29 x i8] c"fme_perf_fabric_events_attrs\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 652, i32 26 }
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"fme_perf_event_fab_pcie0_read\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [31 x i8] c"fme_perf_event_fab_pcie0_write\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [30 x i8] c"fme_perf_event_fab_pcie1_read\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"fme_perf_event_fab_pcie1_write\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"fme_perf_event_fab_upi_read\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [29 x i8] c"fme_perf_event_fab_upi_write\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"fme_perf_event_fab_mmio_read\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"fme_perf_event_fab_mmio_write\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [35 x i8] c"fme_perf_event_fab_port_pcie0_read\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [36 x i8] c"fme_perf_event_fab_port_pcie0_write\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [35 x i8] c"fme_perf_event_fab_port_pcie1_read\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [36 x i8] c"fme_perf_event_fab_port_pcie1_write\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [33 x i8] c"fme_perf_event_fab_port_upi_read\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [34 x i8] c"fme_perf_event_fab_port_upi_write\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [34 x i8] c"fme_perf_event_fab_port_mmio_read\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [35 x i8] c"fme_perf_event_fab_port_mmio_write\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 634, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 635, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 636, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 637, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 638, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 639, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 640, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 641, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 643, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 644, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 645, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 646, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 647, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 648, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 649, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 650, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant [26 x i8] c"fme_perf_vtd_events_attrs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 710, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant [41 x i8] c"fme_perf_event_vtd_port_read_transaction\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [42 x i8] c"fme_perf_event_vtd_port_write_transaction\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [40 x i8] c"fme_perf_event_vtd_port_devtlb_read_hit\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [41 x i8] c"fme_perf_event_vtd_port_devtlb_write_hit\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [39 x i8] c"fme_perf_event_vtd_port_devtlb_4k_fill\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [39 x i8] c"fme_perf_event_vtd_port_devtlb_2m_fill\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [39 x i8] c"fme_perf_event_vtd_port_devtlb_1g_fill\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 702, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 703, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 704, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 705, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 706, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 707, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 708, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant [30 x i8] c"fme_perf_vtd_sip_events_attrs\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 747, i32 26 }
@___asan_gen_.406 = private unnamed_addr constant [36 x i8] c"fme_perf_event_vtd_sip_iotlb_4k_hit\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [36 x i8] c"fme_perf_event_vtd_sip_iotlb_2m_hit\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [36 x i8] c"fme_perf_event_vtd_sip_iotlb_1g_hit\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [36 x i8] c"fme_perf_event_vtd_sip_slpwc_l3_hit\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [36 x i8] c"fme_perf_event_vtd_sip_slpwc_l4_hit\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [31 x i8] c"fme_perf_event_vtd_sip_rcc_hit\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [37 x i8] c"fme_perf_event_vtd_sip_iotlb_4k_miss\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [37 x i8] c"fme_perf_event_vtd_sip_iotlb_2m_miss\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [37 x i8] c"fme_perf_event_vtd_sip_iotlb_1g_miss\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [37 x i8] c"fme_perf_event_vtd_sip_slpwc_l3_miss\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [37 x i8] c"fme_perf_event_vtd_sip_slpwc_l4_miss\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [32 x i8] c"fme_perf_event_vtd_sip_rcc_miss\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 734, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 735, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 736, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 737, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 738, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 739, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 740, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 741, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 742, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 743, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 744, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 745, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 832, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [19 x i8] c"fme_perf_event_ops\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 508, i32 34 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 337, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 382, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 436, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 469, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.539 = private constant [31 x i8] c"../drivers/fpga/dfl-fme-perf.c\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 500, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant [38 x i8] c"switch.table.cache_read_event_counter\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @cache_read_event_counter._entry, ptr @cache_read_event_counter._entry_ptr, ptr @fabric_read_event_counter._entry, ptr @fabric_read_event_counter._entry_ptr, ptr @vtd_read_event_counter._entry, ptr @vtd_read_event_counter._entry_ptr, ptr @vtd_sip_read_event_counter._entry, ptr @vtd_sip_read_event_counter._entry_ptr, ptr @fme_perf_id_table, ptr @fme_perf_ops, ptr @.str, ptr @fme_perf_pmu_register.__key, ptr @.str.1, ptr @fme_perf_groups, ptr @fme_perf_events_groups, ptr @.str.2, ptr @fme_perf_format_group, ptr @fme_perf_cpumask_group, ptr @fme_perf_events_group, ptr @.str.3, ptr @fme_perf_format_attrs, ptr @format_attr_event, ptr @format_attr_evtype, ptr @format_attr_portid, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fme_perf_cpumask_attrs, ptr @dev_attr_cpumask, ptr @.str.10, ptr @.str.11, ptr @fme_perf_events_attrs_empty, ptr @fme_perf_basic_events_group, ptr @fme_perf_cache_events_group, ptr @fme_perf_fabric_events_group, ptr @fme_perf_vtd_events_group, ptr @fme_perf_vtd_sip_events_group, ptr @fme_perf_basic_events_attrs, ptr @fme_perf_event_clock, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @fme_perf_cache_events_attrs, ptr @fme_perf_event_cache_read_hit, ptr @fme_perf_event_cache_read_miss, ptr @fme_perf_event_cache_write_hit, ptr @fme_perf_event_cache_write_miss, ptr @fme_perf_event_cache_hold_request, ptr @fme_perf_event_cache_tx_req_stall, ptr @fme_perf_event_cache_rx_req_stall, ptr @fme_perf_event_cache_eviction, ptr @fme_perf_event_cache_data_write_port_contention, ptr @fme_perf_event_cache_tag_write_port_contention, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @fme_perf_fabric_events_attrs, ptr @fme_perf_event_fab_pcie0_read, ptr @fme_perf_event_fab_pcie0_write, ptr @fme_perf_event_fab_pcie1_read, ptr @fme_perf_event_fab_pcie1_write, ptr @fme_perf_event_fab_upi_read, ptr @fme_perf_event_fab_upi_write, ptr @fme_perf_event_fab_mmio_read, ptr @fme_perf_event_fab_mmio_write, ptr @fme_perf_event_fab_port_pcie0_read, ptr @fme_perf_event_fab_port_pcie0_write, ptr @fme_perf_event_fab_port_pcie1_read, ptr @fme_perf_event_fab_port_pcie1_write, ptr @fme_perf_event_fab_port_upi_read, ptr @fme_perf_event_fab_port_upi_write, ptr @fme_perf_event_fab_port_mmio_read, ptr @fme_perf_event_fab_port_mmio_write, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @fme_perf_vtd_events_attrs, ptr @fme_perf_event_vtd_port_read_transaction, ptr @fme_perf_event_vtd_port_write_transaction, ptr @fme_perf_event_vtd_port_devtlb_read_hit, ptr @fme_perf_event_vtd_port_devtlb_write_hit, ptr @fme_perf_event_vtd_port_devtlb_4k_fill, ptr @fme_perf_event_vtd_port_devtlb_2m_fill, ptr @fme_perf_event_vtd_port_devtlb_1g_fill, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @fme_perf_vtd_sip_events_attrs, ptr @fme_perf_event_vtd_sip_iotlb_4k_hit, ptr @fme_perf_event_vtd_sip_iotlb_2m_hit, ptr @fme_perf_event_vtd_sip_iotlb_1g_hit, ptr @fme_perf_event_vtd_sip_slpwc_l3_hit, ptr @fme_perf_event_vtd_sip_slpwc_l4_hit, ptr @fme_perf_event_vtd_sip_rcc_hit, ptr @fme_perf_event_vtd_sip_iotlb_4k_miss, ptr @fme_perf_event_vtd_sip_iotlb_2m_miss, ptr @fme_perf_event_vtd_sip_iotlb_1g_miss, ptr @fme_perf_event_vtd_sip_slpwc_l3_miss, ptr @fme_perf_event_vtd_sip_slpwc_l4_miss, ptr @fme_perf_event_vtd_sip_rcc_miss, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @fme_perf_event_ops, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.cache_read_event_counter], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_id_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_pmu_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_events_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_format_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_cpumask_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_format_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_evtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_attr_portid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_cpumask_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpumask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_events_attrs_empty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_basic_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_cache_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_fabric_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_vtd_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_vtd_sip_events_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_basic_events_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_clock to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_cache_events_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_read_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_read_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_write_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_write_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_hold_request to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_tx_req_stall to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_rx_req_stall to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_eviction to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_data_write_port_contention to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_cache_tag_write_port_contention to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_fabric_events_attrs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_pcie0_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_pcie0_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_pcie1_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_pcie1_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_upi_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_upi_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_mmio_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_mmio_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_pcie0_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_pcie0_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_pcie1_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_pcie1_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_upi_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_upi_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_mmio_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_fab_port_mmio_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_vtd_events_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_read_transaction to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_write_transaction to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_devtlb_read_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_devtlb_write_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_devtlb_4k_fill to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_devtlb_2m_fill to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_port_devtlb_1g_fill to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_vtd_sip_events_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_4k_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_2m_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_1g_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_slpwc_l3_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_slpwc_l4_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_rcc_hit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_4k_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_2m_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_iotlb_1g_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_slpwc_l3_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_slpwc_l4_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_vtd_sip_rcc_miss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_perf_event_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_read_event_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabric_read_event_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtd_read_event_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtd_sip_read_event_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cache_read_event_counter to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_perf_init(ptr noundef %pdev, ptr nocapture noundef %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %ioaddr = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 4
  %ioaddr3 = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %ioaddr3, align 4
  %id = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %id4 = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %id4, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !246) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %cpu6 = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cpu6, align 4
  %call.i46 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @fme_perf_offline_cpu, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp = icmp slt i32 %call.i46, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %cpuhp_state = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i46, ptr %cpuhp_state, align 4
  %node = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 8
  %call.i47 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %call.i46, ptr noundef %node, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool12.not = icmp eq i32 %call.i47, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cpuhp_instance_err_crit_edge

if.end9.cpuhp_instance_err_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpuhp_instance_err

if.end14:                                         ; preds = %if.end9
  %pmu1.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2
  %fab_lock.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %fab_lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @fme_perf_pmu_register.__key, i16 noundef signext 3) #12
  %13 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %18 = and i32 %17, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  %19 = lshr i32 %17, 20
  %conv.i.i = and i32 %19, 3
  %conv.sink.i.i = select i1 %cmp.i.i, i32 255, i32 %conv.i.i
  %20 = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.sink.i.i, ptr %20, align 4
  %task_ctx_nr.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %task_ctx_nr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %task_ctx_nr.i, align 4
  %attr_groups.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %attr_groups.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fme_perf_groups, ptr %attr_groups.i, align 4
  %attr_update.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %attr_update.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fme_perf_events_groups, ptr %attr_update.i, align 4
  %event_init.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 16
  %25 = ptrtoint ptr %event_init.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @fme_perf_event_init, ptr %event_init.i, align 4
  %add.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 19
  %26 = ptrtoint ptr %add.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fme_perf_event_add, ptr %add.i, align 4
  %del.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 20
  %27 = ptrtoint ptr %del.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fme_perf_event_del, ptr %del.i, align 4
  %start.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 21
  %28 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fme_perf_event_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 22
  %29 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fme_perf_event_stop, ptr %stop.i, align 4
  %read.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 23
  %30 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fme_perf_event_read, ptr %read.i, align 4
  %capabilities.i = getelementptr inbounds %struct.fme_perf_priv, ptr %call.i, i32 0, i32 2, i32 7
  %31 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 129, ptr %capabilities.i, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %id.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  %call2.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %33, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %35) #12
  %call3.i = tail call i32 @perf_pmu_register(ptr noundef %pmu1.i, ptr noundef %call2.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool16.not = icmp eq i32 %call3.i, 0
  br i1 %tobool16.not, label %if.end18, label %pmu_register_err

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %priv19 = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 9
  %36 = ptrtoint ptr %priv19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %priv19, align 4
  br label %cleanup

pmu_register_err:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpuhp_state, align 4
  %call.i48 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %38, ptr noundef %node, i1 noundef zeroext false) #12
  br label %cpuhp_instance_err

cpuhp_instance_err:                               ; preds = %pmu_register_err, %if.end9.cpuhp_instance_err_crit_edge
  %ret.0 = phi i32 [ %call.i47, %if.end9.cpuhp_instance_err_crit_edge ], [ %call3.i, %pmu_register_err ]
  %39 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %40, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %cpuhp_instance_err, %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cpuhp_instance_err ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i46, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_uinit(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 9
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pmu.i = getelementptr inbounds %struct.fme_perf_priv, ptr %1, i32 0, i32 2
  tail call void @perf_pmu_unregister(ptr noundef %pmu.i) #12
  %cpuhp_state = getelementptr inbounds %struct.fme_perf_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpuhp_state, align 4
  %node = getelementptr inbounds %struct.fme_perf_priv, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %3, ptr noundef %node, i1 noundef zeroext false) #12
  %4 = ptrtoint ptr %cpuhp_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpuhp_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %5, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_perf_offline_cpu(i32 noundef %cpu, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -228
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpu2 = getelementptr inbounds %struct.fme_perf_priv, ptr %spec.select, i32 0, i32 7
  %0 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cpumask_any_but(ptr noundef nonnull @__cpu_online_mask, i32 noundef %cpu) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %2)
  %cmp3.not = icmp ult i32 %call, %2
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %cpu2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %cpu2, align 4
  %pmu = getelementptr inbounds %struct.fme_perf_priv, ptr %spec.select, i32 0, i32 2
  tail call void @perf_pmu_migrate_context(ptr noundef %pmu, i32 noundef %cpu, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_migrate_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_perf_event_init(ptr nocapture noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %type2 = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 15
  %9 = ptrtoint ptr %attach_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_state, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %cpu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 34
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %cpu9 = getelementptr i8, ptr %1, i32 216
  %13 = ptrtoint ptr %cpu9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.not = icmp eq i32 %12, %14
  br i1 %cmp10.not, label %do.end24, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end24:                                         ; preds = %if.end7
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %config, align 8
  %17 = trunc i64 %16 to i32
  %conv = and i32 %17, 4095
  %18 = lshr i32 %17, 16
  %conv48 = and i32 %18, 255
  %19 = lshr i32 %17, 12
  %conv69 = and i32 %19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv69)
  %cmp70 = icmp ugt i32 %conv69, 4
  br i1 %cmp70, label %do.end24.cleanup_crit_edge, label %if.end73

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73:                                         ; preds = %do.end24
  %event_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %event_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv69, ptr %event_base, align 4
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv48, ptr %config_base, align 8
  %destroy = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 55
  %23 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fme_perf_event_destroy, ptr %destroy, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_perf_event_init.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_perf_event_init, %if.then80)) #12
          to label %do.end83 [label %if.then80], !srcloc !259

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_perf_event_init.__UNIQUE_ID_ddebug404, ptr noundef %25, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %conv69, i32 noundef %conv48) #12
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %if.end73
  %arrayidx.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %conv69
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool85.not = icmp eq ptr %27, null
  br i1 %tobool85.not, label %do.end83.cleanup_crit_edge, label %if.then86

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  %call88 = tail call i32 %27(ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %conv48) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.end83.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call88, %if.then86 ], [ -2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %do.end24.cleanup_crit_edge ], [ 0, %do.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_perf_event_add(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %event_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 4
  %arrayidx.i.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i.i = select i1 %cmp.i.i, ptr null, ptr %arrayidx.i.i
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %read_counter.i = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter.i, align 4
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i, align 4
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base.i, align 8
  %call2.i = tail call i64 %5(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef %9) #12
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count.i, i64 noundef %call2.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_event_del(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_base.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i.i.i = icmp ugt i32 %1, 4
  %arrayidx.i.i.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %arrayidx.i.i.i
  %pmu.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -8
  %read_counter.i.i = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %read_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter.i.i, align 4
  %idx.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i.i, align 4
  %config_base.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base.i.i, align 8
  %call2.i.i = tail call i64 %5(ptr noundef %add.ptr.i.i, i32 noundef %7, i32 noundef %9) #12
  %prev_count.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count.i.i, i32 noundef 8) #12
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count.i.i) #12
  %sub.i.i = sub i64 %call2.i.i, %call.i.i.i
  %count.i.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %sub.i.i, ptr noundef %count.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_event_start(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ugt i32 %1, 4
  %arrayidx.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i = select i1 %cmp.i, ptr null, ptr %arrayidx.i
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %read_counter = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %read_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter, align 4
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  %call2 = tail call i64 %5(ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9) #12
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %prev_count, i64 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_event_stop(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 4
  %arrayidx.i.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i.i = select i1 %cmp.i.i, ptr null, ptr %arrayidx.i.i
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %read_counter.i = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter.i, align 4
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i, align 4
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base.i, align 8
  %call2.i = tail call i64 %5(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef %9) #12
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count.i) #12
  %sub.i = sub i64 %call2.i, %call.i.i
  %count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %sub.i, ptr noundef %count.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_event_read(ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 4
  %arrayidx.i.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i.i = select i1 %cmp.i.i, ptr null, ptr %arrayidx.i.i
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %read_counter.i = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_counter.i, align 4
  %idx.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i, align 4
  %config_base.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base.i, align 8
  %call2.i = tail call i64 %5(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef %9) #12
  %prev_count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prev_count.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %prev_count.i) #12
  %sub.i = sub i64 %call2.i, %call.i.i
  %count.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %sub.i, ptr noundef %count.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.5, i32 13)
  ret i32 12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @evtype_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.7, i32 14)
  ret i32 13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @portid_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.9, i32 14)
  ret i32 13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpumask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr i8, ptr %1, i32 216
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
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %4) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_perf_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %var, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 4095
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %and)
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %call
  %and33 = lshr i32 %2, 12
  %shr34 = and i32 %and33, 15
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15, ptr noundef nonnull @.str.14, i32 noundef %shr34)
  %add.ptr37 = getelementptr i8, ptr %add.ptr15, i32 %call36
  %3 = and i32 %2, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %3)
  %cmp.i = icmp eq i32 %3, 16711680
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr37, ptr noundef nonnull @.str.15, i32 noundef 255)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %add.ptr37, ptr @.str.16, i32 11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 10, %if.else ], [ %call59, %if.then ]
  %add.ptr62 = getelementptr i8, ptr %add.ptr37, i32 %.sink
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr62 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fme_perf_events_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr i8, ptr %1, i32 160
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp eq i16 %3, 3
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fme_perf_fabric_events_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %var5 = getelementptr inbounds %struct.dev_ext_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %var5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %var5, align 4
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp.i = icmp ugt i32 %and, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %5 = lshr i32 %4, 16
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %lor.lhs.false.i.cleanup_crit_edge [
    i8 -1, label %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge
    i8 0, label %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge47
  ]

lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge47: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_fabric_event_supported.exit

lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_fabric_event_supported.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_fabric_event_supported.exit:                   ; preds = %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge, %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge47
  %id.i = getelementptr i8, ptr %1, i32 160
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %8)
  %cmp1.i = icmp ne i16 %8, 7
  %9 = add nsw i32 %and, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %9)
  %switch.i = icmp ult i32 %9, -4
  %not.or.cond.i = or i1 %switch.i, %cmp1.i
  br i1 %not.or.cond.i, label %if.then, label %is_fabric_event_supported.exit.cleanup_crit_edge

is_fabric_event_supported.exit.cleanup_crit_edge: ; preds = %is_fabric_event_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %is_fabric_event_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %is_fabric_event_supported.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %if.then ], [ 0, %is_fabric_event_supported.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_perf_event_destroy(ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %event_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ugt i32 %1, 4
  %arrayidx.i = getelementptr [5 x %struct.fme_perf_event_ops], ptr @fme_perf_event_ops, i32 0, i32 %1
  %retval.0.i = select i1 %cmp.i, ptr null, ptr %arrayidx.i
  %event_destroy = getelementptr inbounds %struct.fme_perf_event_ops, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %event_destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_destroy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %4 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  tail call void %3(ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @basic_event_init(ptr nocapture noundef readnone %priv, i32 noundef %event, i32 noundef %portid) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp = icmp eq i32 %event, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %portid)
  %cmp.i = icmp eq i32 %portid, 255
  %or.cond = and i1 %cmp, %cmp.i
  %retval.0 = select i1 %or.cond, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @basic_read_event_counter(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 52
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i = trunc i64 %8 to i32
  %cmp.i = icmp ult i32 %10, %conv.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %fme_read_perf_cntr_reg.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fme_read_perf_cntr_reg.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cache_event_init(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp eq i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp2 = icmp ult i32 %event, 11
  %or.cond = and i1 %cmp2, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %portid)
  %cmp.i = icmp eq i32 %portid, 255
  %or.cond6 = and i1 %cmp.i, %or.cond
  %retval.0 = select i1 %or.cond6, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cache_read_event_counter(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %switch.tableidx = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.cache_read_event_counter, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %channel.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %6 = zext i32 %4 to i64
  %7 = shl nuw i64 %6, 32
  %.masked = and i64 %7, -34089155428352
  %8 = zext i32 %5 to i64
  %9 = or i64 %.masked, %8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %conv21 = zext i8 %channel.0 to i64
  %shl = shl nuw nsw i64 %conv21, 20
  %or = or i64 %10, %shl
  %conv46 = zext i32 %event to i64
  %shl47 = shl nuw nsw i64 %conv46, 16
  %and48 = and i64 %shl47, 983040
  %or49 = or i64 %or, %and48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i64 %or49 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #12, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %10, 32
  %conv3.i = trunc i64 %shr.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #12, !srcloc !262
  %call51 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call51, 30000
  %add.ptr53 = getelementptr i8, ptr %1, i32 16
  %add.ptr.i197 = getelementptr i8, ptr %1, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %event)
  %cmp73222 = icmp eq i32 %16, %event
  br i1 %cmp73222, label %if.end.do.end111_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.do.end111_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end111

land.lhs.true:                                    ; preds = %cond.false92.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call78 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call78, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call78, %add.i
  br i1 %cmp3.i, label %if.then82, label %cond.false92

if.then82:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %19 = lshr i32 %18, 4
  %20 = and i32 %19, 15
  br label %do.end111

cond.false92:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 15
  %cmp73 = icmp eq i32 %25, %event
  br i1 %cmp73, label %cond.false92.do.end111_crit_edge, label %cond.false92.land.lhs.true_crit_edge

cond.false92.land.lhs.true_crit_edge:             ; preds = %cond.false92
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false92.do.end111_crit_edge:                 ; preds = %cond.false92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end111

do.end111:                                        ; preds = %cond.false92.do.end111_crit_edge, %if.then82, %if.end.do.end111_crit_edge
  %shr114.pre-phi.in = phi i32 [ %20, %if.then82 ], [ %16, %if.end.do.end111_crit_edge ], [ %25, %cond.false92.do.end111_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr114.pre-phi.in, i32 %event)
  %cmp116 = icmp eq i32 %shr114.pre-phi.in, %event
  br i1 %cmp116, label %do.end111.do.body.i_crit_edge, label %do.end122

do.end111.do.body.i_crit_edge:                    ; preds = %do.end111
  br label %do.body.i

do.end122:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.66) #16
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end111.do.body.i_crit_edge
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %30 = zext i32 %29 to i64
  %31 = zext i32 %28 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or i64 %32, %30
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !256
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i199 = trunc i64 %34 to i32
  %cmp.i200 = icmp ult i32 %36, %conv.i199
  br i1 %cmp.i200, label %do.body.i.do.body.i_crit_edge, label %fme_read_perf_cntr_reg.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fme_read_perf_cntr_reg.exit:                      ; preds = %do.body.i
  %add.ptr144 = getelementptr i8, ptr %1, i32 24
  %add.ptr.i.i201 = getelementptr i8, ptr %1, i32 28
  br label %do.body.i204

do.body.i204:                                     ; preds = %do.body.i204.do.body.i204_crit_edge, %fme_read_perf_cntr_reg.exit
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i201) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %39 = zext i32 %38 to i64
  %40 = zext i32 %37 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or i64 %41, %39
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #12, !srcloc !256
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i202 = trunc i64 %43 to i32
  %cmp.i203 = icmp ult i32 %45, %conv.i202
  br i1 %cmp.i203, label %do.body.i204.do.body.i204_crit_edge, label %fme_read_perf_cntr_reg.exit205

do.body.i204.do.body.i204_crit_edge:              ; preds = %do.body.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i204

fme_read_perf_cntr_reg.exit205:                   ; preds = %do.body.i204
  call void @__sanitizer_cov_trace_pc() #14
  %and142 = and i64 %34, 281474976710655
  %and162 = and i64 %43, 281474976710655
  %add = add nuw nsw i64 %and162, %and142
  br label %cleanup

cleanup:                                          ; preds = %fme_read_perf_cntr_reg.exit205, %do.end122
  %retval.0 = phi i64 [ 0, %do.end122 ], [ %add, %fme_read_perf_cntr_reg.exit205 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fabric_event_init(ptr noundef %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event)
  %cmp.i = icmp ugt i32 %event, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %2 = zext i32 %portid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %portid, label %lor.lhs.false.i.cleanup_crit_edge [
    i32 255, label %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge
    i32 0, label %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge109
  ]

lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge109: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_fabric_event_supported.exit

lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_fabric_event_supported.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_fabric_event_supported.exit:                   ; preds = %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge, %lor.lhs.false.i.is_fabric_event_supported.exit_crit_edge109
  %id.i = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %4)
  %cmp1.i = icmp ne i16 %4, 7
  %5 = add nsw i32 %event, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %5)
  %switch.i = icmp ult i32 %5, -4
  %not.or.cond.i = or i1 %switch.i, %cmp1.i
  br i1 %not.or.cond.i, label %if.end, label %is_fabric_event_supported.exit.cleanup_crit_edge

is_fabric_event_supported.exit.cleanup_crit_edge: ; preds = %is_fabric_event_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_fabric_event_supported.exit
  %fab_lock = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %fab_lock) #12
  %fab_users = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %fab_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fab_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %fab_port_id = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %fab_port_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fab_port_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %portid)
  %cmp.not = icmp eq i32 %9, %portid
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %do.body

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fabric_event_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fabric_event_init, %if.then6)) #12
          to label %exit [label %if.then6], !srcloc !259

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fabric_event_init.__UNIQUE_ID_ddebug303, ptr noundef %11, ptr noundef nonnull @.str.71) #12
  br label %exit

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %inc = add i32 %7, 1
  %12 = ptrtoint ptr %fab_users to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %fab_users, align 4
  %fab_port_id10 = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 5
  %13 = ptrtoint ptr %fab_port_id10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fab_port_id10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %portid)
  %cmp11 = icmp eq i32 %14, %portid
  br i1 %cmp11, label %if.end8.exit_crit_edge, label %if.end13

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end13:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %fab_port_id10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %portid, ptr %fab_port_id10, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %18 = zext i32 %17 to i64
  %19 = zext i32 %16 to i64
  %20 = shl nuw i64 %19, 32
  %.masked = and i64 %20, -193518341455872
  %21 = or i64 %.masked, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %portid)
  %cmp.i101 = icmp eq i32 %portid, 255
  %extract.t105 = trunc i64 %22 to i32
  %extract107 = lshr i64 %22, 32
  %extract.t108 = trunc i64 %extract107 to i32
  br i1 %cmp.i101, label %if.end13.if.end74_crit_edge, label %do.end69

if.end13.if.end74_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

do.end69:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %conv71 = zext i32 %portid to i64
  %shl = shl nuw nsw i64 %conv71, 20
  %and72 = and i64 %shl, 3145728
  %or50 = or i64 %22, %and72
  %23 = trunc i64 %or50 to i32
  %extract.t = or i32 %23, 8388608
  br label %if.end74

if.end74:                                         ; preds = %do.end69, %if.end13.if.end74_crit_edge
  %v.0.off0 = phi i32 [ %extract.t, %do.end69 ], [ %extract.t105, %if.end13.if.end74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %v.0.off0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #12, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %extract.t108) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #12, !srcloc !262
  br label %exit

exit:                                             ; preds = %if.end74, %if.end8.exit_crit_edge, %if.then6, %do.body
  %ret.0 = phi i32 [ 0, %if.end8.exit_crit_edge ], [ 0, %if.end74 ], [ -95, %if.then6 ], [ -95, %do.body ]
  tail call void @_raw_spin_unlock(ptr noundef %fab_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %is_fabric_event_supported.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %is_fabric_event_supported.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fabric_event_destroy(ptr noundef %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fab_lock = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %fab_lock) #12
  %fab_users = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %fab_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fab_users, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %fab_users, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fab_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fabric_read_event_counter(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %.masked = and i64 %6, -16496969383936
  %7 = or i64 %.masked, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv14 = zext i32 %event to i64
  %shl = shl nuw nsw i64 %conv14, 16
  %and15 = and i64 %shl, 983040
  %or = or i64 %8, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i64 %or to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #12, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %8, 32
  %conv3.i = trunc i64 %shr.i to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #12, !srcloc !262
  %call17 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call17, 30000
  %add.ptr19 = getelementptr i8, ptr %1, i32 40
  %add.ptr.i130 = getelementptr i8, ptr %1, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %event)
  %cmp146 = icmp eq i32 %14, %event
  br i1 %cmp146, label %entry.do.end76_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true:                                    ; preds = %cond.false57.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call43 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then47, label %cond.false57

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 15
  br label %do.end76

cond.false57:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 15
  %cmp = icmp eq i32 %23, %event
  br i1 %cmp, label %cond.false57.do.end76_crit_edge, label %cond.false57.land.lhs.true_crit_edge

cond.false57.land.lhs.true_crit_edge:             ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false57.do.end76_crit_edge:                  ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

do.end76:                                         ; preds = %cond.false57.do.end76_crit_edge, %if.then47, %entry.do.end76_crit_edge
  %shr79.pre-phi.in = phi i32 [ %18, %if.then47 ], [ %14, %entry.do.end76_crit_edge ], [ %23, %cond.false57.do.end76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr79.pre-phi.in, i32 %event)
  %cmp81 = icmp eq i32 %shr79.pre-phi.in, %event
  br i1 %cmp81, label %do.end76.do.body.i_crit_edge, label %do.end87

do.end76.do.body.i_crit_edge:                     ; preds = %do.end76
  br label %do.body.i

do.end87:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.72) #16
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end76.do.body.i_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i132 = trunc i64 %32 to i32
  %cmp.i133 = icmp ult i32 %34, %conv.i132
  br i1 %cmp.i133, label %do.body.i.do.body.i_crit_edge, label %fme_read_perf_cntr_reg.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fme_read_perf_cntr_reg.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and107 = and i64 %32, 1152921504606846975
  br label %cleanup

cleanup:                                          ; preds = %fme_read_perf_cntr_reg.exit, %do.end87
  %retval.0 = phi i64 [ 0, %do.end87 ], [ %and107, %fme_read_perf_cntr_reg.exit ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vtd_event_init(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp eq i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event)
  %cmp2 = icmp ult i32 %event, 7
  %or.cond = and i1 %cmp2, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %cmp.i = icmp eq i32 %portid, 0
  %or.cond6 = and i1 %cmp.i, %or.cond
  %retval.0 = select i1 %or.cond6, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vtd_read_event_counter(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %mul = mul i32 %portid, 7
  %add = add i32 %mul, %event
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %.masked = and i64 %6, -16496969383936
  %7 = or i64 %.masked, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv14 = zext i32 %add to i64
  %shl = shl nuw nsw i64 %conv14, 16
  %and15 = and i64 %shl, 983040
  %or = or i64 %8, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i64 %or to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #12, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %8, 32
  %conv3.i = trunc i64 %shr.i to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #12, !srcloc !262
  %call17 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call17, 30000
  %add.ptr19 = getelementptr i8, ptr %1, i32 64
  %add.ptr.i132 = getelementptr i8, ptr %1, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp148 = icmp eq i32 %14, %add
  br i1 %cmp148, label %entry.do.end77_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

land.lhs.true:                                    ; preds = %cond.false57.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call43 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then47, label %cond.false57

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 15
  br label %do.end77

cond.false57:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 15
  %cmp = icmp eq i32 %23, %add
  br i1 %cmp, label %cond.false57.do.end77_crit_edge, label %cond.false57.land.lhs.true_crit_edge

cond.false57.land.lhs.true_crit_edge:             ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false57.do.end77_crit_edge:                  ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

do.end77:                                         ; preds = %cond.false57.do.end77_crit_edge, %if.then47, %entry.do.end77_crit_edge
  %shr80.pre-phi.in = phi i32 [ %18, %if.then47 ], [ %14, %entry.do.end77_crit_edge ], [ %23, %cond.false57.do.end77_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr80.pre-phi.in, i32 %add)
  %cmp82 = icmp eq i32 %shr80.pre-phi.in, %add
  br i1 %cmp82, label %do.end77.do.body.i_crit_edge, label %do.end88

do.end77.do.body.i_crit_edge:                     ; preds = %do.end77
  br label %do.body.i

do.end88:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.74) #16
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end77.do.body.i_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i134 = trunc i64 %32 to i32
  %cmp.i135 = icmp ult i32 %34, %conv.i134
  br i1 %cmp.i135, label %do.body.i.do.body.i_crit_edge, label %fme_read_perf_cntr_reg.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fme_read_perf_cntr_reg.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and108 = and i64 %32, 281474976710655
  br label %cleanup

cleanup:                                          ; preds = %fme_read_perf_cntr_reg.exit, %do.end88
  %retval.0 = phi i64 [ 0, %do.end88 ], [ %and108, %fme_read_perf_cntr_reg.exit ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vtd_sip_event_init(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp eq i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp2 = icmp ult i32 %event, 11
  %or.cond = and i1 %cmp2, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %portid)
  %cmp.i = icmp eq i32 %portid, 255
  %or.cond6 = and i1 %cmp.i, %or.cond
  %retval.0 = select i1 %or.cond6, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vtd_sip_read_event_counter(ptr nocapture noundef readonly %priv, i32 noundef %event, i32 noundef %portid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.fme_perf_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %.masked = and i64 %6, -16496969383936
  %7 = or i64 %.masked, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv14 = zext i32 %event to i64
  %shl = shl nuw nsw i64 %conv14, 16
  %and15 = and i64 %shl, 983040
  %or = or i64 %8, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i64 %or to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #12, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %8, 32
  %conv3.i = trunc i64 %shr.i to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #12, !srcloc !262
  %call17 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call17, 30000
  %add.ptr19 = getelementptr i8, ptr %1, i32 80
  %add.ptr.i130 = getelementptr i8, ptr %1, i32 84
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %event)
  %cmp146 = icmp eq i32 %14, %event
  br i1 %cmp146, label %entry.do.end76_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

land.lhs.true:                                    ; preds = %cond.false57.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call43 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then47, label %cond.false57

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 15
  br label %do.end76

cond.false57:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 15
  %cmp = icmp eq i32 %23, %event
  br i1 %cmp, label %cond.false57.do.end76_crit_edge, label %cond.false57.land.lhs.true_crit_edge

cond.false57.land.lhs.true_crit_edge:             ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false57.do.end76_crit_edge:                  ; preds = %cond.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

do.end76:                                         ; preds = %cond.false57.do.end76_crit_edge, %if.then47, %entry.do.end76_crit_edge
  %shr79.pre-phi.in = phi i32 [ %18, %if.then47 ], [ %14, %entry.do.end76_crit_edge ], [ %23, %cond.false57.do.end76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr79.pre-phi.in, i32 %event)
  %cmp81 = icmp eq i32 %shr79.pre-phi.in, %event
  br i1 %cmp81, label %do.end76.do.body.i_crit_edge, label %do.end87

do.end76.do.body.i_crit_edge:                     ; preds = %do.end76
  br label %do.body.i

do.end87:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.76) #16
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end76.do.body.i_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !256
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %conv.i132 = trunc i64 %32 to i32
  %cmp.i133 = icmp ult i32 %34, %conv.i132
  br i1 %cmp.i133, label %do.body.i.do.body.i_crit_edge, label %fme_read_perf_cntr_reg.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

fme_read_perf_cntr_reg.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and107 = and i64 %32, 281474976710655
  br label %cleanup

cleanup:                                          ; preds = %fme_read_perf_cntr_reg.exit, %do.end87
  %retval.0 = phi i64 [ 0, %do.end87 ], [ %and107, %fme_read_perf_cntr_reg.exit ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !216, !217, !218, !220, !222, !223, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245}
!llvm.named.register.sp = !{!246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @fme_perf_id_table, !1, !"fme_perf_id_table", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 1013, i32 29}
!2 = !{ptr @fme_perf_ops, !3, !"fme_perf_ops", i1 false, i1 false}
!3 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 1019, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 977, i32 11}
!6 = !{ptr @fme_perf_pmu_register.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 911, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 927, i32 47}
!11 = !{ptr @fme_perf_groups, !12, !"fme_perf_groups", i1 false, i1 false}
!12 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 247, i32 38}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 229, i32 10}
!15 = !{ptr @fme_perf_format_group, !16, !"fme_perf_format_group", i1 false, i1 false}
!16 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 228, i32 37}
!17 = !{ptr @fme_perf_format_attrs, !18, !"fme_perf_format_attrs", i1 false, i1 false}
!18 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 221, i32 26}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 217, i32 1}
!21 = !{ptr @format_attr_event, !20, !"format_attr_event", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 218, i32 1}
!25 = !{ptr @format_attr_evtype, !24, !"format_attr_evtype", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 219, i32 1}
!29 = !{ptr @format_attr_portid, !28, !"format_attr_portid", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fme_perf_cpumask_group, !32, !"fme_perf_cpumask_group", i1 false, i1 false}
!32 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 195, i32 37}
!33 = !{ptr @fme_perf_cpumask_attrs, !34, !"fme_perf_cpumask_attrs", i1 false, i1 false}
!34 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 190, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 188, i32 8}
!37 = !{ptr @dev_attr_cpumask, !36, !"dev_attr_cpumask", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 243, i32 10}
!40 = !{ptr @fme_perf_events_group, !41, !"fme_perf_events_group", i1 false, i1 false}
!41 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 242, i32 37}
!42 = !{ptr @fme_perf_events_attrs_empty, !43, !"fme_perf_events_attrs_empty", i1 false, i1 false}
!43 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 238, i32 26}
!44 = !{ptr @fme_perf_events_groups, !45, !"fme_perf_events_groups", i1 false, i1 false}
!45 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 769, i32 38}
!46 = !{ptr @fme_perf_basic_events_group, !47, !"fme_perf_basic_events_group", i1 false, i1 false}
!47 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 569, i32 37}
!48 = !{ptr @fme_perf_basic_events_attrs, !49, !"fme_perf_basic_events_attrs", i1 false, i1 false}
!49 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 564, i32 26}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 562, i32 1}
!52 = !{ptr @fme_perf_event_clock, !51, !"fme_perf_event_clock", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 532, i32 22}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 533, i32 22}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 536, i32 23}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 538, i32 23}
!61 = !{ptr @fme_perf_cache_events_group, !62, !"fme_perf_cache_events_group", i1 false, i1 false}
!62 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 615, i32 37}
!63 = !{ptr @fme_perf_cache_events_attrs, !64, !"fme_perf_cache_events_attrs", i1 false, i1 false}
!64 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 592, i32 26}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 581, i32 1}
!67 = !{ptr @fme_perf_event_cache_read_hit, !66, !"fme_perf_event_cache_read_hit", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 582, i32 1}
!70 = !{ptr @fme_perf_event_cache_read_miss, !69, !"fme_perf_event_cache_read_miss", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 583, i32 1}
!73 = !{ptr @fme_perf_event_cache_write_hit, !72, !"fme_perf_event_cache_write_hit", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 584, i32 1}
!76 = !{ptr @fme_perf_event_cache_write_miss, !75, !"fme_perf_event_cache_write_miss", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 585, i32 1}
!79 = !{ptr @fme_perf_event_cache_hold_request, !78, !"fme_perf_event_cache_hold_request", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 586, i32 1}
!82 = !{ptr @fme_perf_event_cache_tx_req_stall, !81, !"fme_perf_event_cache_tx_req_stall", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 587, i32 1}
!85 = !{ptr @fme_perf_event_cache_rx_req_stall, !84, !"fme_perf_event_cache_rx_req_stall", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 588, i32 1}
!88 = !{ptr @fme_perf_event_cache_eviction, !87, !"fme_perf_event_cache_eviction", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 589, i32 1}
!91 = !{ptr @fme_perf_event_cache_data_write_port_contention, !90, !"fme_perf_event_cache_data_write_port_contention", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 590, i32 1}
!94 = !{ptr @fme_perf_event_cache_tag_write_port_contention, !93, !"fme_perf_event_cache_tag_write_port_contention", i1 false, i1 false}
!95 = !{ptr @fme_perf_fabric_events_group, !96, !"fme_perf_fabric_events_group", i1 false, i1 false}
!96 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 689, i32 37}
!97 = !{ptr @fme_perf_fabric_events_attrs, !98, !"fme_perf_fabric_events_attrs", i1 false, i1 false}
!98 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 652, i32 26}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 634, i32 1}
!101 = !{ptr @fme_perf_event_fab_pcie0_read, !100, !"fme_perf_event_fab_pcie0_read", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 635, i32 1}
!104 = !{ptr @fme_perf_event_fab_pcie0_write, !103, !"fme_perf_event_fab_pcie0_write", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 636, i32 1}
!107 = !{ptr @fme_perf_event_fab_pcie1_read, !106, !"fme_perf_event_fab_pcie1_read", i1 false, i1 false}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 637, i32 1}
!110 = !{ptr @fme_perf_event_fab_pcie1_write, !109, !"fme_perf_event_fab_pcie1_write", i1 false, i1 false}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 638, i32 1}
!113 = !{ptr @fme_perf_event_fab_upi_read, !112, !"fme_perf_event_fab_upi_read", i1 false, i1 false}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 639, i32 1}
!116 = !{ptr @fme_perf_event_fab_upi_write, !115, !"fme_perf_event_fab_upi_write", i1 false, i1 false}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 640, i32 1}
!119 = !{ptr @fme_perf_event_fab_mmio_read, !118, !"fme_perf_event_fab_mmio_read", i1 false, i1 false}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 641, i32 1}
!122 = !{ptr @fme_perf_event_fab_mmio_write, !121, !"fme_perf_event_fab_mmio_write", i1 false, i1 false}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 643, i32 1}
!125 = !{ptr @fme_perf_event_fab_port_pcie0_read, !124, !"fme_perf_event_fab_port_pcie0_read", i1 false, i1 false}
!126 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 644, i32 1}
!128 = !{ptr @fme_perf_event_fab_port_pcie0_write, !127, !"fme_perf_event_fab_port_pcie0_write", i1 false, i1 false}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 645, i32 1}
!131 = !{ptr @fme_perf_event_fab_port_pcie1_read, !130, !"fme_perf_event_fab_port_pcie1_read", i1 false, i1 false}
!132 = !{ptr @.str.38, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 646, i32 1}
!134 = !{ptr @fme_perf_event_fab_port_pcie1_write, !133, !"fme_perf_event_fab_port_pcie1_write", i1 false, i1 false}
!135 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 647, i32 1}
!137 = !{ptr @fme_perf_event_fab_port_upi_read, !136, !"fme_perf_event_fab_port_upi_read", i1 false, i1 false}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 648, i32 1}
!140 = !{ptr @fme_perf_event_fab_port_upi_write, !139, !"fme_perf_event_fab_port_upi_write", i1 false, i1 false}
!141 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 649, i32 1}
!143 = !{ptr @fme_perf_event_fab_port_mmio_read, !142, !"fme_perf_event_fab_port_mmio_read", i1 false, i1 false}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 650, i32 1}
!146 = !{ptr @fme_perf_event_fab_port_mmio_write, !145, !"fme_perf_event_fab_port_mmio_write", i1 false, i1 false}
!147 = !{ptr @fme_perf_vtd_events_group, !148, !"fme_perf_vtd_events_group", i1 false, i1 false}
!148 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 721, i32 37}
!149 = !{ptr @fme_perf_vtd_events_attrs, !150, !"fme_perf_vtd_events_attrs", i1 false, i1 false}
!150 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 710, i32 26}
!151 = !{ptr @.str.43, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 702, i32 1}
!153 = !{ptr @fme_perf_event_vtd_port_read_transaction, !152, !"fme_perf_event_vtd_port_read_transaction", i1 false, i1 false}
!154 = !{ptr @.str.44, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 703, i32 1}
!156 = !{ptr @fme_perf_event_vtd_port_write_transaction, !155, !"fme_perf_event_vtd_port_write_transaction", i1 false, i1 false}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 704, i32 1}
!159 = !{ptr @fme_perf_event_vtd_port_devtlb_read_hit, !158, !"fme_perf_event_vtd_port_devtlb_read_hit", i1 false, i1 false}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 705, i32 1}
!162 = !{ptr @fme_perf_event_vtd_port_devtlb_write_hit, !161, !"fme_perf_event_vtd_port_devtlb_write_hit", i1 false, i1 false}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 706, i32 1}
!165 = !{ptr @fme_perf_event_vtd_port_devtlb_4k_fill, !164, !"fme_perf_event_vtd_port_devtlb_4k_fill", i1 false, i1 false}
!166 = !{ptr @.str.48, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 707, i32 1}
!168 = !{ptr @fme_perf_event_vtd_port_devtlb_2m_fill, !167, !"fme_perf_event_vtd_port_devtlb_2m_fill", i1 false, i1 false}
!169 = !{ptr @.str.49, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 708, i32 1}
!171 = !{ptr @fme_perf_event_vtd_port_devtlb_1g_fill, !170, !"fme_perf_event_vtd_port_devtlb_1g_fill", i1 false, i1 false}
!172 = !{ptr @fme_perf_vtd_sip_events_group, !173, !"fme_perf_vtd_sip_events_group", i1 false, i1 false}
!173 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 763, i32 37}
!174 = !{ptr @fme_perf_vtd_sip_events_attrs, !175, !"fme_perf_vtd_sip_events_attrs", i1 false, i1 false}
!175 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 747, i32 26}
!176 = !{ptr @.str.50, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 734, i32 1}
!178 = !{ptr @fme_perf_event_vtd_sip_iotlb_4k_hit, !177, !"fme_perf_event_vtd_sip_iotlb_4k_hit", i1 false, i1 false}
!179 = !{ptr @.str.51, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 735, i32 1}
!181 = !{ptr @fme_perf_event_vtd_sip_iotlb_2m_hit, !180, !"fme_perf_event_vtd_sip_iotlb_2m_hit", i1 false, i1 false}
!182 = !{ptr @.str.52, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 736, i32 1}
!184 = !{ptr @fme_perf_event_vtd_sip_iotlb_1g_hit, !183, !"fme_perf_event_vtd_sip_iotlb_1g_hit", i1 false, i1 false}
!185 = !{ptr @.str.53, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 737, i32 1}
!187 = !{ptr @fme_perf_event_vtd_sip_slpwc_l3_hit, !186, !"fme_perf_event_vtd_sip_slpwc_l3_hit", i1 false, i1 false}
!188 = !{ptr @.str.54, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 738, i32 1}
!190 = !{ptr @fme_perf_event_vtd_sip_slpwc_l4_hit, !189, !"fme_perf_event_vtd_sip_slpwc_l4_hit", i1 false, i1 false}
!191 = !{ptr @.str.55, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 739, i32 1}
!193 = !{ptr @fme_perf_event_vtd_sip_rcc_hit, !192, !"fme_perf_event_vtd_sip_rcc_hit", i1 false, i1 false}
!194 = !{ptr @.str.56, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 740, i32 1}
!196 = !{ptr @fme_perf_event_vtd_sip_iotlb_4k_miss, !195, !"fme_perf_event_vtd_sip_iotlb_4k_miss", i1 false, i1 false}
!197 = !{ptr @.str.57, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 741, i32 1}
!199 = !{ptr @fme_perf_event_vtd_sip_iotlb_2m_miss, !198, !"fme_perf_event_vtd_sip_iotlb_2m_miss", i1 false, i1 false}
!200 = !{ptr @.str.58, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 742, i32 1}
!202 = !{ptr @fme_perf_event_vtd_sip_iotlb_1g_miss, !201, !"fme_perf_event_vtd_sip_iotlb_1g_miss", i1 false, i1 false}
!203 = !{ptr @.str.59, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 743, i32 1}
!205 = !{ptr @fme_perf_event_vtd_sip_slpwc_l3_miss, !204, !"fme_perf_event_vtd_sip_slpwc_l3_miss", i1 false, i1 false}
!206 = !{ptr @.str.60, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 744, i32 1}
!208 = !{ptr @fme_perf_event_vtd_sip_slpwc_l4_miss, !207, !"fme_perf_event_vtd_sip_slpwc_l4_miss", i1 false, i1 false}
!209 = !{ptr @.str.61, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 745, i32 1}
!211 = !{ptr @fme_perf_event_vtd_sip_rcc_miss, !210, !"fme_perf_event_vtd_sip_rcc_miss", i1 false, i1 false}
!212 = !{ptr @.str.62, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 832, i32 2}
!214 = !{ptr @.str.63, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.64, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.65, !213, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fme_perf_event_init.__UNIQUE_ID_ddebug404, !213, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!218 = !{ptr @fme_perf_event_ops, !219, !"fme_perf_event_ops", i1 false, i1 false}
!219 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 508, i32 34}
!220 = !{ptr @.str.66, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 337, i32 3}
!222 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.68, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @cache_read_event_counter._entry, !221, !"_entry", i1 false, i1 false}
!226 = !{ptr @cache_read_event_counter._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.70, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 382, i32 3}
!229 = !{ptr @.str.71, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @fabric_event_init.__UNIQUE_ID_ddebug303, !228, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!231 = !{ptr @.str.72, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 436, i32 3}
!233 = !{ptr @.str.73, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @fabric_read_event_counter._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @fabric_read_event_counter._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.74, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 469, i32 3}
!238 = !{ptr @.str.75, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @vtd_read_event_counter._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @vtd_read_event_counter._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.76, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/fpga/dfl-fme-perf.c", i32 500, i32 3}
!243 = !{ptr @.str.77, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vtd_sip_read_event_counter._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vtd_sip_read_event_counter._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{!"sp"}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i64 6093947}
!257 = !{i64 2154772862}
!258 = !{i64 2154773300}
!259 = !{i64 2148387504, i64 2148387509, i64 2148387522, i64 2148387566, i64 2148387600, i64 2148387621}
!260 = !{i64 2155052305}
!261 = !{i64 2154773670}
!262 = !{i64 6093529}
!263 = !{i64 2154774043}
