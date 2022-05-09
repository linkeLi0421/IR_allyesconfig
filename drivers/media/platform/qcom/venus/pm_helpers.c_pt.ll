; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/pm_helpers.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/pm_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.venus_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.95, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.95 = type { %struct.vdec_controls, [224 x i8] }
%struct.vdec_controls = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.venus_ts_metadata = type { i8, i64, i64, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%union.hfi_get_property = type { [11 x %struct.hfi_buffer_requirements] }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.freq_tbl = type { i32, i32 }
%struct.bw_tbl = type { i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hfi_videocores_usage_type = type { i32 }

@pm_ops_v1 = internal constant { %struct.venus_pm_ops, [52 x i8] } { %struct.venus_pm_ops { ptr @core_get_v1, ptr @core_put_v1, ptr @core_power_v1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @load_scale_v1 }, [52 x i8] zeroinitializer }, align 32
@pm_ops_v3 = internal constant { %struct.venus_pm_ops, [52 x i8] } { %struct.venus_pm_ops { ptr @core_get_v1, ptr @core_put_v1, ptr @core_power_v1, ptr @vdec_get_v3, ptr null, ptr @vdec_power_v3, ptr @venc_get_v3, ptr null, ptr @venc_power_v3, ptr null, ptr @load_scale_v1 }, [52 x i8] zeroinitializer }, align 32
@pm_ops_v4 = internal constant { %struct.venus_pm_ops, [52 x i8] } { %struct.venus_pm_ops { ptr @core_get_v4, ptr @core_put_v4, ptr @core_power_v4, ptr @vdec_get_v4, ptr @vdec_put_v4, ptr @vdec_power_v4, ptr @venc_get_v4, ptr @venc_put_v4, ptr @venc_power_v4, ptr @coreid_power_v4, ptr @load_scale_v4 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@load_scale_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HW is overloaded, needed: %d max: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_scale_v1\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/platform/qcom/venus/pm_helpers.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@load_scale_v1._entry_ptr = internal global ptr @load_scale_v1._entry, section ".printk_index", align 4
@load_scale_v1._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set clock rate %lu (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@load_scale_v1._entry_ptr.9 = internal global ptr @load_scale_v1._entry.6, section ".printk_index", align 4
@load_scale_v1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set bandwidth (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@load_scale_v1._entry_ptr.12 = internal global ptr @load_scale_v1._entry.10, section ".printk_index", align 4
@load_scale_bw.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venus_core\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_scale_bw\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VenusLow : total: avg_bw: %u, peak_bw: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@legacy_binding = internal global { i1, [31 x i8] } zeroinitializer, align 32
@core_get_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 989, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s legacy binding\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"core_get_v4\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@core_get_v4._entry_ptr = internal global ptr @core_get_v4._entry, section ".printk_index", align 4
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"non\00", [28 x i8] zeroinitializer }, align 32
@core_get_v4._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 1015, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid OPP table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@core_get_v4._entry_ptr.23 = internal global ptr @core_get_v4._entry.21, section ".printk_index", align 4
@decide_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HW can't support this load\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decide_core\00", [20 x i8] zeroinitializer }, align 32
@decide_core._entry_ptr = internal global ptr @decide_core._entry, section ".printk_index", align 4
@load_scale_v4.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_scale_v4\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"VenusLow : requested clock rate: %lu scaling clock rate : %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@load_scale_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.26, ptr @.str.3, i32 1163, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@load_scale_v4._entry_ptr = internal global ptr @load_scale_v4._entry, section ".printk_index", align 4
@load_scale_v4._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.3, i32 1170, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@load_scale_v4._entry_ptr.29 = internal global ptr @load_scale_v4._entry.28, section ".printk_index", align 4
@switch.table.venus_pm_get = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @pm_ops_v3, ptr @pm_ops_v4, ptr @pm_ops_v4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"pm_ops_v1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 325, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"pm_ops_v3\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 398, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"pm_ops_v4\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1179, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 302, i32 43 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 259, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 277, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 284, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 237, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"legacy_binding\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 989, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1015, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 670, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1144, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1162, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private constant [50 x i8] c"../drivers/media/platform/qcom/venus/pm_helpers.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1169, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [26 x i8] c"switch.table.venus_pm_get\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @core_get_v4._entry, ptr @core_get_v4._entry.21, ptr @core_get_v4._entry_ptr, ptr @core_get_v4._entry_ptr.23, ptr @decide_core._entry, ptr @decide_core._entry_ptr, ptr @load_scale_v1._entry, ptr @load_scale_v1._entry.10, ptr @load_scale_v1._entry.6, ptr @load_scale_v1._entry_ptr, ptr @load_scale_v1._entry_ptr.12, ptr @load_scale_v1._entry_ptr.9, ptr @load_scale_v4._entry, ptr @load_scale_v4._entry.28, ptr @load_scale_v4._entry_ptr, ptr @load_scale_v4._entry_ptr.29, ptr @pm_ops_v1, ptr @pm_ops_v3, ptr @pm_ops_v4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @legacy_binding, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.venus_pm_get], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_ops_v1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_ops_v3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_ops_v4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scale_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scale_v1._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scale_v1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_binding to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_get_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_get_v4._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decide_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scale_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scale_v4._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.venus_pm_get to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @venus_pm_get(i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %version, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.venus_pm_get, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ @pm_ops_v1, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_get_v1(ptr nocapture noundef %core) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1.i, align 4
  %dev2.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %2 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2.i, align 4
  %clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clks_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not.i = icmp eq i32 %5, 0
  br i1 %cmp23.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %6 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clks_num.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.venus_resources, ptr %1, i32 0, i32 9, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef %9) #8
  %arrayidx4.i = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %i.024.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx4.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %core_clks_get.exit, label %for.cond.i

core_clks_get.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.i, align 4
  %call1 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %13, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %core_clks_get.exit
  %retval.0 = phi i32 [ %11, %core_clks_get.exit ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @core_put_v1(ptr nocapture noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_power_v1(ptr nocapture noundef readonly %core, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @core_clks_enable(ptr noundef %core)
  br label %if.end

if.else:                                          ; preds = %entry
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1.i, align 4
  %clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clks_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not4.i = icmp eq i32 %3, 0
  br i1 %tobool.not4.i, label %if.else.if.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %3, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %i.05.i, -1
  %arrayidx.i = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %dec.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_scale_v1(ptr nocapture noundef readonly %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %freq_tbl = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_tbl, align 8
  %freq_tbl_size = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %freq_tbl_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq_tbl_size, align 4
  %freq3 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %freq3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq3, align 4
  %dev4 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %instances.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %instances.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %inst.014.i = load ptr, ptr %instances.i, align 4
  %cmp.not15.i = icmp eq ptr %inst.014.i, %instances.i
  br i1 %cmp.not15.i, label %entry.load_per_type.exit95_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.load_per_type.exit95_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_type.exit95

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %inst.017.i = phi ptr [ %inst.0.i, %for.inc.i.for.body.i_crit_edge ], [ %inst.014.i, %entry.for.body.i_crit_edge ]
  %mbs_per_sec.016.i = phi i32 [ %mbs_per_sec.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %session_type2.i = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i, i32 0, i32 55
  %13 = ptrtoint ptr %session_type2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %session_type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp3.not.i = icmp eq i32 %14, 1
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %tobool.not.i.i = icmp eq ptr %inst.017.i, null
  br i1 %tobool.not.i.i, label %if.end.i.load_per_instance.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.load_per_instance.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i, i32 0, i32 50
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i.i, align 4
  %17 = add i32 %16, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %if.end.i.i, label %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge

lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %width.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i, i32 0, i32 15
  %19 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width.i.i, align 8
  %add.i.i = add i32 %20, 15
  %div13.i.i = lshr i32 %add.i.i, 4
  %height.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i, i32 0, i32 16
  %21 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i.i, align 4
  %add3.i.i = add i32 %22, 15
  %div514.i.i = lshr i32 %add3.i.i, 4
  %mul.i.i = mul i32 %div514.i.i, %div13.i.i
  %fps.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i, i32 0, i32 31
  %23 = ptrtoint ptr %fps.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fps.i.i, align 8
  %25 = trunc i64 %24 to i32
  %conv7.i.i = mul i32 %mul.i.i, %25
  br label %load_per_instance.exit.i

load_per_instance.exit.i:                         ; preds = %if.end.i.i, %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge, %if.end.i.load_per_instance.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv7.i.i, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge ], [ 0, %if.end.i.load_per_instance.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %mbs_per_sec.016.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %load_per_instance.exit.i, %for.body.i.for.inc.i_crit_edge
  %mbs_per_sec.1.i = phi i32 [ %mbs_per_sec.016.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %load_per_instance.exit.i ]
  %26 = ptrtoint ptr %inst.017.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %inst.0.i = load ptr, ptr %inst.017.i, align 4
  %cmp.not.i = icmp eq ptr %inst.0.i, %instances.i
  br i1 %cmp.not.i, label %for.inc.i.for.body.i72_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.body.i72_crit_edge:                 ; preds = %for.inc.i
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.inc.i93.for.body.i72_crit_edge, %for.inc.i.for.body.i72_crit_edge
  %inst.017.i68 = phi ptr [ %inst.0.i91, %for.inc.i93.for.body.i72_crit_edge ], [ %inst.014.i, %for.inc.i.for.body.i72_crit_edge ]
  %mbs_per_sec.016.i69 = phi i32 [ %mbs_per_sec.1.i90, %for.inc.i93.for.body.i72_crit_edge ], [ 0, %for.inc.i.for.body.i72_crit_edge ]
  %session_type2.i70 = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i68, i32 0, i32 55
  %27 = ptrtoint ptr %session_type2.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %session_type2.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp3.not.i71 = icmp eq i32 %28, 2
  br i1 %cmp3.not.i71, label %if.end.i74, label %for.body.i72.for.inc.i93_crit_edge

for.body.i72.for.inc.i93_crit_edge:               ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i93

if.end.i74:                                       ; preds = %for.body.i72
  %tobool.not.i.i73 = icmp eq ptr %inst.017.i68, null
  br i1 %tobool.not.i.i73, label %if.end.i74.load_per_instance.exit.i89_crit_edge, label %lor.lhs.false.i.i76

if.end.i74.load_per_instance.exit.i89_crit_edge:  ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i89

lor.lhs.false.i.i76:                              ; preds = %if.end.i74
  %state.i.i75 = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i68, i32 0, i32 50
  %29 = ptrtoint ptr %state.i.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i.i75, align 4
  %31 = add i32 %30, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %if.end.i.i86, label %lor.lhs.false.i.i76.load_per_instance.exit.i89_crit_edge

lor.lhs.false.i.i76.load_per_instance.exit.i89_crit_edge: ; preds = %lor.lhs.false.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i89

if.end.i.i86:                                     ; preds = %lor.lhs.false.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  %width.i.i77 = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i68, i32 0, i32 15
  %33 = ptrtoint ptr %width.i.i77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width.i.i77, align 8
  %add.i.i78 = add i32 %34, 15
  %div13.i.i79 = lshr i32 %add.i.i78, 4
  %height.i.i80 = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i68, i32 0, i32 16
  %35 = ptrtoint ptr %height.i.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i.i80, align 4
  %add3.i.i81 = add i32 %36, 15
  %div514.i.i82 = lshr i32 %add3.i.i81, 4
  %mul.i.i83 = mul i32 %div514.i.i82, %div13.i.i79
  %fps.i.i84 = getelementptr inbounds %struct.venus_inst, ptr %inst.017.i68, i32 0, i32 31
  %37 = ptrtoint ptr %fps.i.i84 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %fps.i.i84, align 8
  %39 = trunc i64 %38 to i32
  %conv7.i.i85 = mul i32 %mul.i.i83, %39
  br label %load_per_instance.exit.i89

load_per_instance.exit.i89:                       ; preds = %if.end.i.i86, %lor.lhs.false.i.i76.load_per_instance.exit.i89_crit_edge, %if.end.i74.load_per_instance.exit.i89_crit_edge
  %retval.0.i.i87 = phi i32 [ %conv7.i.i85, %if.end.i.i86 ], [ 0, %lor.lhs.false.i.i76.load_per_instance.exit.i89_crit_edge ], [ 0, %if.end.i74.load_per_instance.exit.i89_crit_edge ]
  %add.i88 = add i32 %retval.0.i.i87, %mbs_per_sec.016.i69
  br label %for.inc.i93

for.inc.i93:                                      ; preds = %load_per_instance.exit.i89, %for.body.i72.for.inc.i93_crit_edge
  %mbs_per_sec.1.i90 = phi i32 [ %mbs_per_sec.016.i69, %for.body.i72.for.inc.i93_crit_edge ], [ %add.i88, %load_per_instance.exit.i89 ]
  %40 = ptrtoint ptr %inst.017.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %inst.0.i91 = load ptr, ptr %inst.017.i68, align 4
  %cmp.not.i92 = icmp eq ptr %inst.0.i91, %instances.i
  br i1 %cmp.not.i92, label %load_per_type.exit95.loopexit, label %for.inc.i93.for.body.i72_crit_edge

for.inc.i93.for.body.i72_crit_edge:               ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i72

load_per_type.exit95.loopexit:                    ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #10
  %41 = add i32 %mbs_per_sec.1.i90, %mbs_per_sec.1.i
  br label %load_per_type.exit95

load_per_type.exit95:                             ; preds = %load_per_type.exit95.loopexit, %entry.load_per_type.exit95_crit_edge
  %add = phi i32 [ %41, %load_per_type.exit95.loopexit ], [ 0, %entry.load_per_type.exit95_crit_edge ]
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %res, align 4
  %max_load = getelementptr inbounds %struct.venus_resources, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %max_load to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_load, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %45)
  %cmp = icmp ugt i32 %add, %45
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %load_per_type.exit95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %45) #11
  br label %for.cond.preheader

if.end:                                           ; preds = %load_per_type.exit95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp9 = icmp ugt i32 %7, 1
  %or.cond = select i1 %tobool.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14102.not = icmp eq i32 %7, 0
  br i1 %cmp14102.not, label %for.cond.preheader.set_freq_crit_edge, label %for.body.preheader

for.cond.preheader.set_freq_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq

for.body.preheader:                               ; preds = %for.cond.preheader
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %47)
  %cmp16109 = icmp ugt i32 %add, %47
  br i1 %cmp16109, label %for.body.preheader.set_freq_crit_edge, label %for.body.preheader.if.end18_crit_edge

for.body.preheader.if.end18_crit_edge:            ; preds = %for.body.preheader
  br label %if.end18

for.body.preheader.set_freq_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %7, -1
  %freq12 = getelementptr %struct.freq_tbl, ptr %5, i32 %sub, i32 1
  %48 = ptrtoint ptr %freq12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %freq12, align 4
  br label %set_freq

for.body:                                         ; preds = %if.end18
  %arrayidx15 = getelementptr %struct.freq_tbl, ptr %5, i32 %inc
  %50 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx15, align 4
  %cmp16 = icmp ugt i32 %add, %51
  br i1 %cmp16, label %for.body.set_freq.loopexit_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.body.set_freq.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq.loopexit

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %for.body.preheader.if.end18_crit_edge
  %i.0104110 = phi i32 [ %inc, %for.body.if.end18_crit_edge ], [ 0, %for.body.preheader.if.end18_crit_edge ]
  %inc = add nuw i32 %i.0104110, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %7)
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %if.end18.set_freq.loopexit_crit_edge, label %for.body

if.end18.set_freq.loopexit_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq.loopexit

set_freq.loopexit:                                ; preds = %if.end18.set_freq.loopexit_crit_edge, %for.body.set_freq.loopexit_crit_edge
  %freq20.le = getelementptr %struct.freq_tbl, ptr %5, i32 %i.0104110, i32 1
  %52 = ptrtoint ptr %freq20.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %freq20.le, align 4
  br label %set_freq

set_freq:                                         ; preds = %set_freq.loopexit, %if.then10, %for.body.preheader.set_freq_crit_edge, %for.cond.preheader.set_freq_crit_edge
  %freq.1 = phi i32 [ %49, %if.then10 ], [ %9, %for.cond.preheader.set_freq_crit_edge ], [ %9, %for.body.preheader.set_freq_crit_edge ], [ %53, %set_freq.loopexit ]
  %54 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %55, i32 noundef %freq.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i96, label %set_freq.do.end26_crit_edge

set_freq.do.end26_crit_edge:                      ; preds = %set_freq
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.end.i96:                                       ; preds = %set_freq
  %vcodec0_clks.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %vcodec0_clks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vcodec0_clks.i, align 4
  %call1.i = tail call i32 @clk_set_rate(ptr noundef %57, i32 noundef %freq.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %core_clks_set_rate.exit, label %if.end.i96.do.end26_crit_edge

if.end.i96.do.end26_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

core_clks_set_rate.exit:                          ; preds = %if.end.i96
  %vcodec1_clks.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %vcodec1_clks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vcodec1_clks.i, align 4
  %call6.i = tail call i32 @clk_set_rate(ptr noundef %59, i32 noundef %freq.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool22.not = icmp eq i32 %call6.i, 0
  br i1 %tobool22.not, label %if.end27, label %core_clks_set_rate.exit.do.end26_crit_edge

core_clks_set_rate.exit.do.end26_crit_edge:       ; preds = %core_clks_set_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end26:                                         ; preds = %core_clks_set_rate.exit.do.end26_crit_edge, %if.end.i96.do.end26_crit_edge, %set_freq.do.end26_crit_edge
  %retval.0.i101 = phi i32 [ %call6.i, %core_clks_set_rate.exit.do.end26_crit_edge ], [ %call1.i, %if.end.i96.do.end26_crit_edge ], [ %call.i, %set_freq.do.end26_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %freq.1, i32 noundef %retval.0.i101) #11
  br label %exit

if.end27:                                         ; preds = %core_clks_set_rate.exit
  %call28 = tail call fastcc i32 @load_scale_bw(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.exit_crit_edge, label %do.end33

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %call28) #11
  br label %exit

exit:                                             ; preds = %do.end33, %if.end27.exit_crit_edge, %do.end26
  %ret.0 = phi i32 [ %retval.0.i101, %do.end26 ], [ %call28, %do.end33 ], [ 0, %if.end27.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_clks_enable(ptr nocapture noundef readonly %core) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1, align 4
  %freq_tbl3 = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %freq_tbl3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_tbl3, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %freq_tbl_size5 = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %freq_tbl_size5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq_tbl_size5, align 4
  %sub = add i32 %5, -1
  %freq6 = getelementptr %struct.freq_tbl, ptr %3, i32 %sub, i32 1
  %6 = ptrtoint ptr %freq6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq6, align 4
  %clks_num = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %clks_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clks_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp49.not = icmp eq i32 %9, 0
  br i1 %cmp49.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res1, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp8 = icmp eq i32 %13, 3
  br i1 %cmp8, label %if.then9, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %for.body
  %arrayidx10 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %i.050
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.err_crit_edge

if.then9.err_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %arrayidx16 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %i.050
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %err

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw i32 %i.050, 1
  %18 = ptrtoint ptr %clks_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clks_num, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err:                                              ; preds = %if.then3.i, %if.end14.err_crit_edge, %if.then9.err_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.then3.i ], [ %call, %if.then9.err_crit_edge ], [ %call.i, %if.end14.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.050)
  %tobool21.not51 = icmp eq i32 %i.050, 0
  br i1 %tobool21.not51, label %err.cleanup_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err.while.body_crit_edge
  %i.152 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.050, %err.while.body_crit_edge ]
  %dec = add i32 %i.152, -1
  %arrayidx23 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %dec
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx23, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_scale_bw(ptr noundef readonly %core) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %instances = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 29
  %0 = ptrtoint ptr %instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %inst.038 = load ptr, ptr %instances, align 4
  %cmp.not39 = icmp eq ptr %inst.038, %instances
  br i1 %cmp.not39, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body:                                         ; preds = %mbs_to_bw.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %inst.042 = phi ptr [ %inst.0, %mbs_to_bw.exit.for.body_crit_edge ], [ %inst.038, %entry.for.body_crit_edge ]
  %total_avg.041 = phi i32 [ %add, %mbs_to_bw.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %total_peak.040 = phi i32 [ %add2, %mbs_to_bw.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %inst.042, null
  br i1 %tobool.not.i, label %for.body.mbs_to_bw.exit_crit_edge, label %lor.lhs.false.i

for.body.mbs_to_bw.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %state.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 50
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  %3 = add i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %load_per_instance.exit, label %lor.lhs.false.i.mbs_to_bw.exit_crit_edge

lor.lhs.false.i.mbs_to_bw.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

load_per_instance.exit:                           ; preds = %lor.lhs.false.i
  %width.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 15
  %5 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width.i, align 8
  %add.i = add i32 %6, 15
  %div13.i = lshr i32 %add.i, 4
  %height.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 16
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %add3.i = add i32 %8, 15
  %div514.i = lshr i32 %add3.i, 4
  %mul.i = mul i32 %div514.i, %div13.i
  %fps.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 31
  %9 = ptrtoint ptr %fps.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fps.i, align 8
  %11 = trunc i64 %10 to i32
  %conv7.i = mul i32 %mul.i, %11
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 2
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i, align 4
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i)
  %cmp.i = icmp eq i32 %conv7.i, 0
  br i1 %cmp.i, label %load_per_instance.exit.mbs_to_bw.exit_crit_edge, label %if.end.i31

load_per_instance.exit.mbs_to_bw.exit_crit_edge:  ; preds = %load_per_instance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

if.end.i31:                                       ; preds = %load_per_instance.exit
  %session_type.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 55
  %16 = ptrtoint ptr %session_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %session_type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end.i31.mbs_to_bw.exit_crit_edge [
    i32 1, label %if.then3.i
    i32 2, label %if.then6.i
  ]

if.end.i31.mbs_to_bw.exit_crit_edge:              ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

if.then3.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %bw_tbl_enc_size.i = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 4
  %bw_tbl_enc.i = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 3
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %bw_tbl_dec_size.i = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 6
  %bw_tbl_dec.i = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.then3.i
  %bw_tbl.0.in.i = phi ptr [ %bw_tbl_enc.i, %if.then3.i ], [ %bw_tbl_dec.i, %if.then6.i ]
  %num_rows.0.in.i = phi ptr [ %bw_tbl_enc_size.i, %if.then3.i ], [ %bw_tbl_dec_size.i, %if.then6.i ]
  %19 = ptrtoint ptr %num_rows.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %num_rows.0.i = load i32, ptr %num_rows.0.in.i, align 4
  %20 = ptrtoint ptr %bw_tbl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bw_tbl.0.i = load ptr, ptr %bw_tbl.0.in.i, align 8
  %tobool.not.i32 = icmp ne ptr %bw_tbl.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rows.0.i)
  %cmp10.i = icmp ne i32 %num_rows.0.i, 0
  %or.cond58.i = select i1 %tobool.not.i32, i1 %cmp10.i, i1 false
  br i1 %or.cond58.i, label %for.body.lr.ph.i, label %if.end9.i.mbs_to_bw.exit_crit_edge

if.end9.i.mbs_to_bw.exit_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %dpb_fmt.i = getelementptr inbounds %struct.venus_inst, ptr %inst.042, i32 0, i32 41
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %avg.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %avg.1, %if.end17.i.for.body.i_crit_edge ]
  %peak.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %storemerge.i, %if.end17.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end17.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.056.i)
  %cmp14.not.i = icmp eq i32 %i.056.i, 0
  br i1 %cmp14.not.i, label %for.body.i.if.end17.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.bw_tbl, ptr %bw_tbl.0.i, i32 %i.056.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv7.i)
  %cmp15.i = icmp ult i32 %22, %conv7.i
  br i1 %cmp15.i, label %land.lhs.true.i.mbs_to_bw.exit_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i.mbs_to_bw.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %for.body.i.if.end17.i_crit_edge
  %23 = ptrtoint ptr %dpb_fmt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpb_fmt.i, align 8
  %and.i = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  %avg24.i = getelementptr %struct.bw_tbl, ptr %bw_tbl.0.i, i32 %i.056.i, i32 1
  %peak26.i = getelementptr %struct.bw_tbl, ptr %bw_tbl.0.i, i32 %i.056.i, i32 2
  %avg_10bit.i = getelementptr %struct.bw_tbl, ptr %bw_tbl.0.i, i32 %i.056.i, i32 3
  %peak_10bit.i = getelementptr %struct.bw_tbl, ptr %bw_tbl.0.i, i32 %i.056.i, i32 4
  %avg.1.in = select i1 %tobool18.not.i, ptr %avg24.i, ptr %avg_10bit.i
  %storemerge.in.i = select i1 %tobool18.not.i, ptr %peak26.i, ptr %peak_10bit.i
  %25 = ptrtoint ptr %avg.1.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %avg.1 = load i32, ptr %avg.1.in, align 4
  %26 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %inc.i = add nuw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_rows.0.i
  br i1 %exitcond.not.i, label %if.end17.i.mbs_to_bw.exit_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end17.i.mbs_to_bw.exit_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbs_to_bw.exit

mbs_to_bw.exit:                                   ; preds = %if.end17.i.mbs_to_bw.exit_crit_edge, %land.lhs.true.i.mbs_to_bw.exit_crit_edge, %if.end9.i.mbs_to_bw.exit_crit_edge, %if.end.i31.mbs_to_bw.exit_crit_edge, %load_per_instance.exit.mbs_to_bw.exit_crit_edge, %lor.lhs.false.i.mbs_to_bw.exit_crit_edge, %for.body.mbs_to_bw.exit_crit_edge
  %avg.2 = phi i32 [ 0, %load_per_instance.exit.mbs_to_bw.exit_crit_edge ], [ 0, %if.end.i31.mbs_to_bw.exit_crit_edge ], [ 0, %if.end9.i.mbs_to_bw.exit_crit_edge ], [ 0, %lor.lhs.false.i.mbs_to_bw.exit_crit_edge ], [ 0, %for.body.mbs_to_bw.exit_crit_edge ], [ %avg.0, %land.lhs.true.i.mbs_to_bw.exit_crit_edge ], [ %avg.1, %if.end17.i.mbs_to_bw.exit_crit_edge ]
  %peak.1 = phi i32 [ 0, %load_per_instance.exit.mbs_to_bw.exit_crit_edge ], [ 0, %if.end.i31.mbs_to_bw.exit_crit_edge ], [ 0, %if.end9.i.mbs_to_bw.exit_crit_edge ], [ 0, %lor.lhs.false.i.mbs_to_bw.exit_crit_edge ], [ 0, %for.body.mbs_to_bw.exit_crit_edge ], [ %peak.0, %land.lhs.true.i.mbs_to_bw.exit_crit_edge ], [ %storemerge.i, %if.end17.i.mbs_to_bw.exit_crit_edge ]
  %add = add i32 %avg.2, %total_avg.041
  %add2 = add i32 %peak.1, %total_peak.040
  %27 = ptrtoint ptr %inst.042 to i32
  call void @__asan_load4_noabort(i32 %27)
  %inst.0 = load ptr, ptr %inst.042, align 4
  %cmp.not = icmp eq ptr %inst.0, %instances
  br i1 %cmp.not, label %for.end, label %mbs_to_bw.exit.for.body_crit_edge

mbs_to_bw.exit.for.body_crit_edge:                ; preds = %mbs_to_bw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %mbs_to_bw.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2)
  %tobool8.not = icmp eq i32 %add2, 0
  br i1 %tobool8.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %28

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %tobool.not53 = phi i1 [ %tobool.not, %for.end.for.end.thread_crit_edge ], [ true, %entry.for.end.thread_crit_edge ]
  %total_avg.0.lcssa51 = phi i32 [ %add, %for.end.for.end.thread_crit_edge ], [ 0, %entry.for.end.thread_crit_edge ]
  br label %28

28:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %tobool.not52 = phi i1 [ %tobool.not53, %for.end.thread ], [ %tobool.not, %for.end._crit_edge ]
  %total_avg.0.lcssa50 = phi i32 [ %total_avg.0.lcssa51, %for.end.thread ], [ %add, %for.end._crit_edge ]
  %total_peak.0.lcssa48 = phi i32 [ 0, %for.end.thread ], [ %add2, %for.end._crit_edge ]
  %29 = phi i32 [ 125, %for.end.thread ], [ 0, %for.end._crit_edge ]
  %total_avg.1 = select i1 %tobool.not52, i32 %29, i32 %total_avg.0.lcssa50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_scale_bw.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_scale_bw, %if.then15)) #8
          to label %do.end [label %if.then15], !srcloc !68

if.then15:                                        ; preds = %28
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_scale_bw.__UNIQUE_ID_ddebug299, ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef %total_avg.1, i32 noundef %total_peak.0.lcssa48) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %28
  %video_path = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 12
  %32 = ptrtoint ptr %video_path to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video_path, align 4
  %call17 = tail call i32 @icc_set_bw(ptr noundef %33, i32 noundef %total_avg.1, i32 noundef %total_peak.0.lcssa48) #8
  ret i32 %call17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_get_v3(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vcodec0_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec0_clks1 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 11
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %entry.vcodec_clks_get.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vcodec_clks_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_get.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %vcodec0_clks1, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %7) #8
  %arrayidx3.i = getelementptr ptr, ptr %vcodec0_clks, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  br label %vcodec_clks_get.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %10 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcodec_clks_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vcodec_clks_get.exit_crit_edge

for.inc.i.vcodec_clks_get.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_get.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vcodec_clks_get.exit:                             ; preds = %for.inc.i.vcodec_clks_get.exit_crit_edge, %if.then6.i, %entry.vcodec_clks_get.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then6.i ], [ 0, %entry.vcodec_clks_get.exit_crit_edge ], [ 0, %for.inc.i.vcodec_clks_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_power_v3(ptr nocapture noundef readonly %dev, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wrapper_base.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wrapper_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wrapper_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  %vcodec0_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @vcodec_clks_enable(ptr noundef %1, ptr noundef %vcodec0_clks)
  br label %if.end

if.else:                                          ; preds = %entry
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res1.i, align 4
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not3.i = icmp eq i32 %7, 0
  br i1 %tobool.not3.i, label %if.else.if.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %7, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %i.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %vcodec0_clks, i32 %dec.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %if.else.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ]
  %10 = ptrtoint ptr %wrapper_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrapper_base.i, align 4
  %add.ptr2.i10 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 16777216) #8, !srcloc !69
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_get_v3(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vcodec1_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec1_clks1 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 12
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %entry.vcodec_clks_get.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vcodec_clks_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_get.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %vcodec1_clks1, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %7) #8
  %arrayidx3.i = getelementptr ptr, ptr %vcodec1_clks, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  br label %vcodec_clks_get.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %10 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcodec_clks_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vcodec_clks_get.exit_crit_edge

for.inc.i.vcodec_clks_get.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_get.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vcodec_clks_get.exit:                             ; preds = %for.inc.i.vcodec_clks_get.exit_crit_edge, %if.then6.i, %entry.vcodec_clks_get.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then6.i ], [ 0, %entry.vcodec_clks_get.exit_crit_edge ], [ 0, %for.inc.i.vcodec_clks_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_power_v3(ptr nocapture noundef readonly %dev, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wrapper_base.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wrapper_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wrapper_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  %vcodec1_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @vcodec_clks_enable(ptr noundef %1, ptr noundef %vcodec1_clks)
  br label %if.end

if.else:                                          ; preds = %entry
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res1.i, align 4
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not3.i = icmp eq i32 %7, 0
  br i1 %tobool.not3.i, label %if.else.if.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %7, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %i.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %vcodec1_clks, i32 %dec.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %if.else.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ]
  %10 = ptrtoint ptr %wrapper_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrapper_base.i, align 4
  %add.ptr2.i10 = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 16777216) #8, !srcloc !69
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcodec_clks_enable(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %clks) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1, align 4
  %vcodec_clks_num = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vcodec_clks_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vcodec_clks_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021)
  %tobool2.not22 = icmp eq i32 %i.021, 0
  br i1 %tobool2.not22, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.while.body_crit_edge

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw i32 %i.021, 1
  %6 = ptrtoint ptr %vcodec_clks_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcodec_clks_num, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %i.123 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.021, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec = add i32 %i.123, -1
  %arrayidx3 = getelementptr ptr, ptr %clks, i32 %dec
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_get_v4(ptr nocapture noundef %core) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %res2 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res2, align 4
  %clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clks_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not.i = icmp eq i32 %5, 0
  br i1 %cmp23.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %6 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clks_num.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.venus_resources, ptr %3, i32 0, i32 9, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %9) #8
  %arrayidx4.i = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %i.024.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx4.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %core_clks_get.exit, label %for.cond.i

core_clks_get.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %vcodec_pmdomains_num = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vcodec_pmdomains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @legacy_binding, align 1
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end.do.end_crit_edge
  %.b8182 = load i1, ptr @legacy_binding, align 1
  %cond = select i1 %.b8182, ptr @.str.19, ptr @.str.20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #11
  %vcodec0_clks = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 10
  %vcodec0_clks7 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res2, align 4
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.not.i = icmp eq i32 %17, 0
  br i1 %cmp20.not.i, label %do.end.if.end12_crit_edge, label %do.end.for.body.i86_crit_edge

do.end.for.body.i86_crit_edge:                    ; preds = %do.end
  br label %for.body.i86

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body.i86:                                     ; preds = %for.inc.i.for.body.i86_crit_edge, %do.end.for.body.i86_crit_edge
  %i.021.i = phi i32 [ %inc.i89, %for.inc.i.for.body.i86_crit_edge ], [ 0, %do.end.for.body.i86_crit_edge ]
  %arrayidx.i85 = getelementptr ptr, ptr %vcodec0_clks7, i32 %i.021.i
  %18 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i85, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i86.for.inc.i_crit_edge, label %if.end.i

for.body.i86.for.inc.i_crit_edge:                 ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i86
  %call.i87 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull %19) #8
  %arrayidx3.i = getelementptr ptr, ptr %vcodec0_clks, i32 %i.021.i
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i87, ptr %arrayidx3.i, align 4
  %cmp.i.i88 = icmp ugt ptr %call.i87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i88, label %vcodec_clks_get.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i86.for.inc.i_crit_edge
  %inc.i89 = add nuw i32 %i.021.i, 1
  %21 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vcodec_clks_num.i, align 4
  %cmp.i90 = icmp ult i32 %inc.i89, %22
  br i1 %cmp.i90, label %for.inc.i.for.body.i86_crit_edge, label %for.inc.i.if.end12_crit_edge

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.i.for.body.i86_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i86

vcodec_clks_get.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i87 to i32
  br label %cleanup

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %vcodec1_clks = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 11
  %vcodec1_clks14 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res2, align 4
  %vcodec_clks_num.i93 = getelementptr inbounds %struct.venus_resources, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %vcodec_clks_num.i93 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vcodec_clks_num.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp20.not.i94 = icmp eq i32 %27, 0
  br i1 %cmp20.not.i94, label %if.end12.if.end19_crit_edge, label %if.end12.for.body.i98_crit_edge

if.end12.for.body.i98_crit_edge:                  ; preds = %if.end12
  br label %for.body.i98

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.body.i98:                                     ; preds = %for.inc.i106.for.body.i98_crit_edge, %if.end12.for.body.i98_crit_edge
  %i.021.i95 = phi i32 [ %inc.i104, %for.inc.i106.for.body.i98_crit_edge ], [ 0, %if.end12.for.body.i98_crit_edge ]
  %arrayidx.i96 = getelementptr ptr, ptr %vcodec1_clks14, i32 %i.021.i95
  %28 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i96, align 4
  %tobool.not.i97 = icmp eq ptr %29, null
  br i1 %tobool.not.i97, label %for.body.i98.for.inc.i106_crit_edge, label %if.end.i102

for.body.i98.for.inc.i106_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i106

if.end.i102:                                      ; preds = %for.body.i98
  %call.i99 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull %29) #8
  %arrayidx3.i100 = getelementptr ptr, ptr %vcodec1_clks, i32 %i.021.i95
  %30 = ptrtoint ptr %arrayidx3.i100 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i99, ptr %arrayidx3.i100, align 4
  %cmp.i.i101 = icmp ugt ptr %call.i99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i101, label %vcodec_clks_get.exit108, label %if.end.i102.for.inc.i106_crit_edge

if.end.i102.for.inc.i106_crit_edge:               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i106

for.inc.i106:                                     ; preds = %if.end.i102.for.inc.i106_crit_edge, %for.body.i98.for.inc.i106_crit_edge
  %inc.i104 = add nuw i32 %i.021.i95, 1
  %31 = ptrtoint ptr %vcodec_clks_num.i93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vcodec_clks_num.i93, align 4
  %cmp.i105 = icmp ult i32 %inc.i104, %32
  br i1 %cmp.i105, label %for.inc.i106.for.body.i98_crit_edge, label %for.inc.i106.if.end19_crit_edge

for.inc.i106.if.end19_crit_edge:                  ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.inc.i106.for.body.i98_crit_edge:              ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i98

vcodec_clks_get.exit108:                          ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call.i99 to i32
  br label %cleanup

if.end19:                                         ; preds = %for.inc.i106.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %call20 = tail call fastcc i32 @core_resets_get(ptr noundef %core)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %.b83 = load i1, ptr @legacy_binding, align 1
  br i1 %.b83, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %call27 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %1, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %34 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res2, align 4
  %opp_pmdomain = getelementptr inbounds %struct.venus_resources, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %opp_pmdomain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opp_pmdomain, align 8
  %tobool32.not = icmp eq ptr %37, null
  br i1 %tobool32.not, label %if.end30.if.end43_crit_edge, label %if.then33

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %1) #8
  %38 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call34, label %do.end40 [
    i32 0, label %if.then36
    i32 -19, label %if.then33.if.end43_crit_edge
  ]

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %has_opp_table = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 14
  %39 = ptrtoint ptr %has_opp_table to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %has_opp_table, align 4
  br label %if.end43

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end43:                                         ; preds = %if.then36, %if.then33.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %call44 = tail call fastcc i32 @vcodec_domains_get(ptr noundef %core)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end40, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %vcodec_clks_get.exit108, %vcodec_clks_get.exit, %core_clks_get.exit
  %retval.0 = phi i32 [ %call34, %do.end40 ], [ %11, %core_clks_get.exit ], [ %23, %vcodec_clks_get.exit ], [ %33, %vcodec_clks_get.exit108 ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call44, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @core_put_v4(ptr nocapture noundef readonly %core) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @legacy_binding, align 1
  br i1 %.b1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1.i, align 4
  %vcodec_pmdomains_num.i = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vcodec_pmdomains_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vcodec_pmdomains_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.skip_pmdomains.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.skip_pmdomains.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pmdomains.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.venus_core, ptr %core, i32 0, i32 15, i32 %i.025.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %5, i1 noundef zeroext true) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %6 = ptrtoint ptr %vcodec_pmdomains_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcodec_pmdomains_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.skip_pmdomains.i_crit_edge

for.inc.i.skip_pmdomains.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pmdomains.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

skip_pmdomains.i:                                 ; preds = %for.inc.i.skip_pmdomains.i_crit_edge, %if.end.skip_pmdomains.i_crit_edge
  %has_opp_table.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 14
  %8 = ptrtoint ptr %has_opp_table.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_opp_table.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not.i = icmp eq i8 %9, 0
  br i1 %tobool7.not.i, label %skip_pmdomains.i.return_crit_edge, label %if.end9.i

skip_pmdomains.i.return_crit_edge:                ; preds = %skip_pmdomains.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9.i:                                        ; preds = %skip_pmdomains.i
  %opp_dl_venus.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 16
  %10 = ptrtoint ptr %opp_dl_venus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opp_dl_venus.i, align 4
  %tobool10.not.i = icmp eq ptr %11, null
  br i1 %tobool10.not.i, label %if.end9.i.return_crit_edge, label %if.then11.i

if.end9.i.return_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_link_del(ptr noundef nonnull %11) #8
  br label %return

return:                                           ; preds = %if.then11.i, %if.end9.i.return_crit_edge, %skip_pmdomains.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_power_v4(ptr nocapture noundef readonly %core, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pmdomains = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 15
  %2 = ptrtoint ptr %pmdomains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmdomains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.then
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %if.then2
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  br label %cleanup

if.end5:                                          ; preds = %if.then2.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %5 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res1.i, align 4
  %resets_num.i = getelementptr inbounds %struct.venus_resources, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %resets_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resets_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end5.if.end13_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.cond.i:                                       ; preds = %if.end5.i
  %inc.i = add nuw i32 %i.023.i, 1
  %9 = ptrtoint ptr %resets_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resets_num.i, align 8
  %cmp.i50 = icmp ult i32 %inc.i, %10
  br i1 %cmp.i50, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end13_crit_edge

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.venus_core, ptr %core, i32 0, i32 18, i32 %i.023.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i51 = tail call i32 @reset_control_assert(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool3.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %for.body.i.if.then8_crit_edge

for.body.i.if.then8_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end5.i:                                        ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 250, i32 noundef 2) #8
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond.i, label %if.end5.i.if.then8_crit_edge

if.end5.i.if.then8_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end5.i.if.then8_crit_edge, %for.body.i.if.then8_crit_edge
  %retval.0.i52 = phi i32 [ %call8.i, %if.end5.i.if.then8_crit_edge ], [ %call.i51, %for.body.i.if.then8_crit_edge ]
  br i1 %tobool.not, label %if.then8.cleanup_crit_edge, label %if.then10

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i53 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 4) #8
  br label %cleanup

if.end13:                                         ; preds = %for.cond.i.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %call14 = tail call fastcc i32 @core_clks_enable(ptr noundef %core)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  %brmerge = select i1 %cmp15, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 4) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %opp_pmdomain = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 17
  %15 = ptrtoint ptr %opp_pmdomain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %opp_pmdomain, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.then21

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %1, i32 noundef 0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else.if.end23_crit_edge
  %res1.i55 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %17 = ptrtoint ptr %res1.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res1.i55, align 4
  %clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %clks_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clks_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not4.i = icmp eq i32 %20, 0
  br i1 %tobool.not4.i, label %if.end23.core_clks_disable.exit_crit_edge, label %if.end23.while.body.i_crit_edge

if.end23.while.body.i_crit_edge:                  ; preds = %if.end23
  br label %while.body.i

if.end23.core_clks_disable.exit_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_clks_disable.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end23.while.body.i_crit_edge
  %i.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %20, %if.end23.while.body.i_crit_edge ]
  %dec.i = add i32 %i.05.i, -1
  %arrayidx.i56 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 9, i32 %dec.i
  %21 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i56, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  %tobool.not.i57 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i57, label %while.body.i.core_clks_disable.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.core_clks_disable.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_clks_disable.exit

core_clks_disable.exit:                           ; preds = %while.body.i.core_clks_disable.exit_crit_edge, %if.end23.core_clks_disable.exit_crit_edge
  %23 = ptrtoint ptr %res1.i55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res1.i55, align 4
  %resets_num.i59 = getelementptr inbounds %struct.venus_resources, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %resets_num.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resets_num.i59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i60 = icmp eq i32 %26, 0
  br i1 %tobool.not.i60, label %core_clks_disable.exit.core_resets_reset.exit75_crit_edge, label %core_clks_disable.exit.for.body.i70_crit_edge

core_clks_disable.exit.for.body.i70_crit_edge:    ; preds = %core_clks_disable.exit
  br label %for.body.i70

core_clks_disable.exit.core_resets_reset.exit75_crit_edge: ; preds = %core_clks_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_resets_reset.exit75

for.cond.i65:                                     ; preds = %if.end5.i73
  %inc.i63 = add nuw i32 %i.023.i66, 1
  %27 = ptrtoint ptr %resets_num.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resets_num.i59, align 8
  %cmp.i64 = icmp ult i32 %inc.i63, %28
  br i1 %cmp.i64, label %for.cond.i65.for.body.i70_crit_edge, label %for.cond.i65.core_resets_reset.exit75_crit_edge

for.cond.i65.core_resets_reset.exit75_crit_edge:  ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_resets_reset.exit75

for.cond.i65.for.body.i70_crit_edge:              ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.cond.i65.for.body.i70_crit_edge, %core_clks_disable.exit.for.body.i70_crit_edge
  %i.023.i66 = phi i32 [ %inc.i63, %for.cond.i65.for.body.i70_crit_edge ], [ 0, %core_clks_disable.exit.for.body.i70_crit_edge ]
  %arrayidx.i67 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 18, i32 %i.023.i66
  %29 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i67, align 4
  %call.i68 = tail call i32 @reset_control_assert(ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool3.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool3.not.i69, label %if.end5.i73, label %for.body.i70.core_resets_reset.exit75_crit_edge

for.body.i70.core_resets_reset.exit75_crit_edge:  ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_resets_reset.exit75

if.end5.i73:                                      ; preds = %for.body.i70
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 250, i32 noundef 2) #8
  %31 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i67, align 4
  %call8.i71 = tail call i32 @reset_control_deassert(ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i71)
  %tobool9.not.i72 = icmp eq i32 %call8.i71, 0
  br i1 %tobool9.not.i72, label %for.cond.i65, label %if.end5.i73.core_resets_reset.exit75_crit_edge

if.end5.i73.core_resets_reset.exit75_crit_edge:   ; preds = %if.end5.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_resets_reset.exit75

core_resets_reset.exit75:                         ; preds = %if.end5.i73.core_resets_reset.exit75_crit_edge, %for.body.i70.core_resets_reset.exit75_crit_edge, %for.cond.i65.core_resets_reset.exit75_crit_edge, %core_clks_disable.exit.core_resets_reset.exit75_crit_edge
  %retval.0.i74 = phi i32 [ 0, %core_clks_disable.exit.core_resets_reset.exit75_crit_edge ], [ %call.i68, %for.body.i70.core_resets_reset.exit75_crit_edge ], [ %call8.i71, %if.end5.i73.core_resets_reset.exit75_crit_edge ], [ 0, %for.cond.i65.core_resets_reset.exit75_crit_edge ]
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %core_resets_reset.exit75.cleanup_crit_edge, label %if.then26

core_resets_reset.exit75.cleanup_crit_edge:       ; preds = %core_resets_reset.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %core_resets_reset.exit75
  call void @__sanitizer_cov_trace_pc() #10
  %call.i76 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %3, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %core_resets_reset.exit75.cleanup_crit_edge, %if.then17, %if.end13.cleanup_crit_edge, %if.then10, %if.then8.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i52, %if.then10 ], [ %retval.0.i52, %if.then8.cleanup_crit_edge ], [ %call14, %if.then17 ], [ %call14, %if.end13.cleanup_crit_edge ], [ %retval.0.i74, %if.then26 ], [ %retval.0.i74, %core_resets_reset.exit75.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_get_v4(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b7 = load i1, ptr @legacy_binding, align 1
  br i1 %.b7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vcodec0_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec0_clks1 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 11
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %vcodec0_clks1, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %7) #8
  %arrayidx3.i = getelementptr ptr, ptr %vcodec0_clks, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %10 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcodec_clks_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then6.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %9, %if.then6.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_put_v4(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %.b5 = load i1, ptr @legacy_binding, align 1
  br i1 %.b5, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec_clks_num6 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venus_core, ptr %1, i32 0, i32 10, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %vcodec_clks_num = getelementptr inbounds %struct.venus_resources, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %vcodec_clks_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vcodec_clks_num, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_power_v4(ptr nocapture noundef readonly %dev, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %.b19 = load i1, ptr @legacy_binding, align 1
  br i1 %.b19, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @vcodec_control_v4(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  %vcodec0_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @vcodec_clks_enable(ptr noundef %1, ptr noundef %vcodec0_clks)
  br label %if.end9

if.else:                                          ; preds = %if.end4
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res1.i, align 4
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not3.i = icmp eq i32 %5, 0
  br i1 %tobool.not3.i, label %if.else.if.end9_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %5, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %i.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %vcodec0_clks, i32 %dec.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end9_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end9_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %while.body.i.if.end9_crit_edge, %if.else.if.end9_crit_edge, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.else.if.end9_crit_edge ], [ 0, %while.body.i.if.end9_crit_edge ]
  %call10 = tail call fastcc i32 @vcodec_control_v4(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_get_v4(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b7 = load i1, ptr @legacy_binding, align 1
  br i1 %.b7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vcodec1_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec1_clks1 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 12
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %vcodec1_clks1, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %7) #8
  %arrayidx3.i = getelementptr ptr, ptr %vcodec1_clks, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i to i32
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %10 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcodec_clks_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then6.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %9, %if.then6.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_put_v4(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %.b5 = load i1, ptr @legacy_binding, align 1
  br i1 %.b5, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %vcodec_clks_num6 = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venus_core, ptr %1, i32 0, i32 11, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %vcodec_clks_num = getelementptr inbounds %struct.venus_resources, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %vcodec_clks_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vcodec_clks_num, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_power_v4(ptr nocapture noundef readonly %dev, i32 noundef %on) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %.b19 = load i1, ptr @legacy_binding, align 1
  br i1 %.b19, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @vcodec_control_v4(ptr noundef %1, i32 noundef 2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  %vcodec1_clks = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @vcodec_clks_enable(ptr noundef %1, ptr noundef %vcodec1_clks)
  br label %if.end9

if.else:                                          ; preds = %if.end4
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res1.i, align 4
  %vcodec_clks_num.i = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vcodec_clks_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcodec_clks_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not3.i = icmp eq i32 %5, 0
  br i1 %tobool.not3.i, label %if.else.if.end9_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %i.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %5, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %i.04.i, -1
  %arrayidx.i = getelementptr ptr, ptr %vcodec1_clks, i32 %dec.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end9_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end9_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %while.body.i.if.end9_crit_edge, %if.else.if.end9_crit_edge, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.else.if.end9_crit_edge ], [ 0, %while.body.i.if.end9_crit_edge ]
  %call10 = tail call fastcc i32 @vcodec_control_v4(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coreid_power_v4(ptr noundef %inst, i32 noundef %on) #1 align 64 {
entry:
  %venc_mode.i.i.i = alloca i32, align 4
  %venc_mode.i.i = alloca i32, align 4
  %min_coreid.i = alloca i32, align 4
  %min_load.i = alloca i32, align 4
  %min_lp_coreid.i = alloca i32, align 4
  %min_lp_load.i = alloca i32, align 4
  %cu.i = alloca %struct.hfi_videocores_usage_type, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %.b21 = load i1, ptr @legacy_binding, align 1
  br i1 %.b21, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %on)
  %cmp = icmp eq i32 %on, 1
  br i1 %cmp, label %if.end4.i, label %if.else

if.end4.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_coreid.i) #8
  %2 = ptrtoint ptr %min_coreid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %min_coreid.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_load.i) #8
  %3 = ptrtoint ptr %min_load.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %min_load.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_lp_coreid.i) #8
  %4 = ptrtoint ptr %min_lp_coreid.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %min_lp_coreid.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_lp_load.i) #8
  %5 = ptrtoint ptr %min_lp_load.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %min_lp_load.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cu.i) #8
  %clk_data.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3
  %6 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not.i = icmp eq i32 %7, 0
  br i1 %cmp5.not.i, label %if.end7.i, label %decide_core.exit.thread

decide_core.exit.thread:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_coreid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_coreid.i) #8
  br label %if.end5

if.end7.i:                                        ; preds = %if.end4.i
  %tobool.not.i.i = icmp eq ptr %inst, null
  br i1 %tobool.not.i.i, label %if.end7.i.load_per_instance.exit88.i_crit_edge, label %lor.lhs.false.i.i

if.end7.i.load_per_instance.exit88.i_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit88.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i
  %state.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 50
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i, align 4
  %10 = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %if.end.i86.i, label %lor.lhs.false.i.i.load_per_instance.exit88.i_crit_edge

lor.lhs.false.i.i.load_per_instance.exit88.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit88.i

if.end.i86.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %width.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 15
  %12 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width.i.i, align 8
  %add.i.i = add i32 %13, 15
  %div13.i.i = lshr i32 %add.i.i, 4
  %height.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 16
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 4
  %add3.i.i = add i32 %15, 15
  %div514.i.i = lshr i32 %add3.i.i, 4
  %mul.i.i = mul i32 %div514.i.i, %div13.i.i
  %fps.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 31
  %16 = ptrtoint ptr %fps.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fps.i.i, align 8
  %18 = trunc i64 %17 to i32
  %conv7.i.i = mul i32 %mul.i.i, %18
  %vpp_freq93.i58 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %vpp_freq93.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vpp_freq93.i58, align 8
  %mul94.i59 = mul i32 %conv7.i.i, %20
  br label %load_per_instance.exit88.i

load_per_instance.exit88.i:                       ; preds = %if.end.i86.i, %lor.lhs.false.i.i.load_per_instance.exit88.i_crit_edge, %if.end7.i.load_per_instance.exit88.i_crit_edge
  %mul96.i = phi i32 [ %mul94.i59, %if.end.i86.i ], [ 0, %if.end7.i.load_per_instance.exit88.i_crit_edge ], [ 0, %lor.lhs.false.i.i.load_per_instance.exit88.i_crit_edge ]
  %retval.0.i87.i = phi i32 [ %conv7.i.i, %if.end.i86.i ], [ 0, %if.end7.i.load_per_instance.exit88.i_crit_edge ], [ 0, %lor.lhs.false.i.i.load_per_instance.exit88.i_crit_edge ]
  %low_power_freq.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %low_power_freq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %low_power_freq.i, align 8
  %mul11.i = mul i32 %22, %retval.0.i87.i
  %res.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %23 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res.i, align 4
  %freq_tbl.i = getelementptr inbounds %struct.venus_resources, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %freq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %freq_tbl.i, align 8
  %freq.i = getelementptr inbounds %struct.freq_tbl, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freq.i, align 4
  call fastcc void @min_loaded_core(ptr noundef %inst, ptr noundef nonnull %min_coreid.i, ptr noundef nonnull %min_load.i, i1 noundef zeroext false) #8
  call fastcc void @min_loaded_core(ptr noundef %inst, ptr noundef nonnull %min_lp_coreid.i, ptr noundef nonnull %min_lp_load.i, i1 noundef zeroext true) #8
  %29 = ptrtoint ptr %min_load.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_load.i, align 4
  %add.i = add i32 %30, %mul96.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %28)
  %cmp12.not.i = icmp ugt i32 %add.i, %28
  br i1 %cmp12.not.i, label %if.else17.i, label %if.then13.i

if.then13.i:                                      ; preds = %load_per_instance.exit88.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %min_coreid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_coreid.i, align 4
  %33 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %clk_data.i, align 8
  %34 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %cu.i, align 4
  br label %decide_core.exit

if.else17.i:                                      ; preds = %load_per_instance.exit88.i
  %add18.i = add i32 %30, %mul11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %28)
  %cmp19.not.i = icmp ugt i32 %add18.i, %28
  br i1 %cmp19.not.i, label %if.else25.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else17.i
  %35 = ptrtoint ptr %min_coreid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_coreid.i, align 4
  %37 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %clk_data.i, align 8
  %38 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %cu.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %venc_mode.i.i) #8
  %session_type.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %39 = ptrtoint ptr %session_type.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %session_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.not.i.i = icmp eq i32 %40, 1
  br i1 %cmp.not.i.i, label %if.end.i89.i, label %if.then20.i.power_save_mode_enable.exit.i_crit_edge

if.then20.i.power_save_mode_enable.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_save_mode_enable.exit.i

if.end.i89.i:                                     ; preds = %if.then20.i
  %bitrate_mode.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 3
  %41 = ptrtoint ptr %bitrate_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bitrate_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp1.i.i = icmp eq i32 %42, 2
  %spec.select.i.i = select i1 %cmp1.i.i, i32 1, i32 2
  %43 = ptrtoint ptr %venc_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i.i, ptr %venc_mode.i.i, align 4
  %call.i.i = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 33579022, ptr noundef nonnull %venc_mode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i89.i.power_save_mode_enable.exit.i_crit_edge

if.end.i89.i.power_save_mode_enable.exit.i_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_save_mode_enable.exit.i

if.end6.i.i:                                      ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags8.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 62
  %44 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags8.i.i, align 8
  %and.i.i = and i32 %45, -2
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %masksel.i.i = zext i1 %not.cmp1.i.i to i32
  %cond9.i.i = or i32 %and.i.i, %masksel.i.i
  store i32 %cond9.i.i, ptr %flags8.i.i, align 8
  br label %power_save_mode_enable.exit.i

power_save_mode_enable.exit.i:                    ; preds = %if.end6.i.i, %if.end.i89.i.power_save_mode_enable.exit.i_crit_edge, %if.then20.i.power_save_mode_enable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %venc_mode.i.i) #8
  br label %decide_core.exit

if.else25.i:                                      ; preds = %if.else17.i
  %46 = ptrtoint ptr %min_lp_load.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %min_lp_load.i, align 4
  %add26.i = add i32 %47, %mul11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %28)
  %cmp27.not.i = icmp ugt i32 %add26.i, %28
  br i1 %cmp27.not.i, label %decide_core.exit.thread63, label %if.then28.i

if.then28.i:                                      ; preds = %if.else25.i
  %48 = ptrtoint ptr %min_lp_coreid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min_lp_coreid.i, align 4
  %50 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %clk_data.i, align 8
  %51 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %cu.i, align 4
  %lock.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #8
  %instances.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 29
  %52 = ptrtoint ptr %instances.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %inst.01.i.i = load ptr, ptr %instances.i.i, align 4
  %cmp.not2.i.i = icmp eq ptr %inst.01.i.i, %instances.i.i
  br i1 %cmp.not2.i.i, label %if.then28.i.move_core_to_power_save_mode.exit.i_crit_edge, label %if.then28.i.for.body.i.i_crit_edge

if.then28.i.for.body.i.i_crit_edge:               ; preds = %if.then28.i
  br label %for.body.i.i

if.then28.i.move_core_to_power_save_mode.exit.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_core_to_power_save_mode.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then28.i.for.body.i.i_crit_edge
  %inst.03.i.i = phi ptr [ %inst.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %inst.01.i.i, %if.then28.i.for.body.i.i_crit_edge ]
  %clk_data.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.03.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %clk_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clk_data.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %49)
  %cmp3.i.i = icmp eq i32 %54, %49
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %session_type.i90.i = getelementptr inbounds %struct.venus_inst, ptr %inst.03.i.i, i32 0, i32 55
  %55 = ptrtoint ptr %session_type.i90.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %session_type.i90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp4.i.i = icmp eq i32 %56, 1
  br i1 %cmp4.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %venc_mode.i.i.i) #8
  %bitrate_mode.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.03.i.i, i32 0, i32 11, i32 0, i32 3
  %57 = ptrtoint ptr %bitrate_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bitrate_mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp1.i.i.i = icmp eq i32 %58, 2
  %spec.select.i.i.i = select i1 %cmp1.i.i.i, i32 1, i32 2
  %59 = ptrtoint ptr %venc_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select.i.i.i, ptr %venc_mode.i.i.i, align 4
  %call.i.i.i = call i32 @hfi_session_set_property(ptr noundef %inst.03.i.i, i32 noundef 33579022, ptr noundef nonnull %venc_mode.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.power_save_mode_enable.exit.i.i_crit_edge

if.end.i.i.i.power_save_mode_enable.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_save_mode_enable.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags8.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst.03.i.i, i32 0, i32 62
  %60 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags8.i.i.i, align 8
  %and.i.i.i = and i32 %61, -2
  %not.cmp1.i.i.i = xor i1 %cmp1.i.i.i, true
  %masksel.i.i.i = zext i1 %not.cmp1.i.i.i to i32
  %cond9.i.i.i = or i32 %and.i.i.i, %masksel.i.i.i
  store i32 %cond9.i.i.i, ptr %flags8.i.i.i, align 8
  br label %power_save_mode_enable.exit.i.i

power_save_mode_enable.exit.i.i:                  ; preds = %if.end6.i.i.i, %if.end.i.i.i.power_save_mode_enable.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %venc_mode.i.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %power_save_mode_enable.exit.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %62 = ptrtoint ptr %inst.03.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %inst.0.i.i = load ptr, ptr %inst.03.i.i, align 4
  %cmp.not.i91.i = icmp eq ptr %inst.0.i.i, %instances.i.i
  br i1 %cmp.not.i91.i, label %for.inc.i.i.move_core_to_power_save_mode.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.move_core_to_power_save_mode.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_core_to_power_save_mode.exit.i

move_core_to_power_save_mode.exit.i:              ; preds = %for.inc.i.i.move_core_to_power_save_mode.exit.i_crit_edge, %if.then28.i.move_core_to_power_save_mode.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #8
  br label %decide_core.exit

decide_core.exit.thread63:                        ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.24) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_coreid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_coreid.i) #8
  br label %cleanup

decide_core.exit:                                 ; preds = %move_core_to_power_save_mode.exit.i, %power_save_mode_enable.exit.i, %if.then13.i
  %call37.i = call i32 @hfi_session_set_property(ptr noundef %inst, i32 noundef 8194, ptr noundef nonnull %cu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_lp_coreid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_load.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_coreid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool3.not = icmp eq i32 %call37.i, 0
  br i1 %tobool3.not, label %decide_core.exit.if.end5_crit_edge, label %decide_core.exit.cleanup_crit_edge

decide_core.exit.cleanup_crit_edge:               ; preds = %decide_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

decide_core.exit.if.end5_crit_edge:               ; preds = %decide_core.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %decide_core.exit.if.end5_crit_edge, %decide_core.exit.thread
  %lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %65 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %core1, align 4
  %core_acquired.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 57
  %67 = ptrtoint ptr %core_acquired.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i = load i8, ptr %core_acquired.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.acquire_core.exit_crit_edge

if.end5.acquire_core.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end.i:                                         ; preds = %if.end5
  %bf.set.i = or i8 %bf.load.i, -128
  %68 = ptrtoint ptr %core_acquired.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %bf.set.i, ptr %core_acquired.i, align 8
  %69 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clk_data.i, align 8
  %and.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  %core0_usage_count.i = getelementptr inbounds %struct.venus_core, ptr %66, i32 0, i32 47
  %71 = ptrtoint ptr %core0_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %core0_usage_count.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %core0_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool6.not.i = icmp eq i32 %72, 0
  br i1 %tobool6.not.i, label %if.then5.i.if.end9.i_crit_edge, label %if.then5.i.acquire_core.exit_crit_edge

if.then5.i.acquire_core.exit_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %coreid_mask.0.i = phi i32 [ 0, %if.end.i.if.end9.i_crit_edge ], [ 1, %if.then5.i.if.end9.i_crit_edge ]
  %73 = ptrtoint ptr %clk_data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %clk_data.i, align 8
  %and12.i = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end9.i.if.end19.i_crit_edge, label %if.then14.i

if.end9.i.if.end19.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end9.i
  %core1_usage_count.i = getelementptr inbounds %struct.venus_core, ptr %66, i32 0, i32 48
  %75 = ptrtoint ptr %core1_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %core1_usage_count.i, align 4
  %inc15.i = add i32 %76, 1
  store i32 %inc15.i, ptr %core1_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool16.not.i = icmp eq i32 %76, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.then14.i.acquire_core.exit_crit_edge

if.then14.i.acquire_core.exit_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end18.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %coreid_mask.0.i, 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %if.end9.i.if.end19.i_crit_edge
  %coreid_mask.1.i = phi i32 [ %or.i, %if.end18.i ], [ %coreid_mask.0.i, %if.end9.i.if.end19.i_crit_edge ]
  %and.i.i24 = and i32 %coreid_mask.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %and.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.end19.i.if.end14.i.i_crit_edge, label %if.then.i.i

if.end19.i.if.end14.i.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  %arrayidx.i.i = getelementptr %struct.venus_core, ptr %66, i32 0, i32 15, i32 1
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i26 = call i32 @__pm_runtime_resume(ptr noundef %78, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i26)
  %cmp.i.i = icmp slt i32 %call.i.i.i26, 0
  br i1 %cmp.i.i, label %if.then.i.i.acquire_core.exit_crit_edge, label %if.end.i.i27

if.then.i.i.acquire_core.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end.i.i27:                                     ; preds = %if.then.i.i
  %call2.i.i = call fastcc i32 @vcodec_control_v4(ptr noundef %66, i32 noundef 1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i27.acquire_core.exit_crit_edge

if.end.i.i27.acquire_core.exit_crit_edge:         ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end5.i.i:                                      ; preds = %if.end.i.i27
  %vcodec0_clks.i.i = getelementptr inbounds %struct.venus_core, ptr %66, i32 0, i32 10
  %call6.i.i = call fastcc i32 @vcodec_clks_enable(ptr noundef %66, ptr noundef %vcodec0_clks.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.acquire_core.exit_crit_edge

if.end5.i.i.acquire_core.exit_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %call10.i.i = call fastcc i32 @vcodec_control_v4(ptr noundef %66, i32 noundef 1, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.end9.i.i.acquire_core.exit_crit_edge, label %if.end9.i.i.if.end14.i.i_crit_edge

if.end9.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.end9.i.i.acquire_core.exit_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i.if.end14.i.i_crit_edge, %if.end19.i.if.end14.i.i_crit_edge
  %and15.i.i = and i32 %coreid_mask.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end37.i.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %arrayidx19.i.i = getelementptr %struct.venus_core, ptr %66, i32 0, i32 15, i32 2
  %79 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx19.i.i, align 4
  %call.i63.i.i = call i32 @__pm_runtime_resume(ptr noundef %80, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i.i)
  %cmp21.i.i = icmp slt i32 %call.i63.i.i, 0
  br i1 %cmp21.i.i, label %if.then17.i.i.acquire_core.exit_crit_edge, label %if.end23.i.i

if.then17.i.i.acquire_core.exit_crit_edge:        ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end23.i.i:                                     ; preds = %if.then17.i.i
  %call24.i.i = call fastcc i32 @vcodec_control_v4(ptr noundef %66, i32 noundef 2, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end23.i.i.acquire_core.exit_crit_edge

if.end23.i.i.acquire_core.exit_crit_edge:         ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end27.i.i:                                     ; preds = %if.end23.i.i
  %vcodec1_clks.i.i = getelementptr inbounds %struct.venus_core, ptr %66, i32 0, i32 11
  %call29.i.i = call fastcc i32 @vcodec_clks_enable(ptr noundef %66, ptr noundef %vcodec1_clks.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %if.end27.i.i.acquire_core.exit_crit_edge

if.end27.i.i.acquire_core.exit_crit_edge:         ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end32.i.i:                                     ; preds = %if.end27.i.i
  %call33.i.i = call fastcc i32 @vcodec_control_v4(ptr noundef %66, i32 noundef 2, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %if.end32.i.i.acquire_core.exit_crit_edge, label %if.end32.i.i.if.end37.i.i_crit_edge

if.end32.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.end32.i.i.acquire_core.exit_crit_edge:         ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %acquire_core.exit

if.end37.i.i:                                     ; preds = %if.end32.i.i.if.end37.i.i_crit_edge, %if.end14.i.i.if.end37.i.i_crit_edge
  br label %acquire_core.exit

acquire_core.exit:                                ; preds = %if.end37.i.i, %if.end32.i.i.acquire_core.exit_crit_edge, %if.end27.i.i.acquire_core.exit_crit_edge, %if.end23.i.i.acquire_core.exit_crit_edge, %if.then17.i.i.acquire_core.exit_crit_edge, %if.end9.i.i.acquire_core.exit_crit_edge, %if.end5.i.i.acquire_core.exit_crit_edge, %if.end.i.i27.acquire_core.exit_crit_edge, %if.then.i.i.acquire_core.exit_crit_edge, %if.then14.i.acquire_core.exit_crit_edge, %if.then5.i.acquire_core.exit_crit_edge, %if.end5.acquire_core.exit_crit_edge
  %retval.0.i28 = phi i32 [ 0, %if.end5.acquire_core.exit_crit_edge ], [ 0, %if.then5.i.acquire_core.exit_crit_edge ], [ 0, %if.then14.i.acquire_core.exit_crit_edge ], [ 0, %if.end37.i.i ], [ %call.i.i.i26, %if.then.i.i.acquire_core.exit_crit_edge ], [ %call2.i.i, %if.end.i.i27.acquire_core.exit_crit_edge ], [ %call6.i.i, %if.end5.i.i.acquire_core.exit_crit_edge ], [ %call10.i.i, %if.end9.i.i.acquire_core.exit_crit_edge ], [ %call.i63.i.i, %if.then17.i.i.acquire_core.exit_crit_edge ], [ %call24.i.i, %if.end23.i.i.acquire_core.exit_crit_edge ], [ %call29.i.i, %if.end27.i.i.acquire_core.exit_crit_edge ], [ %call33.i.i, %if.end32.i.i.acquire_core.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %lock8 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock8, i32 noundef 0) #8
  %81 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core1, align 4
  %core_acquired.i30 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 57
  %83 = ptrtoint ptr %core_acquired.i30 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i31 = load i8, ptr %core_acquired.i30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i31)
  %tobool.not.i32 = icmp sgt i8 %bf.load.i31, -1
  br i1 %tobool.not.i32, label %if.else.release_core.exit_crit_edge, label %if.end.i35

if.else.release_core.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end.i35:                                       ; preds = %if.else
  %clk_data.i33 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3
  %84 = ptrtoint ptr %clk_data.i33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %clk_data.i33, align 8
  %and.i34 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool2.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool2.not.i, label %if.end.i35.if.end7.i39_crit_edge, label %if.then3.i

if.end.i35.if.end7.i39_crit_edge:                 ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i39

if.then3.i:                                       ; preds = %if.end.i35
  %core0_usage_count.i36 = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 47
  %86 = ptrtoint ptr %core0_usage_count.i36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %core0_usage_count.i36, align 4
  %dec.i = add i32 %87, -1
  store i32 %dec.i, ptr %core0_usage_count.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i37 = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i37, label %if.then3.i.if.end7.i39_crit_edge, label %if.then3.i.done.i55_crit_edge

if.then3.i.done.i55_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i55

if.then3.i.if.end7.i39_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i39

if.end7.i39:                                      ; preds = %if.then3.i.if.end7.i39_crit_edge, %if.end.i35.if.end7.i39_crit_edge
  %coreid_mask.0.i38 = phi i32 [ 0, %if.end.i35.if.end7.i39_crit_edge ], [ 1, %if.then3.i.if.end7.i39_crit_edge ]
  %88 = ptrtoint ptr %clk_data.i33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %clk_data.i33, align 8
  %and10.i = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i39.if.end17.i_crit_edge, label %if.then12.i

if.end7.i39.if.end17.i_crit_edge:                 ; preds = %if.end7.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end7.i39
  %core1_usage_count.i40 = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 48
  %90 = ptrtoint ptr %core1_usage_count.i40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %core1_usage_count.i40, align 4
  %dec13.i = add i32 %91, -1
  store i32 %dec13.i, ptr %core1_usage_count.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec13.i)
  %tobool14.not.i = icmp eq i32 %dec13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then12.i.done.i55_crit_edge

if.then12.i.done.i55_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i55

if.end16.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i41 = or i32 %coreid_mask.0.i38, 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end7.i39.if.end17.i_crit_edge
  %coreid_mask.1.i42 = phi i32 [ %or.i41, %if.end16.i ], [ %coreid_mask.0.i38, %if.end7.i39.if.end17.i_crit_edge ]
  %and.i.i43 = and i32 %coreid_mask.1.i42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end17.i.if.end10.i.i_crit_edge, label %if.then.i.i46

if.end17.i.if.end10.i.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i46:                                    ; preds = %if.end17.i
  %call.i.i45 = tail call fastcc i32 @vcodec_control_v4(ptr noundef %82, i32 noundef 1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %tobool1.not.i.i = icmp eq i32 %call.i.i45, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i48, label %if.then.i.i46.release_core.exit_crit_edge

if.then.i.i46.release_core.exit_crit_edge:        ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end.i.i48:                                     ; preds = %if.then.i.i46
  %vcodec0_clks.i.i47 = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 10
  %res1.i.i.i = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 22
  %92 = ptrtoint ptr %res1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %res1.i.i.i, align 4
  %vcodec_clks_num.i.i.i = getelementptr inbounds %struct.venus_resources, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %vcodec_clks_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vcodec_clks_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not3.i.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not3.i.i.i, label %if.end.i.i48.vcodec_clks_disable.exit.i.i_crit_edge, label %if.end.i.i48.while.body.i.i.i_crit_edge

if.end.i.i48.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i48
  br label %while.body.i.i.i

if.end.i.i48.vcodec_clks_disable.exit.i.i_crit_edge: ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_disable.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i48.while.body.i.i.i_crit_edge
  %i.04.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %95, %if.end.i.i48.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %i.04.i.i.i, -1
  %arrayidx.i.i.i = getelementptr ptr, ptr %vcodec0_clks.i.i47, i32 %dec.i.i.i
  %96 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void @clk_disable(ptr noundef %97) #8
  tail call void @clk_unprepare(ptr noundef %97) #8
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.vcodec_clks_disable.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.body.i.i.i.vcodec_clks_disable.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_disable.exit.i.i

vcodec_clks_disable.exit.i.i:                     ; preds = %while.body.i.i.i.vcodec_clks_disable.exit.i.i_crit_edge, %if.end.i.i48.vcodec_clks_disable.exit.i.i_crit_edge
  %call3.i.i = tail call fastcc i32 @vcodec_control_v4(ptr noundef %82, i32 noundef 1, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i49 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i49, label %if.end6.i.i53, label %vcodec_clks_disable.exit.i.i.release_core.exit_crit_edge

vcodec_clks_disable.exit.i.i.release_core.exit_crit_edge: ; preds = %vcodec_clks_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end6.i.i53:                                    ; preds = %vcodec_clks_disable.exit.i.i
  %arrayidx.i.i50 = getelementptr %struct.venus_core, ptr %82, i32 0, i32 15, i32 1
  %98 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i50, align 4
  %call.i.i.i51 = tail call i32 @__pm_runtime_idle(ptr noundef %99, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i51)
  %cmp.i.i52 = icmp slt i32 %call.i.i.i51, 0
  br i1 %cmp.i.i52, label %if.end6.i.i53.release_core.exit_crit_edge, label %if.end6.i.i53.if.end10.i.i_crit_edge

if.end6.i.i53.if.end10.i.i_crit_edge:             ; preds = %if.end6.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.end6.i.i53.release_core.exit_crit_edge:        ; preds = %if.end6.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end10.i.i:                                     ; preds = %if.end6.i.i53.if.end10.i.i_crit_edge, %if.end17.i.if.end10.i.i_crit_edge
  %and11.i.i = and i32 %coreid_mask.1.i42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.done.i55_crit_edge, label %if.then13.i.i

if.end10.i.i.done.i55_crit_edge:                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i55

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %call14.i.i = tail call fastcc i32 @vcodec_control_v4(ptr noundef %82, i32 noundef 2, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.then13.i.i.release_core.exit_crit_edge

if.then13.i.i.release_core.exit_crit_edge:        ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end17.i.i:                                     ; preds = %if.then13.i.i
  %vcodec1_clks.i.i54 = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 11
  %res1.i51.i.i = getelementptr inbounds %struct.venus_core, ptr %82, i32 0, i32 22
  %100 = ptrtoint ptr %res1.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %res1.i51.i.i, align 4
  %vcodec_clks_num.i52.i.i = getelementptr inbounds %struct.venus_resources, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %vcodec_clks_num.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vcodec_clks_num.i52.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not3.i53.i.i = icmp eq i32 %103, 0
  br i1 %tobool.not3.i53.i.i, label %if.end17.i.i.vcodec_clks_disable.exit59.i.i_crit_edge, label %if.end17.i.i.while.body.i58.i.i_crit_edge

if.end17.i.i.while.body.i58.i.i_crit_edge:        ; preds = %if.end17.i.i
  br label %while.body.i58.i.i

if.end17.i.i.vcodec_clks_disable.exit59.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_disable.exit59.i.i

while.body.i58.i.i:                               ; preds = %while.body.i58.i.i.while.body.i58.i.i_crit_edge, %if.end17.i.i.while.body.i58.i.i_crit_edge
  %i.04.i54.i.i = phi i32 [ %dec.i55.i.i, %while.body.i58.i.i.while.body.i58.i.i_crit_edge ], [ %103, %if.end17.i.i.while.body.i58.i.i_crit_edge ]
  %dec.i55.i.i = add i32 %i.04.i54.i.i, -1
  %arrayidx.i56.i.i = getelementptr ptr, ptr %vcodec1_clks.i.i54, i32 %dec.i55.i.i
  %104 = ptrtoint ptr %arrayidx.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i56.i.i, align 4
  tail call void @clk_disable(ptr noundef %105) #8
  tail call void @clk_unprepare(ptr noundef %105) #8
  %tobool.not.i57.i.i = icmp eq i32 %dec.i55.i.i, 0
  br i1 %tobool.not.i57.i.i, label %while.body.i58.i.i.vcodec_clks_disable.exit59.i.i_crit_edge, label %while.body.i58.i.i.while.body.i58.i.i_crit_edge

while.body.i58.i.i.while.body.i58.i.i_crit_edge:  ; preds = %while.body.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i58.i.i

while.body.i58.i.i.vcodec_clks_disable.exit59.i.i_crit_edge: ; preds = %while.body.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcodec_clks_disable.exit59.i.i

vcodec_clks_disable.exit59.i.i:                   ; preds = %while.body.i58.i.i.vcodec_clks_disable.exit59.i.i_crit_edge, %if.end17.i.i.vcodec_clks_disable.exit59.i.i_crit_edge
  %call19.i.i = tail call fastcc i32 @vcodec_control_v4(ptr noundef %82, i32 noundef 2, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %vcodec_clks_disable.exit59.i.i.release_core.exit_crit_edge

vcodec_clks_disable.exit59.i.i.release_core.exit_crit_edge: ; preds = %vcodec_clks_disable.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

if.end22.i.i:                                     ; preds = %vcodec_clks_disable.exit59.i.i
  %arrayidx24.i.i = getelementptr %struct.venus_core, ptr %82, i32 0, i32 15, i32 2
  %106 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx24.i.i, align 4
  %call.i60.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %107, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i.i)
  %cmp26.i.i = icmp slt i32 %call.i60.i.i, 0
  br i1 %cmp26.i.i, label %if.end22.i.i.release_core.exit_crit_edge, label %if.end22.i.i.done.i55_crit_edge

if.end22.i.i.done.i55_crit_edge:                  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i55

if.end22.i.i.release_core.exit_crit_edge:         ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_core.exit

done.i55:                                         ; preds = %if.end22.i.i.done.i55_crit_edge, %if.end10.i.i.done.i55_crit_edge, %if.then12.i.done.i55_crit_edge, %if.then3.i.done.i55_crit_edge
  %108 = ptrtoint ptr %clk_data.i33 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %clk_data.i33, align 8
  %109 = ptrtoint ptr %core_acquired.i30 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load24.i = load i8, ptr %core_acquired.i30, align 8
  %bf.clear.i = and i8 %bf.load24.i, 127
  store i8 %bf.clear.i, ptr %core_acquired.i30, align 8
  br label %release_core.exit

release_core.exit:                                ; preds = %done.i55, %if.end22.i.i.release_core.exit_crit_edge, %vcodec_clks_disable.exit59.i.i.release_core.exit_crit_edge, %if.then13.i.i.release_core.exit_crit_edge, %if.end6.i.i53.release_core.exit_crit_edge, %vcodec_clks_disable.exit.i.i.release_core.exit_crit_edge, %if.then.i.i46.release_core.exit_crit_edge, %if.else.release_core.exit_crit_edge
  %retval.0.i56 = phi i32 [ 0, %done.i55 ], [ 0, %if.else.release_core.exit_crit_edge ], [ %call.i60.i.i, %if.end22.i.i.release_core.exit_crit_edge ], [ %call19.i.i, %vcodec_clks_disable.exit59.i.i.release_core.exit_crit_edge ], [ %call14.i.i, %if.then13.i.i.release_core.exit_crit_edge ], [ %call.i.i.i51, %if.end6.i.i53.release_core.exit_crit_edge ], [ %call3.i.i, %vcodec_clks_disable.exit.i.i.release_core.exit_crit_edge ], [ %call.i.i45, %if.then.i.i46.release_core.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock8) #8
  br label %cleanup

cleanup:                                          ; preds = %release_core.exit, %acquire_core.exit, %decide_core.exit.cleanup_crit_edge, %decide_core.exit.thread63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call37.i, %decide_core.exit.cleanup_crit_edge ], [ %retval.0.i28, %acquire_core.exit ], [ %retval.0.i56, %release_core.exit ], [ -22, %decide_core.exit.thread63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_scale_v4(ptr noundef %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %freq_tbl = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %freq_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_tbl, align 8
  %freq_tbl_size = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %freq_tbl_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq_tbl_size, align 4
  %dev3 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %num_input_bufs = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 35
  %10 = ptrtoint ptr %num_input_bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_input_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp168.not = icmp eq i32 %11, 0
  br i1 %cmp168.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %filled_len.0169 = phi i32 [ %14, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 30, i32 %i.0170
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %filled_len.0169, i32 %13)
  %inc = add nuw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %filled_len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ]
  %session_type = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %15 = ptrtoint ptr %session_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %session_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp5 = icmp eq i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filled_len.0.lcssa)
  %tobool.not = icmp eq i32 %filled_len.0.lcssa, 0
  %or.cond = select i1 %cmp5, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.end
  %fps1.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 31
  %17 = ptrtoint ptr %fps1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fps1.i, align 8
  %conv.i = trunc i64 %18 to i32
  %tobool.not.i.i = icmp eq ptr %inst, null
  br i1 %tobool.not.i.i, label %if.end.load_per_instance.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.load_per_instance.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 50
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i, align 4
  %21 = add i32 %20, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %if.end.i.i, label %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge

lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %width.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 15
  %23 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width.i.i, align 8
  %add.i.i = add i32 %24, 15
  %div13.i.i = lshr i32 %add.i.i, 4
  %height.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 16
  %25 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i.i, align 4
  %add3.i.i = add i32 %26, 15
  %div514.i.i = lshr i32 %add3.i.i, 4
  %mul.i.i = mul i32 %div13.i.i, %conv.i
  %conv7.i.i = mul i32 %mul.i.i, %div514.i.i
  br label %load_per_instance.exit.i

load_per_instance.exit.i:                         ; preds = %if.end.i.i, %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge, %if.end.load_per_instance.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv7.i.i, %if.end.i.i ], [ 0, %lor.lhs.false.i.i.load_per_instance.exit.i_crit_edge ], [ 0, %if.end.load_per_instance.exit.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 50
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 5
  br i1 %cmp.not.i, label %if.end.i, label %load_per_instance.exit.i.calculate_inst_freq.exit_crit_edge

load_per_instance.exit.i.calculate_inst_freq.exit_crit_edge: ; preds = %load_per_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calculate_inst_freq.exit

if.end.i:                                         ; preds = %load_per_instance.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp3.i = icmp eq i32 %16, 1
  br i1 %cmp3.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 62
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %low_power_freq.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 4
  %vpp_freq7.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 2
  %cond.in.i = select i1 %tobool.not.i, ptr %vpp_freq7.i, ptr %low_power_freq.i
  %31 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond.pn58.i = load i32, ptr %cond.in.i, align 8
  %vpp_freq.059.i = mul i32 %cond.pn58.i, %retval.0.i.i
  %div60.i = udiv i32 %vpp_freq.059.i, 20
  %add61.i = add i32 %div60.i, %vpp_freq.059.i
  %bitrate.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 11, i32 0, i32 4
  %32 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bitrate.i, align 8
  %mul19.i = mul i32 %33, 10
  br label %if.end28.i

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vpp_freq9.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %vpp_freq9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond.pn.i = load i32, ptr %vpp_freq9.i, align 8
  %vpp_freq.0.i = mul i32 %cond.pn.i, %retval.0.i.i
  %div.i = udiv i32 %vpp_freq.0.i, 20
  %add.i = add i32 %div.i, %vpp_freq.0.i
  %mul23.i = mul i32 %filled_len.0.lcssa, 80
  %mul25.i = mul i32 %mul23.i, %conv.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else22.i, %if.then18.i
  %add64.i = phi i32 [ %add61.i, %if.then18.i ], [ %add.i, %if.else22.i ]
  %div20.pn.in.i = phi i32 [ %mul19.i, %if.then18.i ], [ %mul25.i, %if.else22.i ]
  %.pn.in.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %mul1466.i = mul i32 %.pn.i, %retval.0.i.i
  %div20.pn.i = udiv i32 %div20.pn.in.i, 7
  %vsp_freq.0.i = add i32 %mul1466.i, %div20.pn.i
  %36 = tail call i32 @llvm.umax.i32(i32 %add64.i, i32 %vsp_freq.0.i) #8
  br label %calculate_inst_freq.exit

calculate_inst_freq.exit:                         ; preds = %if.end28.i, %load_per_instance.exit.i.calculate_inst_freq.exit_crit_edge
  %retval.0.i160 = phi i32 [ %36, %if.end28.i ], [ 0, %load_per_instance.exit.i.calculate_inst_freq.exit_crit_edge ]
  %freq6 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %freq6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i160, ptr %freq6, align 4
  %lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %instances = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 29
  %38 = ptrtoint ptr %instances to i32
  call void @__asan_load4_noabort(i32 %38)
  %inst.addr.0171 = load ptr, ptr %instances, align 4
  %cmp10.not172 = icmp eq ptr %inst.addr.0171, %instances
  br i1 %cmp10.not172, label %calculate_inst_freq.exit.for.end44_crit_edge, label %calculate_inst_freq.exit.for.body11_crit_edge

calculate_inst_freq.exit.for.body11_crit_edge:    ; preds = %calculate_inst_freq.exit
  br label %for.body11

calculate_inst_freq.exit.for.end44_crit_edge:     ; preds = %calculate_inst_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body11:                                       ; preds = %for.inc38.for.body11_crit_edge, %calculate_inst_freq.exit.for.body11_crit_edge
  %inst.addr.0175 = phi ptr [ %inst.addr.0, %for.inc38.for.body11_crit_edge ], [ %inst.addr.0171, %calculate_inst_freq.exit.for.body11_crit_edge ]
  %freq_core1.0174 = phi i32 [ %freq_core1.1, %for.inc38.for.body11_crit_edge ], [ 0, %calculate_inst_freq.exit.for.body11_crit_edge ]
  %freq_core2.0173 = phi i32 [ %freq_core2.1, %for.inc38.for.body11_crit_edge ], [ 0, %calculate_inst_freq.exit.for.body11_crit_edge ]
  %clk_data12 = getelementptr inbounds %struct.venus_inst, ptr %inst.addr.0175, i32 0, i32 3
  %39 = ptrtoint ptr %clk_data12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clk_data12, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %40, label %for.body11.for.inc38_crit_edge [
    i32 1, label %if.then14
    i32 2, label %if.then20
    i32 3, label %if.then28
  ]

for.body11.for.inc38_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  %freq16 = getelementptr inbounds %struct.venus_inst, ptr %inst.addr.0175, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %freq16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %freq16, align 4
  %add = add i32 %43, %freq_core1.0174
  br label %for.inc38

if.then20:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  %freq22 = getelementptr inbounds %struct.venus_inst, ptr %inst.addr.0175, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %freq22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %freq22, align 4
  %add23 = add i32 %45, %freq_core2.0173
  br label %for.inc38

if.then28:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  %freq30 = getelementptr inbounds %struct.venus_inst, ptr %inst.addr.0175, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %freq30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %freq30, align 4
  %add31 = add i32 %47, %freq_core1.0174
  %add34 = add i32 %47, %freq_core2.0173
  br label %for.inc38

for.inc38:                                        ; preds = %if.then28, %if.then20, %if.then14, %for.body11.for.inc38_crit_edge
  %freq_core2.1 = phi i32 [ %freq_core2.0173, %if.then14 ], [ %add23, %if.then20 ], [ %add34, %if.then28 ], [ %freq_core2.0173, %for.body11.for.inc38_crit_edge ]
  %freq_core1.1 = phi i32 [ %add, %if.then14 ], [ %freq_core1.0174, %if.then20 ], [ %add31, %if.then28 ], [ %freq_core1.0174, %for.body11.for.inc38_crit_edge ]
  %48 = ptrtoint ptr %inst.addr.0175 to i32
  call void @__asan_load4_noabort(i32 %48)
  %inst.addr.0 = load ptr, ptr %inst.addr.0175, align 4
  %cmp10.not = icmp eq ptr %inst.addr.0, %instances
  br i1 %cmp10.not, label %for.inc38.for.end44_crit_edge, label %for.inc38.for.body11_crit_edge

for.inc38.for.body11_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.inc38.for.end44_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.end44:                                        ; preds = %for.inc38.for.end44_crit_edge, %calculate_inst_freq.exit.for.end44_crit_edge
  %freq_core2.0.lcssa = phi i32 [ 0, %calculate_inst_freq.exit.for.end44_crit_edge ], [ %freq_core2.1, %for.inc38.for.end44_crit_edge ]
  %freq_core1.0.lcssa = phi i32 [ 0, %calculate_inst_freq.exit.for.end44_crit_edge ], [ %freq_core1.1, %for.inc38.for.end44_crit_edge ]
  %49 = tail call i32 @llvm.umax.i32(i32 %freq_core1.0.lcssa, i32 %freq_core2.0.lcssa)
  %freq52 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %freq52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %freq52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp53 = icmp ugt i32 %49, %51
  br i1 %cmp53, label %do.body, label %for.end44.for.cond68_crit_edge

for.end44.for.cond68_crit_edge:                   ; preds = %for.end44
  br label %for.cond68

do.body:                                          ; preds = %for.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_scale_v4.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_scale_v4, %if.then61)) #8
          to label %do.end [label %if.then61], !srcloc !68

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %freq52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %freq52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_scale_v4.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %49, i32 noundef %53) #8
  br label %do.end

do.end:                                           ; preds = %if.then61, %do.body
  %54 = ptrtoint ptr %freq52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %freq52, align 4
  br label %set_freq

for.cond68:                                       ; preds = %for.body70.for.cond68_crit_edge, %for.end44.for.cond68_crit_edge
  %i.1.in = phi i32 [ %i.1, %for.body70.for.cond68_crit_edge ], [ %7, %for.end44.for.cond68_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp69 = icmp sgt i32 %i.1, -1
  br i1 %cmp69, label %for.body70, label %for.cond68.set_freq_crit_edge

for.cond68.set_freq_crit_edge:                    ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq

for.body70:                                       ; preds = %for.cond68
  %freq72 = getelementptr %struct.freq_tbl, ptr %5, i32 %i.1, i32 1
  %56 = ptrtoint ptr %freq72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %freq72, align 4
  %cmp73.not = icmp ugt i32 %49, %57
  br i1 %cmp73.not, label %for.body70.for.cond68_crit_edge, label %for.body70.set_freq_crit_edge

for.body70.set_freq_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_freq

for.body70.for.cond68_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68

set_freq:                                         ; preds = %for.body70.set_freq_crit_edge, %for.cond68.set_freq_crit_edge, %do.end
  %freq.0 = phi i32 [ %55, %do.end ], [ %57, %for.body70.set_freq_crit_edge ], [ %49, %for.cond68.set_freq_crit_edge ]
  %58 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %59, i32 noundef %freq.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i161 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i161, label %if.end.i162, label %set_freq.do.end85_crit_edge

set_freq.do.end85_crit_edge:                      ; preds = %set_freq
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

if.end.i162:                                      ; preds = %set_freq
  %vcodec0_clks.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %vcodec0_clks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vcodec0_clks.i, align 4
  %call1.i = tail call i32 @clk_set_rate(ptr noundef %61, i32 noundef %freq.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %core_clks_set_rate.exit, label %if.end.i162.do.end85_crit_edge

if.end.i162.do.end85_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

core_clks_set_rate.exit:                          ; preds = %if.end.i162
  %vcodec1_clks.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 11
  %62 = ptrtoint ptr %vcodec1_clks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vcodec1_clks.i, align 4
  %call6.i = tail call i32 @clk_set_rate(ptr noundef %63, i32 noundef %freq.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool81.not = icmp eq i32 %call6.i, 0
  br i1 %tobool81.not, label %if.end86, label %core_clks_set_rate.exit.do.end85_crit_edge

core_clks_set_rate.exit.do.end85_crit_edge:       ; preds = %core_clks_set_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end85:                                         ; preds = %core_clks_set_rate.exit.do.end85_crit_edge, %if.end.i162.do.end85_crit_edge, %set_freq.do.end85_crit_edge
  %retval.0.i163167 = phi i32 [ %call6.i, %core_clks_set_rate.exit.do.end85_crit_edge ], [ %call1.i, %if.end.i162.do.end85_crit_edge ], [ %call.i, %set_freq.do.end85_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %freq.0, i32 noundef %retval.0.i163167) #11
  br label %exit

if.end86:                                         ; preds = %core_clks_set_rate.exit
  %call87 = tail call fastcc i32 @load_scale_bw(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end86.exit_crit_edge, label %do.end92

if.end86.exit_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %call87) #11
  br label %exit

exit:                                             ; preds = %do.end92, %if.end86.exit_crit_edge, %do.end85
  %ret.0 = phi i32 [ %retval.0.i163167, %do.end85 ], [ %call87, %do.end92 ], [ 0, %if.end86.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_resets_get(ptr nocapture noundef %core) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %res2 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res2, align 4
  %resets_num = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %resets_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resets_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %resets_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resets_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not = icmp eq i32 %7, 0
  br i1 %cmp28.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
  %8 = ptrtoint ptr %resets_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resets_num, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venus_resources, ptr %3, i32 0, i32 18, i32 %i.029
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %1, ptr noundef %11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx5 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 18, i32 %i.029
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %arrayidx5, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcodec_domains_get(ptr nocapture noundef %core) unnamed_addr #1 align 64 {
entry:
  %opp_virt_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opp_virt_dev) #8
  %0 = ptrtoint ptr %opp_virt_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %opp_virt_dev, align 4, !annotation !74
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %res2 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %3 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res2, align 4
  %vcodec_pmdomains_num = getelementptr inbounds %struct.venus_resources, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vcodec_pmdomains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.skip_pmdomains_crit_edge, label %for.cond.preheader

entry.skip_pmdomains_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pmdomains

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vcodec_pmdomains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp68.not = icmp eq i32 %8, 0
  br i1 %cmp68.not, label %for.cond.preheader.skip_pmdomains_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.skip_pmdomains_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pmdomains

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.venus_resources, ptr %4, i32 0, i32 14, i32 %i.069
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %2, ptr noundef %10) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %arrayidx8 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 15, i32 %i.069
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %arrayidx8, align 4
  %inc = add nuw i32 %i.069, 1
  %13 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vcodec_pmdomains_num, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.skip_pmdomains_crit_edge

if.end7.skip_pmdomains_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_pmdomains

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

skip_pmdomains:                                   ; preds = %if.end7.skip_pmdomains_crit_edge, %for.cond.preheader.skip_pmdomains_crit_edge, %entry.skip_pmdomains_crit_edge
  %has_opp_table = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 14
  %15 = ptrtoint ptr %has_opp_table to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_opp_table, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %skip_pmdomains.cleanup_crit_edge, label %if.end11

skip_pmdomains.cleanup_crit_edge:                 ; preds = %skip_pmdomains
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %skip_pmdomains
  %opp_pmdomain = getelementptr inbounds %struct.venus_resources, ptr %4, i32 0, i32 16
  %17 = ptrtoint ptr %opp_pmdomain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %opp_pmdomain, align 8
  %call12 = call i32 @devm_pm_opp_attach_genpd(ptr noundef %2, ptr noundef %18, ptr noundef nonnull %opp_virt_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.opp_attach_err_crit_edge

if.end11.opp_attach_err_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %opp_attach_err

if.end15:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %opp_virt_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %opp_virt_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %opp_pmdomain16 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 17
  %23 = ptrtoint ptr %opp_pmdomain16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %opp_pmdomain16, align 4
  %call18 = call ptr @device_link_add(ptr noundef %2, ptr noundef %22, i32 noundef 13) #8
  %opp_dl_venus = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 16
  %24 = ptrtoint ptr %opp_dl_venus to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call18, ptr %opp_dl_venus, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end15.opp_attach_err_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.opp_attach_err_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %opp_attach_err

opp_attach_err:                                   ; preds = %if.end15.opp_attach_err_crit_edge, %if.end11.opp_attach_err_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.opp_attach_err_crit_edge ], [ -19, %if.end15.opp_attach_err_crit_edge ]
  %25 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vcodec_pmdomains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2570.not = icmp eq i32 %26, 0
  br i1 %cmp2570.not, label %opp_attach_err.cleanup_crit_edge, label %opp_attach_err.for.body26_crit_edge

opp_attach_err.for.body26_crit_edge:              ; preds = %opp_attach_err
  br label %for.body26

opp_attach_err.cleanup_crit_edge:                 ; preds = %opp_attach_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body26:                                       ; preds = %for.inc34.for.body26_crit_edge, %opp_attach_err.for.body26_crit_edge
  %i.171 = phi i32 [ %inc35, %for.inc34.for.body26_crit_edge ], [ 0, %opp_attach_err.for.body26_crit_edge ]
  %arrayidx28 = getelementptr %struct.venus_core, ptr %core, i32 0, i32 15, i32 %i.171
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28, align 4
  %tobool.not.i = icmp eq ptr %28, null
  %cmp.i67 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i67
  br i1 %spec.select.i, label %for.body26.for.inc34_crit_edge, label %if.end31

for.body26.for.inc34_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34

if.end31:                                         ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_pm_domain_detach(ptr noundef nonnull %28, i1 noundef zeroext true) #8
  br label %for.inc34

for.inc34:                                        ; preds = %if.end31, %for.body26.for.inc34_crit_edge
  %inc35 = add nuw i32 %i.171, 1
  %29 = ptrtoint ptr %vcodec_pmdomains_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vcodec_pmdomains_num, align 4
  %cmp25 = icmp ult i32 %inc35, %30
  br i1 %cmp25, label %for.inc34.for.body26_crit_edge, label %for.inc34.cleanup_crit_edge

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc34.for.body26_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %opp_attach_err.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %skip_pmdomains.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %11, %if.then5 ], [ 0, %skip_pmdomains.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %ret.0, %opp_attach_err.cleanup_crit_edge ], [ %ret.0, %for.inc34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opp_virt_dev) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_attach_genpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vcodec_control_v4(ptr nocapture noundef readonly %core, i32 noundef %coreid, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wrapper_base = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 5
  %4 = ptrtoint ptr %wrapper_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wrapper_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 132
  %add.ptr2 = getelementptr i8, ptr %5, i32 128
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coreid)
  %cmp3 = icmp eq i32 %coreid, 1
  %wrapper_base5 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 5
  %6 = ptrtoint ptr %wrapper_base5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrapper_base5, align 4
  br i1 %cmp3, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %7, i32 148
  %add.ptr8 = getelementptr i8, ptr %7, i32 144
  br label %if.end14

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr11 = getelementptr i8, ptr %7, i32 276
  %add.ptr13 = getelementptr i8, ptr %7, i32 272
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.then4, %if.then
  %stat.0 = phi ptr [ %add.ptr2, %if.then ], [ %add.ptr8, %if.then4 ], [ %add.ptr13, %if.else9 ]
  %ctrl.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr6, %if.then4 ], [ %add.ptr11, %if.else9 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %enable, label %do.body, label %do.body55

do.body:                                          ; preds = %if.end14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.0, i32 0) #8, !srcloc !69
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 429) #8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not149 = icmp eq i32 %9, 0
  br i1 %tobool31.not149, label %do.body.land.lhs.true_crit_edge, label %do.body.if.end110_crit_edge

do.body.if.end110_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then46.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call35 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call35, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %11 = and i32 %10, 33554432
  %tobool31.not = icmp eq i32 %11, 0
  br i1 %tobool31.not, label %if.then46.land.lhs.true_crit_edge, label %if.then46.if.end110_crit_edge

if.then46.if.end110_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then46.land.lhs.true_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool50.not = icmp eq i32 %13, 0
  br i1 %tobool50.not, label %for.end.cleanup_crit_edge, label %for.end.if.end110_crit_edge

for.end.if.end110_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body55:                                        ; preds = %if.end14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.0, i32 16777216) #8, !srcloc !69
  %call61 = tail call i64 @ktime_get() #8
  %add.i138 = add i64 %call61, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 435) #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool82.not147 = icmp eq i32 %15, 0
  br i1 %tobool82.not147, label %do.body55.if.end110_crit_edge, label %do.body55.land.lhs.true86_crit_edge

do.body55.land.lhs.true86_crit_edge:              ; preds = %do.body55
  br label %land.lhs.true86

do.body55.if.end110_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true86:                                  ; preds = %if.then98.land.lhs.true86_crit_edge, %do.body55.land.lhs.true86_crit_edge
  %call87 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call87, i64 %add.i138)
  %cmp3.i140 = icmp sgt i64 %call87, %add.i138
  br i1 %cmp3.i140, label %for.end102, label %if.then98

if.then98:                                        ; preds = %land.lhs.true86
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %17 = and i32 %16, 33554432
  %tobool82.not = icmp eq i32 %17, 0
  br i1 %tobool82.not, label %if.then98.if.end110_crit_edge, label %if.then98.land.lhs.true86_crit_edge

if.then98.land.lhs.true86_crit_edge:              ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true86

if.then98.if.end110_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

for.end102:                                       ; preds = %land.lhs.true86
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat.0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool105.not = icmp eq i32 %19, 0
  br i1 %tobool105.not, label %for.end102.if.end110_crit_edge, label %for.end102.cleanup_crit_edge

for.end102.cleanup_crit_edge:                     ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end102.if.end110_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end110:                                        ; preds = %for.end102.if.end110_crit_edge, %if.then98.if.end110_crit_edge, %do.body55.if.end110_crit_edge, %for.end.if.end110_crit_edge, %if.then46.if.end110_crit_edge, %do.body.if.end110_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %for.end102.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end110 ], [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @min_loaded_core(ptr noundef readonly %inst, ptr nocapture noundef writeonly %min_coreid, ptr nocapture noundef writeonly %min_load, i1 noundef zeroext %low_power) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core1.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1.i.i.i, align 4
  %hfi_codec.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %2 = ptrtoint ptr %hfi_codec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_codec.i.i.i, align 8
  %session_type.i.i.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %4 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_type.i.i.i, align 4
  %codecs_count.i.i.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %codecs_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codecs_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i.i.i.i, label %entry.core_num_max.exit_crit_edge, label %entry.for.body.i.i.i.i_crit_edge

entry.for.body.i.i.i.i_crit_edge:                 ; preds = %entry
  br label %for.body.i.i.i.i

entry.core_num_max.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry.for.body.i.i.i.i_crit_edge
  %c.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i.i.i.i = icmp eq i32 %9, %3
  br i1 %cmp2.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %domain5.i.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 1
  %10 = ptrtoint ptr %domain5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp6.i.i.i.i = icmp eq i32 %11, %5
  br i1 %cmp6.i.i.i.i, label %venus_caps_by_codec.exit.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %c.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %7
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.core_num_max.exit_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.core_num_max.exit_crit_edge:      ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

venus_caps_by_codec.exit.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %venus_caps_by_codec.exit.i.i.i.core_num_max.exit_crit_edge, label %for.cond.preheader.i.i.i

venus_caps_by_codec.exit.i.i.i.core_num_max.exit_crit_edge: ; preds = %venus_caps_by_codec.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

for.cond.preheader.i.i.i:                         ; preds = %venus_caps_by_codec.exit.i.i.i
  %num_caps.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 3
  %12 = ptrtoint ptr %num_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_caps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp9.not.i.i.i, label %for.cond.preheader.i.i.i.core_num_max.exit_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.core_num_max.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.010.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %15)
  %cmp3.i.i.i = icmp eq i32 %15, 43
  br i1 %cmp3.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %13
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.core_num_max.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.core_num_max.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.end.i.i.i.core_num_max.exit_crit_edge, label %sw.bb11.i.i.i

for.end.i.i.i.core_num_max.exit_crit_edge:        ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %core_num_max.exit

sw.bb11.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %max.i.i.i = getelementptr %struct.venus_core, ptr %1, i32 0, i32 45, i32 %c.017.i.i.i.i, i32 4, i32 %i.010.i.i.i, i32 2
  %16 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max.i.i.i, align 4
  br label %core_num_max.exit

core_num_max.exit:                                ; preds = %sw.bb11.i.i.i, %for.end.i.i.i.core_num_max.exit_crit_edge, %for.inc.i.i.i.core_num_max.exit_crit_edge, %for.cond.preheader.i.i.i.core_num_max.exit_crit_edge, %venus_caps_by_codec.exit.i.i.i.core_num_max.exit_crit_edge, %for.inc.i.i.i.i.core_num_max.exit_crit_edge, %entry.core_num_max.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %17, %sw.bb11.i.i.i ], [ 0, %venus_caps_by_codec.exit.i.i.i.core_num_max.exit_crit_edge ], [ 0, %for.end.i.i.i.core_num_max.exit_crit_edge ], [ 0, %entry.core_num_max.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.core_num_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.core_num_max.exit_crit_edge ], [ 0, %for.inc.i.i.i.i.core_num_max.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %instances = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %instances to i32
  call void @__asan_load4_noabort(i32 %18)
  %inst_pos.094 = load ptr, ptr %instances, align 4
  %cmp.not95 = icmp eq ptr %inst_pos.094, %instances
  br i1 %cmp.not95, label %core_num_max.exit.for.end_crit_edge, label %core_num_max.exit.for.body_crit_edge

core_num_max.exit.for.body_crit_edge:             ; preds = %core_num_max.exit
  br label %for.body

core_num_max.exit.for.end_crit_edge:              ; preds = %core_num_max.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %core_num_max.exit.for.body_crit_edge
  %inst_pos.098 = phi ptr [ %inst_pos.0, %for.inc.for.body_crit_edge ], [ %inst_pos.094, %core_num_max.exit.for.body_crit_edge ]
  %core1_load.097 = phi i32 [ %core1_load.1, %for.inc.for.body_crit_edge ], [ 0, %core_num_max.exit.for.body_crit_edge ]
  %core2_load.096 = phi i32 [ %core2_load.1, %for.inc.for.body_crit_edge ], [ 0, %core_num_max.exit.for.body_crit_edge ]
  %cmp3 = icmp eq ptr %inst_pos.098, %inst
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %state = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 50
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp4.not = icmp eq i32 %20, 5
  br i1 %cmp4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %21 = ptrtoint ptr %session_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %session_type.i.i.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %22, label %if.end6.for.inc_crit_edge [
    i32 2, label %if.then8
    i32 1, label %if.then12
  ]

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %vpp_freq9 = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 3, i32 2
  br label %if.end18

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %low_power_freq = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 3, i32 4
  %vpp_freq15 = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 3, i32 2
  %cond.in = select i1 %low_power, ptr %low_power_freq, ptr %vpp_freq15
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.then8
  %vpp_freq.0.in = phi ptr [ %vpp_freq9, %if.then8 ], [ %cond.in, %if.then12 ]
  %24 = ptrtoint ptr %vpp_freq.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %vpp_freq.0 = load i32, ptr %vpp_freq.0.in, align 8
  %clk_data19 = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 3
  %25 = ptrtoint ptr %clk_data19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_data19, align 8
  %tobool.not.i = icmp eq ptr %inst_pos.098, null
  br i1 %tobool.not.i, label %if.end18.load_per_instance.exit_crit_edge, label %if.end.i

if.end18.load_per_instance.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_per_instance.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 15
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width.i, align 8
  %add.i = add i32 %28, 15
  %div13.i = lshr i32 %add.i, 4
  %height.i = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 16
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i, align 4
  %add3.i = add i32 %30, 15
  %div514.i = lshr i32 %add3.i, 4
  %mul.i = mul i32 %div514.i, %div13.i
  %fps.i = getelementptr inbounds %struct.venus_inst, ptr %inst_pos.098, i32 0, i32 31
  %31 = ptrtoint ptr %fps.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fps.i, align 8
  %33 = trunc i64 %32 to i32
  %conv7.i = mul i32 %mul.i, %33
  br label %load_per_instance.exit

load_per_instance.exit:                           ; preds = %if.end.i, %if.end18.load_per_instance.exit_crit_edge
  %retval.0.i = phi i32 [ %conv7.i, %if.end.i ], [ 0, %if.end18.load_per_instance.exit_crit_edge ]
  %mul = mul i32 %retval.0.i, %vpp_freq.0
  %and = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp21 = icmp eq i32 %and, 3
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %load_per_instance.exit
  call void @__sanitizer_cov_trace_pc() #10
  %div88 = lshr i32 %mul, 1
  %add = add i32 %div88, %core1_load.097
  %add24 = add i32 %div88, %core2_load.096
  br label %for.inc

if.else25:                                        ; preds = %load_per_instance.exit
  %and26 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %add29 = add i32 %mul, %core1_load.097
  br label %for.inc

if.else30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %add34 = select i1 %tobool32.not, i32 0, i32 %mul
  %spec.select = add i32 %add34, %core2_load.096
  br label %for.inc

for.inc:                                          ; preds = %if.else30, %if.then28, %if.then22, %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %core2_load.1 = phi i32 [ %core2_load.096, %for.body.for.inc_crit_edge ], [ %core2_load.096, %if.end.for.inc_crit_edge ], [ %add24, %if.then22 ], [ %core2_load.096, %if.then28 ], [ %core2_load.096, %if.end6.for.inc_crit_edge ], [ %spec.select, %if.else30 ]
  %core1_load.1 = phi i32 [ %core1_load.097, %for.body.for.inc_crit_edge ], [ %core1_load.097, %if.end.for.inc_crit_edge ], [ %add, %if.then22 ], [ %add29, %if.then28 ], [ %core1_load.097, %if.end6.for.inc_crit_edge ], [ %core1_load.097, %if.else30 ]
  %34 = ptrtoint ptr %inst_pos.098 to i32
  call void @__asan_load4_noabort(i32 %34)
  %inst_pos.0 = load ptr, ptr %inst_pos.098, align 4
  %cmp.not = icmp eq ptr %inst_pos.0, %instances
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %core_num_max.exit.for.end_crit_edge
  %core2_load.0.lcssa = phi i32 [ 0, %core_num_max.exit.for.end_crit_edge ], [ %core2_load.1, %for.inc.for.end_crit_edge ]
  %core1_load.0.lcssa = phi i32 [ 0, %core_num_max.exit.for.end_crit_edge ], [ %core1_load.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %core1_load.0.lcssa, i32 %core2_load.0.lcssa)
  %cmp43.not = icmp ugt i32 %core1_load.0.lcssa, %core2_load.0.lcssa
  %cond44 = select i1 %cmp43.not, i32 2, i32 1
  %35 = ptrtoint ptr %min_coreid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond44, ptr %min_coreid, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %core1_load.0.lcssa, i32 %core2_load.0.lcssa)
  %37 = ptrtoint ptr %min_load to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %min_load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i.i)
  %cmp51 = icmp ult i32 %retval.0.i.i.i, 2
  br i1 %cmp51, label %for.end.if.then53_crit_edge, label %lor.lhs.false

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false:                                    ; preds = %for.end
  %res = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %38 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %res, align 4
  %vcodec_num = getelementptr inbounds %struct.venus_resources, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %vcodec_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vcodec_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp52 = icmp ult i32 %41, 2
  br i1 %cmp52, label %lor.lhs.false.if.then53_crit_edge, label %lor.lhs.false.if.end54_crit_edge

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %for.end.if.then53_crit_edge
  %42 = ptrtoint ptr %min_coreid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %min_coreid, align 4
  %43 = ptrtoint ptr %min_load to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %core1_load.0.lcssa, ptr %min_load, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %lor.lhs.false.if.end54_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @pm_ops_v1, !1, !"pm_ops_v1", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 325, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 302, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 259, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @load_scale_v1._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @load_scale_v1._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 277, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @load_scale_v1._entry.6, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @load_scale_v1._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 284, i32 3}
!19 = !{ptr @load_scale_v1._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @load_scale_v1._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 237, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @load_scale_bw.__UNIQUE_ID_ddebug299, !22, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!26 = !{ptr @pm_ops_v3, !27, !"pm_ops_v3", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 398, i32 34}
!28 = !{ptr @pm_ops_v4, !29, !"pm_ops_v4", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 1179, i32 34}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 989, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @core_get_v4._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @core_get_v4._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 1015, i32 4}
!40 = !{ptr @core_get_v4._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @core_get_v4._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"legacy_binding", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 24, i32 13}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 670, i32 3}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @decide_core._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @decide_core._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 1144, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @load_scale_v4.__UNIQUE_ID_ddebug308, !50, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!53 = !{ptr @load_scale_v4._entry, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 1162, i32 3}
!55 = !{ptr @load_scale_v4._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @load_scale_v4._entry.28, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/qcom/venus/pm_helpers.c", i32 1169, i32 3}
!58 = !{ptr @load_scale_v4._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148745920, i64 2148745925, i64 2148745938, i64 2148745982, i64 2148746016, i64 2148746037}
!69 = !{i64 3104804}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148263524}
!72 = !{i64 748347, i64 748372, i64 748394, i64 748410, i64 748422, i64 748442, i64 748466, i64 748482, i64 748494}
!73 = !{i64 2148263712}
!74 = !{!"auto-init"}
!75 = !{i64 3105222}
!76 = !{i64 2156640237}
!77 = !{i64 2156640671}
!78 = !{i64 2156642671}
!79 = !{i64 2156643105}
