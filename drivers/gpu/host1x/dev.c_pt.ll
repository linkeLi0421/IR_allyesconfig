; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/dev.c_pt.bc'
source_filename = "../drivers/gpu/host1x/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+host1x_get_dma_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_get_dma_mask\09\09\09\09"
module asm "\09.long\09__crc_host1x_get_dma_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_get_dma_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_get_dma_mask\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_get_dma_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_info = type { i32, i32, i32, i32, ptr, i32, i64, i8, i8, i32, ptr, i8 }
%struct.host1x_sid_entry = type { i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_host1x = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_host1x_cdma_push = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_cdma_push_wide = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_cdma_push_gather = type { %struct.trace_entry, ptr, ptr, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submit = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submitted = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submit_complete = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_wait_cdma = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_event_raw_host1x_syncpt_load_min = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_syncpt_wait_check = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pdev_archdata = type { ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }

@__tpstrtab_host1x_channel_open = internal constant [20 x i8] c"host1x_channel_open\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_open = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_open }, align 4
@__tracepoint_host1x_channel_open = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_channel_open, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_channel_open, ptr null, ptr @__traceiter_host1x_channel_open, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_open = internal constant ptr @__tracepoint_host1x_channel_open, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_release = internal constant [23 x i8] c"host1x_channel_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_release = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_release }, align 4
@__tracepoint_host1x_channel_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_channel_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_channel_release, ptr null, ptr @__traceiter_host1x_channel_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_release = internal constant ptr @__tracepoint_host1x_channel_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_begin = internal constant [18 x i8] c"host1x_cdma_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_begin = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_begin }, align 4
@__tracepoint_host1x_cdma_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_cdma_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_begin, ptr null, ptr @__traceiter_host1x_cdma_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_begin = internal constant ptr @__tracepoint_host1x_cdma_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_end = internal constant [16 x i8] c"host1x_cdma_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_end = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_end }, align 4
@__tracepoint_host1x_cdma_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_cdma_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_end, ptr null, ptr @__traceiter_host1x_cdma_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_end = internal constant ptr @__tracepoint_host1x_cdma_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push = internal constant [17 x i8] c"host1x_cdma_push\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push }, align 4
@__tracepoint_host1x_cdma_push = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_cdma_push, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push, ptr null, ptr @__traceiter_host1x_cdma_push, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push = internal constant ptr @__tracepoint_host1x_cdma_push, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push_wide = internal constant [22 x i8] c"host1x_cdma_push_wide\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push_wide = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push_wide }, align 4
@__tracepoint_host1x_cdma_push_wide = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_cdma_push_wide, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push_wide, ptr null, ptr @__traceiter_host1x_cdma_push_wide, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push_wide = internal constant ptr @__tracepoint_host1x_cdma_push_wide, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push_gather = internal constant [24 x i8] c"host1x_cdma_push_gather\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push_gather = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push_gather }, align 4
@__tracepoint_host1x_cdma_push_gather = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_cdma_push_gather, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push_gather, ptr null, ptr @__traceiter_host1x_cdma_push_gather, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push_gather = internal constant ptr @__tracepoint_host1x_cdma_push_gather, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submit = internal constant [22 x i8] c"host1x_channel_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submit = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submit }, align 4
@__tracepoint_host1x_channel_submit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_channel_submit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submit, ptr null, ptr @__traceiter_host1x_channel_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submit = internal constant ptr @__tracepoint_host1x_channel_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submitted = internal constant [25 x i8] c"host1x_channel_submitted\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submitted = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submitted }, align 4
@__tracepoint_host1x_channel_submitted = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_channel_submitted, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submitted, ptr null, ptr @__traceiter_host1x_channel_submitted, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submitted = internal constant ptr @__tracepoint_host1x_channel_submitted, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submit_complete = internal constant [31 x i8] c"host1x_channel_submit_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submit_complete = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submit_complete }, align 4
@__tracepoint_host1x_channel_submit_complete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_channel_submit_complete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submit_complete, ptr null, ptr @__traceiter_host1x_channel_submit_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submit_complete = internal constant ptr @__tracepoint_host1x_channel_submit_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_wait_cdma = internal constant [17 x i8] c"host1x_wait_cdma\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_wait_cdma = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_wait_cdma }, align 4
@__tracepoint_host1x_wait_cdma = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_wait_cdma, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_wait_cdma, ptr null, ptr @__traceiter_host1x_wait_cdma, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_wait_cdma = internal constant ptr @__tracepoint_host1x_wait_cdma, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_syncpt_load_min = internal constant [23 x i8] c"host1x_syncpt_load_min\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_syncpt_load_min = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_syncpt_load_min }, align 4
@__tracepoint_host1x_syncpt_load_min = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_syncpt_load_min, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_syncpt_load_min, ptr null, ptr @__traceiter_host1x_syncpt_load_min, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_syncpt_load_min = internal constant ptr @__tracepoint_host1x_syncpt_load_min, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_syncpt_wait_check = internal constant [25 x i8] c"host1x_syncpt_wait_check\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_syncpt_wait_check = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_syncpt_wait_check }, align 4
@__tracepoint_host1x_syncpt_wait_check = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_host1x_syncpt_wait_check, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_host1x_syncpt_wait_check, ptr null, ptr @__traceiter_host1x_syncpt_wait_check, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_syncpt_wait_check = internal constant ptr @__tracepoint_host1x_syncpt_wait_check, section "__tracepoints_ptrs", align 4
@str__host1x__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_host1x = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_host1x = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x, ptr @perf_trace_host1x, ptr @trace_event_reg, ptr @trace_event_fields_host1x, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x, i64 24), ptr getelementptr (i8, ptr @event_class_host1x, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"\22name=%s\22, REC->name\00", [43 x i8] zeroinitializer }, align 32
@event_host1x_channel_open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.1 { ptr @__tracepoint_host1x_channel_open }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_channel_open = internal global ptr @event_host1x_channel_open, section "_ftrace_events", align 4
@event_host1x_channel_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.1 { ptr @__tracepoint_host1x_channel_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_channel_release = internal global ptr @event_host1x_channel_release, section "_ftrace_events", align 4
@event_host1x_cdma_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.1 { ptr @__tracepoint_host1x_cdma_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_cdma_begin = internal global ptr @event_host1x_cdma_begin, section "_ftrace_events", align 4
@event_host1x_cdma_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.1 { ptr @__tracepoint_host1x_cdma_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_cdma_end = internal global ptr @event_host1x_cdma_end, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_host1x_cdma_push = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_cdma_push, ptr @perf_trace_host1x_cdma_push, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_cdma_push = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22name=%s, op1=%08x, op2=%08x\22, REC->name, REC->op1, REC->op2\00", [35 x i8] zeroinitializer }, align 32
@event_host1x_cdma_push = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push, %union.anon.1 { ptr @__tracepoint_host1x_cdma_push }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push }, ptr @print_fmt_host1x_cdma_push, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_cdma_push = internal global ptr @event_host1x_cdma_push, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push_wide = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_host1x_cdma_push_wide = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_cdma_push_wide, ptr @perf_trace_host1x_cdma_push_wide, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push_wide, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_wide, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_wide, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push_wide = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push_wide, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_cdma_push_wide = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\22name=%s, op1=%08x, op2=%08x, op3=%08x op4=%08x\22, REC->name, REC->op1, REC->op2, REC->op3, REC->op4\00", [60 x i8] zeroinitializer }, align 32
@event_host1x_cdma_push_wide = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push_wide, %union.anon.1 { ptr @__tracepoint_host1x_cdma_push_wide }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push_wide }, ptr @print_fmt_host1x_cdma_push_wide, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_cdma_push_wide = internal global ptr @event_host1x_cdma_push_wide, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push_gather = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.0 { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.0 { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_host1x_cdma_push_gather = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_cdma_push_gather, ptr @perf_trace_host1x_cdma_push_gather, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push_gather, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_gather, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_gather, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push_gather = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push_gather, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_cdma_push_gather = internal global { [174 x i8], [50 x i8] } { [174 x i8] c"\22name=%s, bo=%p, words=%u, offset=%d, contents=[%s]\22, REC->name, REC->bo, REC->words, REC->offset, __print_hex(__get_dynamic_array(cmdbuf), REC->cmdbuf ? REC->words * 4 : 0)\00", [50 x i8] zeroinitializer }, align 32
@event_host1x_cdma_push_gather = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push_gather, %union.anon.1 { ptr @__tracepoint_host1x_cdma_push_gather }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push_gather }, ptr @print_fmt_host1x_cdma_push_gather, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_cdma_push_gather = internal global ptr @event_host1x_cdma_push_gather, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submit = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_host1x_channel_submit = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_channel_submit, ptr @perf_trace_host1x_channel_submit, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submit, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_channel_submit = internal global { [137 x i8], [55 x i8] } { [137 x i8] c"\22name=%s, cmdbufs=%u, relocs=%u, syncpt_id=%u, syncpt_incrs=%u\22, REC->name, REC->cmdbufs, REC->relocs, REC->syncpt_id, REC->syncpt_incrs\00", [55 x i8] zeroinitializer }, align 32
@event_host1x_channel_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submit, %union.anon.1 { ptr @__tracepoint_host1x_channel_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submit }, ptr @print_fmt_host1x_channel_submit, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_channel_submit = internal global ptr @event_host1x_channel_submit, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submitted = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_host1x_channel_submitted = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_channel_submitted, ptr @perf_trace_host1x_channel_submitted, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submitted, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submitted, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submitted, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submitted = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submitted, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_channel_submitted = internal global { [87 x i8], [41 x i8] } { [87 x i8] c"\22name=%s, syncpt_base=%d, syncpt_max=%d\22, REC->name, REC->syncpt_base, REC->syncpt_max\00", [41 x i8] zeroinitializer }, align 32
@event_host1x_channel_submitted = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submitted, %union.anon.1 { ptr @__tracepoint_host1x_channel_submitted }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submitted }, ptr @print_fmt_host1x_channel_submitted, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_channel_submitted = internal global ptr @event_host1x_channel_submitted, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submit_complete = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.0 { %struct.anon { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_host1x_channel_submit_complete = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_channel_submit_complete, ptr @perf_trace_host1x_channel_submit_complete, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submit_complete, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submit_complete, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submit_complete, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submit_complete = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submit_complete, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_channel_submit_complete = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\22name=%s, count=%d, thresh=%d\22, REC->name, REC->count, REC->thresh\00", [61 x i8] zeroinitializer }, align 32
@event_host1x_channel_submit_complete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submit_complete, %union.anon.1 { ptr @__tracepoint_host1x_channel_submit_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submit_complete }, ptr @print_fmt_host1x_channel_submit_complete, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_channel_submit_complete = internal global ptr @event_host1x_channel_submit_complete, section "_ftrace_events", align 4
@trace_event_fields_host1x_wait_cdma = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_host1x_wait_cdma = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_wait_cdma, ptr @perf_trace_host1x_wait_cdma, ptr @trace_event_reg, ptr @trace_event_fields_host1x_wait_cdma, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_wait_cdma, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_wait_cdma, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_wait_cdma = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_wait_cdma, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_wait_cdma = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\22name=%s, event=%d\22, REC->name, REC->eventid\00", [51 x i8] zeroinitializer }, align 32
@event_host1x_wait_cdma = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_wait_cdma, %union.anon.1 { ptr @__tracepoint_host1x_wait_cdma }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_wait_cdma }, ptr @print_fmt_host1x_wait_cdma, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_wait_cdma = internal global ptr @event_host1x_wait_cdma, section "_ftrace_events", align 4
@trace_event_fields_host1x_syncpt_load_min = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_host1x_syncpt_load_min = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_syncpt_load_min, ptr @perf_trace_host1x_syncpt_load_min, ptr @trace_event_reg, ptr @trace_event_fields_host1x_syncpt_load_min, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_syncpt_load_min, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_syncpt_load_min, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_syncpt_load_min = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_syncpt_load_min, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_syncpt_load_min = internal global { [35 x i8], [61 x i8] } { [35 x i8] c"\22id=%d, val=%d\22, REC->id, REC->val\00", [61 x i8] zeroinitializer }, align 32
@event_host1x_syncpt_load_min = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_syncpt_load_min, %union.anon.1 { ptr @__tracepoint_host1x_syncpt_load_min }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_syncpt_load_min }, ptr @print_fmt_host1x_syncpt_load_min, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_syncpt_load_min = internal global ptr @event_host1x_syncpt_load_min, section "_ftrace_events", align 4
@trace_event_fields_host1x_syncpt_wait_check = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_host1x_syncpt_wait_check = internal global %struct.trace_event_class { ptr @str__host1x__trace_system_name, ptr @trace_event_raw_event_host1x_syncpt_wait_check, ptr @perf_trace_host1x_syncpt_wait_check, ptr @trace_event_reg, ptr @trace_event_fields_host1x_syncpt_wait_check, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_syncpt_wait_check, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_syncpt_wait_check, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_syncpt_wait_check = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_host1x_syncpt_wait_check, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_host1x_syncpt_wait_check = internal global { [112 x i8], [48 x i8] } { [112 x i8] c"\22bo=%p, offset=%05x, id=%d, thresh=%d, current=%d\22, REC->bo, REC->offset, REC->syncpt_id, REC->thresh, REC->min\00", [48 x i8] zeroinitializer }, align 32
@event_host1x_syncpt_wait_check = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_syncpt_wait_check, %union.anon.1 { ptr @__tracepoint_host1x_syncpt_wait_check }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_syncpt_wait_check }, ptr @print_fmt_host1x_syncpt_wait_check, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_host1x_syncpt_wait_check = internal global ptr @event_host1x_syncpt_wait_check, section "_ftrace_events", align 4
@__bpf_trace_tp_map_host1x_channel_open = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_channel_open, ptr @__bpf_trace_host1x, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_channel_release = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_channel_release, ptr @__bpf_trace_host1x, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_cdma_begin = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_cdma_begin, ptr @__bpf_trace_host1x, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_cdma_end = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_cdma_end, ptr @__bpf_trace_host1x, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_cdma_push = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_cdma_push, ptr @__bpf_trace_host1x_cdma_push, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_cdma_push_wide = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_cdma_push_wide, ptr @__bpf_trace_host1x_cdma_push_wide, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_cdma_push_gather = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_cdma_push_gather, ptr @__bpf_trace_host1x_cdma_push_gather, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_channel_submit = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_channel_submit, ptr @__bpf_trace_host1x_channel_submit, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_channel_submitted = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_channel_submitted, ptr @__bpf_trace_host1x_channel_submitted, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_channel_submit_complete = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_channel_submit_complete, ptr @__bpf_trace_host1x_channel_submit_complete, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_wait_cdma = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_wait_cdma, ptr @__bpf_trace_host1x_wait_cdma, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_syncpt_load_min = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_syncpt_load_min, ptr @__bpf_trace_host1x_syncpt_load_min, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_host1x_syncpt_wait_check = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_host1x_syncpt_wait_check, ptr @__bpf_trace_host1x_syncpt_wait_check, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_host1x__321_678_tegra_host1x_init6 = internal global ptr @tegra_host1x_init, section ".initcall6.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tegra_host1x_driver, ptr @tegra_mipi_driver], [24 x i8] zeroinitializer }, align 32
@host1x_bus_type = external dso_local global %struct.bus_type, align 4
@__exitcall_tegra_host1x_exit = internal global ptr @tegra_host1x_exit, section ".exitcall.exit", align 4
@__kstrtab_host1x_get_dma_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_get_dma_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_get_dma_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_get_dma_mask to i32), ptr @__kstrtab_host1x_get_dma_mask, ptr @__kstrtabns_host1x_get_dma_mask }, section "___ksymtab+host1x_get_dma_mask", align 4
@__UNIQUE_ID_author322 = internal constant [64 x i8] c"host1x.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [54 x i8] c"host1x.author=Terje Bergstrom <tbergstrom@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [52 x i8] c"host1x.description=Host1x driver for Tegra products\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [38 x i8] c"host1x.file=drivers/gpu/host1x/host1x\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [19 x i8] c"host1x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"name=%s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"op1\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"op2\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"name=%s, op1=%08x, op2=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"op3\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"op4\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"name=%s, op1=%08x, op2=%08x, op3=%08x op4=%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct host1x_bo *\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bo\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"words\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmdbuf\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u32[]\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"name=%s, bo=%p, words=%u, offset=%d, contents=[%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmdbufs\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"relocs\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syncpt_id\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syncpt_incrs\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"name=%s, cmdbufs=%u, relocs=%u, syncpt_id=%u, syncpt_incrs=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syncpt_base\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syncpt_max\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"name=%s, syncpt_base=%d, syncpt_max=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thresh\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"name=%s, count=%d, thresh=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eventid\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"name=%s, event=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"id=%d, val=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bo=%p, offset=%05x, id=%d, thresh=%d, current=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tegra_host1x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @host1x_probe, ptr @host1x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.37, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @host1x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_mipi_driver = external dso_local global %struct.platform_driver, align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-host1x\00", [19 x i8] zeroinitializer }, align 32
@host1x_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x07_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x06_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x05_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x04_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x02_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x01_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x01_info }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@host1x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_runtime_suspend, ptr @host1x_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vm\00", [29 x i8] zeroinitializer }, align 32
@host1x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 427, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get vm registers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"host1x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpu/host1x/dev.c\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr = internal global ptr @host1x_probe._entry, section ".printk_index", align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hypervisor\00", [21 x i8] zeroinitializer }, align 32
@host1x_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.41, i32 435, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get hypervisor registers\0A\00", [60 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.47 = internal global ptr @host1x_probe._entry.45, section ".printk_index", align 4
@host1x_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.41, i32 441, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get registers\0A\00", [39 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.50 = internal global ptr @host1x_probe._entry.48, section ".printk_index", align 4
@host1x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&host->devices_lock\00", [44 x i8] zeroinitializer }, align 32
@host1x_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.41, i32 483, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.54 = internal global ptr @host1x_probe._entry.52, section ".printk_index", align 4
@host1x_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.40, ptr @.str.41, i32 494, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to setup IOMMU: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.57 = internal global ptr @host1x_probe._entry.55, section ".printk_index", align 4
@host1x_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.40, ptr @.str.41, i32 501, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize channel list\0A\00", [61 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.60 = internal global ptr @host1x_probe._entry.58, section ".printk_index", align 4
@host1x_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.40, ptr @.str.41, i32 507, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize syncpts\0A\00", [34 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.63 = internal global ptr @host1x_probe._entry.61, section ".printk_index", align 4
@host1x_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.40, ptr @.str.41, i32 513, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize interrupts\0A\00", [63 x i8] zeroinitializer }, align 32
@host1x_probe._entry_ptr.66 = internal global ptr @host1x_probe._entry.64, section ".printk_index", align 4
@host1x_bo_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@host1x_get_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.41, i32 401, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get reset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host1x_get_resets\00", [46 x i8] zeroinitializer }, align 32
@host1x_get_resets._entry_ptr = internal global ptr @host1x_get_resets._entry, section ".printk_index", align 4
@host1x_iommu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.41, i32 350, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to attach to IOMMU: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host1x_iommu_init\00", [46 x i8] zeroinitializer }, align 32
@host1x_iommu_init._entry_ptr = internal global ptr @host1x_iommu_init._entry, section ".printk_index", align 4
@host1x_iommu_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.41, i32 367, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@host1x_iommu_init._entry_ptr.76 = internal global ptr @host1x_iommu_init._entry.74, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@host1x07_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 63, i32 704, i32 0, i32 32, ptr @host1x07_init, i32 0, i64 1099511627775, i8 1, i8 1, i32 3, ptr @tegra194_sid_table, i8 0 }, [48 x i8] zeroinitializer }, align 32
@host1x06_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 63, i32 576, i32 16, i32 24, ptr @host1x06_init, i32 0, i64 1099511627775, i8 1, i8 1, i32 2, ptr @tegra186_sid_table, i8 0 }, [48 x i8] zeroinitializer }, align 32
@host1x05_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 14, i32 192, i32 64, i32 16, ptr @host1x05_init, i32 8448, i64 17179869183, i8 0, i8 0, i32 0, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@host1x04_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 12, i32 192, i32 64, i32 16, ptr @host1x04_init, i32 8448, i64 17179869183, i8 0, i8 0, i32 0, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@host1x02_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 9, i32 32, i32 12, i32 16, ptr @host1x02_init, i32 12288, i64 4294967295, i8 0, i8 0, i32 0, ptr null, i8 1 }, [48 x i8] zeroinitializer }, align 32
@host1x01_info = internal constant { %struct.host1x_info, [48 x i8] } { %struct.host1x_info { i32 8, i32 32, i32 8, i32 16, ptr @host1x01_init, i32 12288, i64 4294967295, i8 0, i8 0, i32 0, ptr null, i8 1 }, [48 x i8] zeroinitializer }, align 32
@tegra194_sid_table = internal constant { [3 x %struct.host1x_sid_entry], [60 x i8] } { [3 x %struct.host1x_sid_entry] [%struct.host1x_sid_entry { i32 6896, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 6912, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 7104, i32 48, i32 52 }], [60 x i8] zeroinitializer }, align 32
@tegra186_sid_table = internal constant { [2 x %struct.host1x_sid_entry], [40 x i8] } { [2 x %struct.host1x_sid_entry] [%struct.host1x_sid_entry { i32 6896, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 6912, i32 48, i32 52 }], [40 x i8] zeroinitializer }, align 32
@host1x_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.41, i32 587, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host1x_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@host1x_runtime_suspend._entry_ptr = internal global ptr @host1x_runtime_suspend._entry, section ".printk_index", align 4
@host1x_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.41, i32 613, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"host1x_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@host1x_runtime_resume._entry_ptr = internal global ptr @host1x_runtime_resume._entry, section ".printk_index", align 4
@host1x_runtime_resume._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.41, i32 619, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@host1x_runtime_resume._entry_ptr.83 = internal global ptr @host1x_runtime_resume._entry.81, section ".printk_index", align 4
@host1x_runtime_resume._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.41, i32 625, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@host1x_runtime_resume._entry_ptr.86 = internal global ptr @host1x_runtime_resume._entry.84, section ".printk_index", align 4
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"str__host1x__trace_system_name\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 36, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"trace_event_fields_host1x\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"trace_event_type_funcs_host1x\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"print_fmt_host1x\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"event_host1x_channel_open\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 29, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"event_host1x_channel_release\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 34, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [24 x i8] c"event_host1x_cdma_begin\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 39, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"event_host1x_cdma_end\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 44, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [36 x i8] c"trace_event_fields_host1x_cdma_push\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_host1x_cdma_push\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"print_fmt_host1x_cdma_push\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"event_host1x_cdma_push\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [41 x i8] c"trace_event_fields_host1x_cdma_push_wide\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_host1x_cdma_push_wide\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [32 x i8] c"print_fmt_host1x_cdma_push_wide\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"event_host1x_cdma_push_wide\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [43 x i8] c"trace_event_fields_host1x_cdma_push_gather\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_host1x_cdma_push_gather\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [34 x i8] c"print_fmt_host1x_cdma_push_gather\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"event_host1x_cdma_push_gather\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [41 x i8] c"trace_event_fields_host1x_channel_submit\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_host1x_channel_submit\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [32 x i8] c"print_fmt_host1x_channel_submit\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"event_host1x_channel_submit\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [44 x i8] c"trace_event_fields_host1x_channel_submitted\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_host1x_channel_submitted\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [35 x i8] c"print_fmt_host1x_channel_submitted\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"event_host1x_channel_submitted\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [50 x i8] c"trace_event_fields_host1x_channel_submit_complete\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [54 x i8] c"trace_event_type_funcs_host1x_channel_submit_complete\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [41 x i8] c"print_fmt_host1x_channel_submit_complete\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [37 x i8] c"event_host1x_channel_submit_complete\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [36 x i8] c"trace_event_fields_host1x_wait_cdma\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_host1x_wait_cdma\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"print_fmt_host1x_wait_cdma\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"event_host1x_wait_cdma\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [42 x i8] c"trace_event_fields_host1x_syncpt_load_min\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_host1x_syncpt_load_min\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [33 x i8] c"print_fmt_host1x_syncpt_load_min\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [29 x i8] c"event_host1x_syncpt_load_min\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [44 x i8] c"trace_event_fields_host1x_syncpt_wait_check\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_host1x_syncpt_wait_check\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [35 x i8] c"print_fmt_host1x_syncpt_wait_check\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [31 x i8] c"event_host1x_syncpt_wait_check\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 659, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 21, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 49, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 70, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 96, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 130, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 158, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 179, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 200, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 218, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant [33 x i8] c"../include/trace/events/host1x.h\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 236, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"tegra_host1x_driver\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 649, i32 31 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 651, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant [16 x i8] c"host1x_of_match\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 202, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant [14 x i8] c"host1x_pm_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 643, i32 32 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 425, i32 61 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 427, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 432, i32 14 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 434, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 441, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 451, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 483, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 494, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 501, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 507, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 513, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [26 x i8] c"../include/linux/host1x.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 43, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 394, i32 23 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 395, i32 23 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 401, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 350, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 367, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [14 x i8] c"host1x07_info\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 187, i32 33 }
@___asan_gen_.456 = private unnamed_addr constant [14 x i8] c"host1x06_info\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 151, i32 33 }
@___asan_gen_.459 = private unnamed_addr constant [14 x i8] c"host1x05_info\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 121, i32 33 }
@___asan_gen_.462 = private unnamed_addr constant [14 x i8] c"host1x04_info\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 106, i32 33 }
@___asan_gen_.465 = private unnamed_addr constant [14 x i8] c"host1x02_info\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 91, i32 33 }
@___asan_gen_.468 = private unnamed_addr constant [14 x i8] c"host1x01_info\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 76, i32 33 }
@___asan_gen_.471 = private unnamed_addr constant [19 x i8] c"tegra194_sid_table\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 166, i32 38 }
@___asan_gen_.474 = private unnamed_addr constant [19 x i8] c"tegra186_sid_table\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 136, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 587, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 613, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 619, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.505 = private constant [28 x i8] c"../drivers/gpu/host1x/dev.c\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 625, i32 3 }
@llvm.compiler.used = appending global [226 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__bpf_trace_tp_map_host1x_cdma_begin, ptr @__bpf_trace_tp_map_host1x_cdma_end, ptr @__bpf_trace_tp_map_host1x_cdma_push, ptr @__bpf_trace_tp_map_host1x_cdma_push_gather, ptr @__bpf_trace_tp_map_host1x_cdma_push_wide, ptr @__bpf_trace_tp_map_host1x_channel_open, ptr @__bpf_trace_tp_map_host1x_channel_release, ptr @__bpf_trace_tp_map_host1x_channel_submit, ptr @__bpf_trace_tp_map_host1x_channel_submit_complete, ptr @__bpf_trace_tp_map_host1x_channel_submitted, ptr @__bpf_trace_tp_map_host1x_syncpt_load_min, ptr @__bpf_trace_tp_map_host1x_syncpt_wait_check, ptr @__bpf_trace_tp_map_host1x_wait_cdma, ptr @__event_host1x_cdma_begin, ptr @__event_host1x_cdma_end, ptr @__event_host1x_cdma_push, ptr @__event_host1x_cdma_push_gather, ptr @__event_host1x_cdma_push_wide, ptr @__event_host1x_channel_open, ptr @__event_host1x_channel_release, ptr @__event_host1x_channel_submit, ptr @__event_host1x_channel_submit_complete, ptr @__event_host1x_channel_submitted, ptr @__event_host1x_syncpt_load_min, ptr @__event_host1x_syncpt_wait_check, ptr @__event_host1x_wait_cdma, ptr @__exitcall_tegra_host1x_exit, ptr @__initcall__kmod_host1x__321_678_tegra_host1x_init6, ptr @__ksymtab_host1x_get_dma_mask, ptr @__tracepoint_host1x_cdma_begin, ptr @__tracepoint_host1x_cdma_end, ptr @__tracepoint_host1x_cdma_push, ptr @__tracepoint_host1x_cdma_push_gather, ptr @__tracepoint_host1x_cdma_push_wide, ptr @__tracepoint_host1x_channel_open, ptr @__tracepoint_host1x_channel_release, ptr @__tracepoint_host1x_channel_submit, ptr @__tracepoint_host1x_channel_submit_complete, ptr @__tracepoint_host1x_channel_submitted, ptr @__tracepoint_host1x_syncpt_load_min, ptr @__tracepoint_host1x_syncpt_wait_check, ptr @__tracepoint_host1x_wait_cdma, ptr @__tracepoint_ptr_host1x_cdma_begin, ptr @__tracepoint_ptr_host1x_cdma_end, ptr @__tracepoint_ptr_host1x_cdma_push, ptr @__tracepoint_ptr_host1x_cdma_push_gather, ptr @__tracepoint_ptr_host1x_cdma_push_wide, ptr @__tracepoint_ptr_host1x_channel_open, ptr @__tracepoint_ptr_host1x_channel_release, ptr @__tracepoint_ptr_host1x_channel_submit, ptr @__tracepoint_ptr_host1x_channel_submit_complete, ptr @__tracepoint_ptr_host1x_channel_submitted, ptr @__tracepoint_ptr_host1x_syncpt_load_min, ptr @__tracepoint_ptr_host1x_syncpt_wait_check, ptr @__tracepoint_ptr_host1x_wait_cdma, ptr @event_class_host1x, ptr @event_class_host1x_cdma_push, ptr @event_class_host1x_cdma_push_gather, ptr @event_class_host1x_cdma_push_wide, ptr @event_class_host1x_channel_submit, ptr @event_class_host1x_channel_submit_complete, ptr @event_class_host1x_channel_submitted, ptr @event_class_host1x_syncpt_load_min, ptr @event_class_host1x_syncpt_wait_check, ptr @event_class_host1x_wait_cdma, ptr @event_host1x_cdma_begin, ptr @event_host1x_cdma_end, ptr @event_host1x_cdma_push, ptr @event_host1x_cdma_push_gather, ptr @event_host1x_cdma_push_wide, ptr @event_host1x_channel_open, ptr @event_host1x_channel_release, ptr @event_host1x_channel_submit, ptr @event_host1x_channel_submit_complete, ptr @event_host1x_channel_submitted, ptr @event_host1x_syncpt_load_min, ptr @event_host1x_syncpt_wait_check, ptr @event_host1x_wait_cdma, ptr @host1x_get_resets._entry, ptr @host1x_get_resets._entry_ptr, ptr @host1x_iommu_init._entry, ptr @host1x_iommu_init._entry.74, ptr @host1x_iommu_init._entry_ptr, ptr @host1x_iommu_init._entry_ptr.76, ptr @host1x_probe._entry, ptr @host1x_probe._entry.45, ptr @host1x_probe._entry.48, ptr @host1x_probe._entry.52, ptr @host1x_probe._entry.55, ptr @host1x_probe._entry.58, ptr @host1x_probe._entry.61, ptr @host1x_probe._entry.64, ptr @host1x_probe._entry_ptr, ptr @host1x_probe._entry_ptr.47, ptr @host1x_probe._entry_ptr.50, ptr @host1x_probe._entry_ptr.54, ptr @host1x_probe._entry_ptr.57, ptr @host1x_probe._entry_ptr.60, ptr @host1x_probe._entry_ptr.63, ptr @host1x_probe._entry_ptr.66, ptr @host1x_runtime_resume._entry, ptr @host1x_runtime_resume._entry.81, ptr @host1x_runtime_resume._entry.84, ptr @host1x_runtime_resume._entry_ptr, ptr @host1x_runtime_resume._entry_ptr.83, ptr @host1x_runtime_resume._entry_ptr.86, ptr @host1x_runtime_suspend._entry, ptr @host1x_runtime_suspend._entry_ptr, ptr @tegra_host1x_exit, ptr @str__host1x__trace_system_name, ptr @trace_event_fields_host1x, ptr @trace_event_type_funcs_host1x, ptr @print_fmt_host1x, ptr @trace_event_fields_host1x_cdma_push, ptr @trace_event_type_funcs_host1x_cdma_push, ptr @print_fmt_host1x_cdma_push, ptr @trace_event_fields_host1x_cdma_push_wide, ptr @trace_event_type_funcs_host1x_cdma_push_wide, ptr @print_fmt_host1x_cdma_push_wide, ptr @trace_event_fields_host1x_cdma_push_gather, ptr @trace_event_type_funcs_host1x_cdma_push_gather, ptr @print_fmt_host1x_cdma_push_gather, ptr @trace_event_fields_host1x_channel_submit, ptr @trace_event_type_funcs_host1x_channel_submit, ptr @print_fmt_host1x_channel_submit, ptr @trace_event_fields_host1x_channel_submitted, ptr @trace_event_type_funcs_host1x_channel_submitted, ptr @print_fmt_host1x_channel_submitted, ptr @trace_event_fields_host1x_channel_submit_complete, ptr @trace_event_type_funcs_host1x_channel_submit_complete, ptr @print_fmt_host1x_channel_submit_complete, ptr @trace_event_fields_host1x_wait_cdma, ptr @trace_event_type_funcs_host1x_wait_cdma, ptr @print_fmt_host1x_wait_cdma, ptr @trace_event_fields_host1x_syncpt_load_min, ptr @trace_event_type_funcs_host1x_syncpt_load_min, ptr @print_fmt_host1x_syncpt_load_min, ptr @trace_event_fields_host1x_syncpt_wait_check, ptr @trace_event_type_funcs_host1x_syncpt_wait_check, ptr @print_fmt_host1x_syncpt_wait_check, ptr @drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @tegra_host1x_driver, ptr @.str.37, ptr @host1x_of_match, ptr @host1x_pm_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @host1x_probe.__key, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @host1x_bo_cache_init.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @host1x07_info, ptr @host1x06_info, ptr @host1x05_info, ptr @host1x04_info, ptr @host1x02_info, ptr @host1x01_info, ptr @tegra194_sid_table, ptr @tegra186_sid_table, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__host1x__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_channel_open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_channel_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_cdma_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_cdma_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_cdma_push to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_cdma_push to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_cdma_push to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_cdma_push to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_cdma_push_wide to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_cdma_push_wide to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_cdma_push_wide to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_cdma_push_wide to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_cdma_push_gather to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_cdma_push_gather to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_cdma_push_gather to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_cdma_push_gather to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_channel_submit to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_channel_submit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_channel_submit to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_channel_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_channel_submitted to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_channel_submitted to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_channel_submitted to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_channel_submitted to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_channel_submit_complete to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_channel_submit_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_channel_submit_complete to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_channel_submit_complete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_wait_cdma to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_wait_cdma to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_wait_cdma to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_wait_cdma to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_syncpt_load_min to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_syncpt_load_min to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_syncpt_load_min to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_syncpt_load_min to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_host1x_syncpt_wait_check to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_host1x_syncpt_wait_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_host1x_syncpt_wait_check to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_host1x_syncpt_wait_check to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_host1x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_bo_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_get_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_iommu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_iommu_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x07_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x06_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x05_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x04_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x02_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x01_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_sid_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sid_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_runtime_resume._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_runtime_resume._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_open(ptr nocapture readnone %__data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_channel_open, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_release(ptr nocapture readnone %__data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_channel_release, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_begin(ptr nocapture readnone %__data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_end(ptr nocapture readnone %__data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push_wide(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push_gather(ptr nocapture readnone %__data, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef %cmdbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef %cmdbuf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submit(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submitted(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submit_complete(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_wait_cdma(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %eventid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %eventid) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_syncpt_load_min(ptr nocapture readnone %__data, i32 noundef %id, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %id, i32 noundef %val) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_syncpt_wait_check(ptr nocapture readnone %__data, ptr noundef %bo, i32 noundef %offset, i32 noundef %syncpt_id, i32 noundef %thresh, i32 noundef %min) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_host1x_syncpt_wait_check, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bo, i32 noundef %offset, i32 noundef %syncpt_id, i32 noundef %thresh, i32 noundef %min) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x(ptr noundef %__data, ptr noundef %name) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x(ptr noundef %__data, ptr noundef %name) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %op17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %op17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %op1, ptr %op17, align 4
  %op28 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %op28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %op2, ptr %op28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %op118 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %op118 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %op1, ptr %op118, align 4
  %op219 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %op219 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %op2, ptr %op219, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push_wide(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %op17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %op17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %op1, ptr %op17, align 4
  %op28 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %op28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %op2, ptr %op28, align 4
  %op39 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %op39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %op3, ptr %op39, align 4
  %op410 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %op410 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %op4, ptr %op410, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push_wide(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %op118 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %op118 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %op1, ptr %op118, align 4
  %op219 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %op219 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %op2, ptr %op219, align 4
  %op320 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %op320 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %op3, ptr %op320, align 4
  %op421 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %op421 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %op4, ptr %op421, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push_gather(ptr noundef %__data, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef readonly %cmdbuf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mul.i = shl i32 %words, 2
  %add = add i32 %mul.i, 32
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl i32 %words, 18
  %or.i = or i32 %shl.i, 32
  %__data_loc_cmdbuf = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_cmdbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_cmdbuf, align 4
  %tobool7 = icmp ne ptr %cmdbuf, null
  br i1 %tobool7, label %if.then8, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %add.ptr10 = getelementptr i8, ptr %cmdbuf, i32 %offset
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr10, i32 %mul.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  %cmdbuf13 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 5
  %frombool = zext i1 %tobool7 to i8
  %5 = ptrtoint ptr %cmdbuf13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %cmdbuf13, align 4
  %name14 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name14, align 4
  %bo15 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %bo15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bo, ptr %bo15, align 4
  %words16 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %words16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %words, ptr %words16, align 4
  %offset17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %offset17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offset, ptr %offset17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push_gather(ptr noundef %__data, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef readonly %cmdbuf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %mul.i = shl i32 %words, 2
  %shl.i = shl i32 %words, 18
  %or.i = or i32 %shl.i, 32
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %mul.i, 43
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_cmdbuf = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_cmdbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_cmdbuf, align 4
  %tobool18 = icmp ne ptr %cmdbuf, null
  br i1 %tobool18, label %if.then19, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %add.ptr22 = getelementptr i8, ptr %cmdbuf, i32 %offset
  %28 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr22, i32 %mul.i)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %cmdbuf25 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 5
  %frombool = zext i1 %tobool18 to i8
  %29 = ptrtoint ptr %cmdbuf25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %cmdbuf25, align 4
  %name26 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %name26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %name, ptr %name26, align 4
  %bo27 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %bo27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %bo, ptr %bo27, align 4
  %words28 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %words28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %words, ptr %words28, align 4
  %offset29 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %offset29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %offset, ptr %offset29, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submit(ptr noundef %__data, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %cmdbufs7 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %cmdbufs7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cmdbufs, ptr %cmdbufs7, align 4
  %relocs8 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %relocs8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %relocs, ptr %relocs8, align 4
  %syncpt_id9 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %syncpt_id9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %syncpt_id, ptr %syncpt_id9, align 4
  %syncpt_incrs10 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %syncpt_incrs10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %syncpt_incrs, ptr %syncpt_incrs10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submit(ptr noundef %__data, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %cmdbufs18 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %cmdbufs18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cmdbufs, ptr %cmdbufs18, align 4
  %relocs19 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %relocs19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %relocs, ptr %relocs19, align 4
  %syncpt_id20 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %syncpt_id20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %syncpt_id, ptr %syncpt_id20, align 4
  %syncpt_incrs21 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %syncpt_incrs21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %syncpt_incrs, ptr %syncpt_incrs21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submitted(ptr noundef %__data, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %syncpt_base7 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %syncpt_base7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %syncpt_base, ptr %syncpt_base7, align 4
  %syncpt_max8 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %syncpt_max8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %syncpt_max, ptr %syncpt_max8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submitted(ptr noundef %__data, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %syncpt_base18 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %syncpt_base18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %syncpt_base, ptr %syncpt_base18, align 4
  %syncpt_max19 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %syncpt_max19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %syncpt_max, ptr %syncpt_max19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submit_complete(ptr noundef %__data, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %count7 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %count7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %count7, align 4
  %thresh8 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %thresh8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %thresh, ptr %thresh8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submit_complete(ptr noundef %__data, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %count18 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %count18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %count, ptr %count18, align 4
  %thresh19 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %thresh19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %thresh, ptr %thresh19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_wait_cdma(ptr noundef %__data, ptr noundef %name, i32 noundef %eventid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name6 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name6, align 4
  %eventid7 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %eventid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %eventid, ptr %eventid7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_wait_cdma(ptr noundef %__data, ptr noundef %name, i32 noundef %eventid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %name17 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name, ptr %name17, align 4
  %eventid18 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %eventid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %eventid, ptr %eventid18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_syncpt_load_min(ptr noundef %__data, i32 noundef %id, i32 noundef %val) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %id6 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id6, align 4
  %val7 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %val, ptr %val7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_syncpt_load_min(ptr noundef %__data, i32 noundef %id, i32 noundef %val) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id, ptr %id17, align 4
  %val18 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %val18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %val, ptr %val18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_syncpt_wait_check(ptr noundef %__data, ptr noundef %bo, i32 noundef %offset, i32 noundef %syncpt_id, i32 noundef %thresh, i32 noundef %min) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !317

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !318

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bo6 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bo6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bo, ptr %bo6, align 4
  %offset7 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %offset, ptr %offset7, align 4
  %syncpt_id8 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %syncpt_id8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %syncpt_id, ptr %syncpt_id8, align 4
  %thresh9 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %thresh9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %thresh, ptr %thresh9, align 4
  %min10 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %min10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %min, ptr %min10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_host1x_syncpt_wait_check(ptr noundef %__data, ptr noundef %bo, i32 noundef %offset, i32 noundef %syncpt_id, i32 noundef %thresh, i32 noundef %min) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !319
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !307) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !307) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bo17 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bo17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bo, ptr %bo17, align 4
  %offset18 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %offset, ptr %offset18, align 4
  %syncpt_id19 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %syncpt_id19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %syncpt_id, ptr %syncpt_id19, align 4
  %thresh20 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %thresh20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %thresh, ptr %thresh20, align 4
  %min21 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %min21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %min, ptr %min21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x(ptr noundef %__data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_cdma_push(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %op1 to i64
  %conv8 = zext i32 %op2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_cdma_push_wide(ptr noundef %__data, ptr noundef %name, i32 noundef %op1, i32 noundef %op2, i32 noundef %op3, i32 noundef %op4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %op1 to i64
  %conv8 = zext i32 %op2 to i64
  %conv12 = zext i32 %op3 to i64
  %conv16 = zext i32 %op4 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_cdma_push_gather(ptr noundef %__data, ptr noundef %name, ptr noundef %bo, i32 noundef %words, i32 noundef %offset, ptr noundef %cmdbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %bo to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %words to i64
  %conv12 = zext i32 %offset to i64
  %2 = ptrtoint ptr %cmdbuf to i32
  %conv16 = zext i32 %2 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_channel_submit(ptr noundef %__data, ptr noundef %name, i32 noundef %cmdbufs, i32 noundef %relocs, i32 noundef %syncpt_id, i32 noundef %syncpt_incrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cmdbufs to i64
  %conv8 = zext i32 %relocs to i64
  %conv12 = zext i32 %syncpt_id to i64
  %conv16 = zext i32 %syncpt_incrs to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_channel_submitted(ptr noundef %__data, ptr noundef %name, i32 noundef %syncpt_base, i32 noundef %syncpt_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %syncpt_base to i64
  %conv8 = zext i32 %syncpt_max to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_channel_submit_complete(ptr noundef %__data, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %count to i64
  %conv8 = zext i32 %thresh to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_wait_cdma(ptr noundef %__data, ptr noundef %name, i32 noundef %eventid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %eventid to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_syncpt_load_min(ptr noundef %__data, i32 noundef %id, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %id to i64
  %conv4 = zext i32 %val to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_host1x_syncpt_wait_check(ptr noundef %__data, ptr noundef %bo, i32 noundef %offset, i32 noundef %syncpt_id, i32 noundef %thresh, i32 noundef %min) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %bo to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %offset to i64
  %conv8 = zext i32 %syncpt_id to i64
  %conv12 = zext i32 %thresh to i64
  %conv16 = zext i32 %min to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_hypervisor_writel(ptr nocapture noundef readonly %host1x, i32 noundef %v, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %v)
  %hv_regs = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 2
  %1 = ptrtoint ptr %hv_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hv_regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %r
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !321
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_hypervisor_readl(ptr nocapture noundef readonly %host1x, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hv_regs = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 2
  %0 = ptrtoint ptr %hv_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hv_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %r
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !322
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_sync_writel(ptr nocapture noundef readonly %host1x, i32 noundef %v, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %host1x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1x, align 4
  %sync_offset = getelementptr inbounds %struct.host1x_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %v)
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %r
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #11, !srcloc !321
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_sync_readl(ptr nocapture noundef readonly %host1x, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %host1x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1x, align 4
  %sync_offset = getelementptr inbounds %struct.host1x_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sync_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %r
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !322
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_ch_writel(ptr nocapture noundef readonly %ch, i32 noundef %v, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %v)
  %regs = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 3
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %r
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !321
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_ch_readl(ptr nocapture noundef readonly %ch, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.host1x_channel, ptr %ch, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %r
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !322
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_host1x_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @host1x_bus_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bus_unregister(ptr noundef nonnull @host1x_bus_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_host1x_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #11
  tail call void @bus_unregister(ptr noundef nonnull @host1x_bus_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @host1x_get_dma_mask(ptr nocapture noundef readonly %host1x) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host1x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1x, align 4
  %dma_mask = getelementptr inbounds %struct.host1x_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dma_mask, align 8
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %3) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %op1 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op1, align 4
  %op2 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op2, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push_wide(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %op1 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op1, align 4
  %op2 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %op2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op2, align 4
  %op3 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %op3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %op3, align 4
  %op4 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %op4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op4, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push_gather(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %bo = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %words = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %words, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %__data_loc_cmdbuf = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %__data_loc_cmdbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_cmdbuf, align 4
  %and = and i32 %11, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cmdbuf = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmdbuf, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %mul = shl i32 %7, 2
  %spec.select = select i1 %tobool.not, i32 0, i32 %mul
  %call2 = tail call ptr @trace_print_hex_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %spec.select, i1 noundef zeroext false) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %call2) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmdbufs = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cmdbufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdbufs, align 4
  %relocs = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %relocs, align 4
  %syncpt_id = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %syncpt_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %syncpt_id, align 4
  %syncpt_incrs = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %syncpt_incrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %syncpt_incrs, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submitted(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %syncpt_base = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %syncpt_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %syncpt_base, align 4
  %syncpt_max = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %syncpt_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syncpt_max, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submit_complete(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %count = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %thresh = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thresh, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, ptr noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_wait_cdma(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %name = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %eventid = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eventid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eventid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %3, i32 noundef %5) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_syncpt_load_min(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %val = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.34, i32 noundef %3, i32 noundef %5) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_syncpt_wait_check(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %syncpt_id = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %syncpt_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syncpt_id, align 4
  %thresh = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thresh, align 4
  %min = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1688, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %has_hypervisor = getelementptr inbounds %struct.host1x_info, ptr %call2, i32 0, i32 8
  %1 = ptrtoint ptr %has_hypervisor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_hypervisor, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.38) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #14
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %call11 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.44) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %regs.0 = phi ptr [ %call6, %if.end10.if.end27_crit_edge ], [ %call19, %if.else.if.end27_crit_edge ]
  %hv_regs.0 = phi ptr [ %call11, %if.end10.if.end27_crit_edge ], [ null, %if.else.if.end27_crit_edge ]
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %cache = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 29
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %cache, ptr %cache, align 4
  %prev.i.i = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 29, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cache, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 29, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @host1x_bo_cache_init.__key) #11
  %devices_lock = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %devices_lock, ptr noundef nonnull @.str.51, ptr noundef nonnull @host1x_probe.__key) #11
  %devices = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 26
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %devices, ptr %prev.i, align 4
  %list = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 27
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 4
  %prev.i238 = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 27, i32 1
  %8 = ptrtoint ptr %prev.i238 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i238, align 4
  %dev35 = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev35, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %regs.0) #11
  %regs38 = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regs38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call37, ptr %regs38, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %has_hypervisor46 = getelementptr inbounds %struct.host1x_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %has_hypervisor46 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_hypervisor46, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp eq i8 %16, 0
  br i1 %tobool47.not, label %if.end44.if.end58_crit_edge, label %if.then48

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then48:                                        ; preds = %if.end44
  %call50 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %hv_regs.0) #11
  %hv_regs51 = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %hv_regs51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %hv_regs51, align 4
  %cmp.i239 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.then54, label %if.then48.if.end58_crit_edge

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.then48.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %dma_parms = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 28
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 4
  %dma_parms60 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %dma_parms60 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dma_parms, ptr %dma_parms60, align 4
  %22 = load ptr, ptr %dev35, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end58.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end58.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end58.dma_set_max_seg_size.exit_crit_edge
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %init = getelementptr inbounds %struct.host1x_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init, align 8
  %tobool64.not = icmp eq ptr %29, null
  br i1 %tobool64.not, label %dma_set_max_seg_size.exit.if.end72_crit_edge, label %if.then65

dma_set_max_seg_size.exit.if.end72_crit_edge:     ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then65:                                        ; preds = %dma_set_max_seg_size.exit
  %call68 = tail call i32 %29(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then65.if.end72_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end72:                                         ; preds = %if.then65.if.end72_crit_edge, %dma_set_max_seg_size.exit.if.end72_crit_edge
  %call74 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call74, ptr %clk, align 4
  %cmp.i240 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then77, label %if.end87

if.then77:                                        ; preds = %if.end72
  %cmp80.not = icmp eq ptr %call74, inttoptr (i32 -517 to ptr)
  br i1 %cmp80.not, label %if.then77.cleanup_crit_edge, label %do.end84

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end84:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %31) #14
  br label %cleanup

if.end87:                                         ; preds = %if.end72
  %resets.i = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %resets.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.68, ptr %resets.i, align 4
  %arrayidx2.i = getelementptr %struct.host1x, ptr %call.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.69, ptr %arrayidx2.i, align 4
  %nresets.i = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %nresets.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %nresets.i, align 4
  %35 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev35, align 4
  %call.i.i = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %36, i32 noundef 2, ptr noundef %resets.i, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i241 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i241, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.70, i32 noundef %call.i.i) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end87
  %rstc.i = getelementptr %struct.host1x, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %39 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rstc.i, align 4
  %tobool9.not.i = icmp eq ptr %40, null
  br i1 %tobool9.not.i, label %do.end22.i, label %if.end91, !prof !318

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 405, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end91:                                         ; preds = %if.end.i
  %call92 = tail call fastcc i32 @host1x_iommu_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end99

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call92) #14
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  %channel_list = getelementptr inbounds %struct.host1x, ptr %call.i, i32 0, i32 23
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %call101 = tail call i32 @host1x_channel_list_init(ptr noundef %channel_list, i32 noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #14
  br label %iommu_exit

if.end108:                                        ; preds = %if.end99
  %call109 = tail call i32 @host1x_syncpt_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end116, label %do.end114

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #14
  br label %free_channels

if.end116:                                        ; preds = %if.end108
  %call117 = tail call i32 @host1x_intr_init(ptr noundef nonnull %call.i, i32 noundef %call28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #14
  br label %deinit_syncpt

if.end124:                                        ; preds = %if.end116
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #11
  %45 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %opp_params.i, align 1
  %call.i242 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i242)
  %cmp.not.i = icmp eq i32 %call.i242, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i242
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool128.not = icmp eq i32 %.call.i, 0
  br i1 %tobool128.not, label %if.end130, label %if.end124.pm_disable_crit_edge

if.end124.pm_disable_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_disable

if.end130:                                        ; preds = %if.end124
  %call132 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.pm_disable_crit_edge

if.end130.pm_disable_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_disable

if.end135:                                        ; preds = %if.end130
  call void @host1x_debug_init(ptr noundef nonnull %call.i) #11
  %call136 = call i32 @host1x_register(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end135.deinit_debugfs_crit_edge, label %if.end139

if.end135.deinit_debugfs_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_debugfs

if.end139:                                        ; preds = %if.end135
  %call141 = call i32 @devm_of_platform_populate(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %unregister, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

unregister:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %call145 = call i32 @host1x_unregister(ptr noundef nonnull %call.i) #11
  br label %deinit_debugfs

deinit_debugfs:                                   ; preds = %unregister, %if.end135.deinit_debugfs_crit_edge
  %err.0 = phi i32 [ %call136, %if.end135.deinit_debugfs_crit_edge ], [ %call141, %unregister ]
  call void @host1x_debug_deinit(ptr noundef nonnull %call.i) #11
  %call.i243 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #11
  br label %pm_disable

pm_disable:                                       ; preds = %deinit_debugfs, %if.end130.pm_disable_crit_edge, %if.end124.pm_disable_crit_edge
  %err.1 = phi i32 [ %.call.i, %if.end124.pm_disable_crit_edge ], [ %call132, %if.end130.pm_disable_crit_edge ], [ %err.0, %deinit_debugfs ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  call void @host1x_intr_deinit(ptr noundef nonnull %call.i) #11
  br label %deinit_syncpt

deinit_syncpt:                                    ; preds = %pm_disable, %do.end122
  %err.2 = phi i32 [ %call117, %do.end122 ], [ %err.1, %pm_disable ]
  call void @host1x_syncpt_deinit(ptr noundef nonnull %call.i) #11
  br label %free_channels

free_channels:                                    ; preds = %deinit_syncpt, %do.end114
  %err.3 = phi i32 [ %call109, %do.end114 ], [ %err.2, %deinit_syncpt ]
  call void @host1x_channel_list_free(ptr noundef %channel_list) #11
  br label %iommu_exit

iommu_exit:                                       ; preds = %free_channels, %do.end106
  %err.4 = phi i32 [ %call101, %do.end106 ], [ %err.3, %free_channels ]
  call fastcc void @host1x_iommu_exit(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %iommu_exit, %if.end139.cleanup_crit_edge, %do.end97, %do.end22.i, %do.end.i, %do.end84, %if.then77.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.then54, %if.then41, %if.end27.cleanup_crit_edge, %do.end24, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then41 ], [ %18, %if.then54 ], [ %call92, %do.end97 ], [ %err.4, %iommu_exit ], [ -6, %do.end16 ], [ -6, %do.end ], [ -6, %do.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call68, %if.then65.cleanup_crit_edge ], [ %31, %do.end84 ], [ -517, %if.then77.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ], [ -2, %do.end22.i ], [ %call.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @host1x_unregister(ptr noundef %1) #11
  tail call void @host1x_debug_deinit(ptr noundef %1) #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  tail call void @host1x_intr_deinit(ptr noundef %1) #11
  tail call void @host1x_syncpt_deinit(ptr noundef %1) #11
  %domain.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.host1x_iommu_exit.exit_crit_edge, label %if.then.i

entry.host1x_iommu_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_iommu_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iova.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 11
  tail call void @put_iova_domain(ptr noundef %iova.i) #11
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain.i, align 4
  %group.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  tail call void @iommu_detach_group(ptr noundef %5, ptr noundef %7) #11
  %8 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain.i, align 4
  tail call void @iommu_domain_free(ptr noundef %9) #11
  %10 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %domain.i, align 4
  tail call void @iova_cache_put() #11
  %11 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group.i, align 4
  tail call void @iommu_group_put(ptr noundef %12) #11
  %13 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %group.i, align 4
  br label %host1x_iommu_exit.exit

host1x_iommu_exit.exit:                           ; preds = %if.then.i, %entry.host1x_iommu_exit.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 29, i32 1
  tail call void @mutex_destroy(ptr noundef %lock.i) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @host1x_iommu_init(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dma_mask = getelementptr inbounds %struct.host1x_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dma_mask, align 8
  %dev.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %5) #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %archdata.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %archdata.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @arm_iommu_detach_device(ptr noundef %7) #11
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %9) #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call8.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %11) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %domain.0.i = phi ptr [ %call8.i, %if.then.i ], [ %call.i, %entry.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %dma_mask.i.i = getelementptr inbounds %struct.host1x_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dma_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %15)
  %cmp.i.i = icmp ugt i64 %15, 4294967295
  %tobool10.not.i = icmp eq ptr %domain.0.i, null
  %or.cond.i = select i1 %cmp.i.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.host1x_iommu_attach.exit_crit_edge

if.end.i.host1x_iommu_attach.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_iommu_attach.exit

if.end12.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call14.i = tail call ptr @iommu_group_get(ptr noundef %17) #11
  %group.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 9
  %18 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14.i, ptr %group.i, align 4
  %tobool16.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i, label %if.end12.i.land.lhs.true_crit_edge, label %if.then17.i

if.end12.i.land.lhs.true_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then17.i:                                      ; preds = %if.end12.i
  %call18.i = tail call i32 @iova_cache_get() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %if.then17.i.put_group.i_crit_edge, label %if.end20.i

if.then17.i.put_group.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_group.i

if.end20.i:                                       ; preds = %if.then17.i
  %call21.i = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #11
  %domain22.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 10
  %19 = ptrtoint ptr %domain22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21.i, ptr %domain22.i, align 4
  %tobool24.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool24.not.i, label %if.end20.i.put_cache.i_crit_edge, label %if.end26.i

if.end20.i.put_cache.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cache.i

if.end26.i:                                       ; preds = %if.end20.i
  %20 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group.i, align 4
  %call29.i = tail call i32 @iommu_attach_group(ptr noundef nonnull %call21.i, ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %cleanup.thread.i, label %free_domain.i

cleanup.thread.i:                                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %domain22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain22.i, align 4
  %geometry37.i = getelementptr inbounds %struct.iommu_domain, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %geometry37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %geometry37.i, align 4
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %dma_mask.i = getelementptr inbounds %struct.host1x_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dma_mask.i, align 8
  %30 = trunc i64 %29 to i32
  %conv38.i = and i32 %25, %30
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %23, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aperture_end.i, align 4
  %conv43.i = and i32 %32, %30
  %pgsize_bitmap.i = getelementptr inbounds %struct.iommu_domain, ptr %23, i32 0, i32 2
  %33 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pgsize_bitmap.i, align 4
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #11, !range !329
  %iova.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 11
  %shl.i = shl nuw i32 1, %35
  %shr.i = lshr i32 %conv38.i, %35
  tail call void @init_iova_domain(ptr noundef %iova.i, i32 noundef %shl.i, i32 noundef %shr.i) #11
  %iova_end.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 12
  %36 = ptrtoint ptr %iova_end.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv43.i, ptr %iova_end.i, align 4
  %37 = ptrtoint ptr %domain22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domain22.i, align 4
  br label %host1x_iommu_attach.exit

free_domain.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call29.i)
  %cmp32.i = icmp eq i32 %call29.i, -19
  %spec.store.select.i = select i1 %cmp32.i, i32 0, i32 %call29.i
  %39 = ptrtoint ptr %domain22.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain22.i, align 4
  tail call void @iommu_domain_free(ptr noundef %40) #11
  %41 = ptrtoint ptr %domain22.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %domain22.i, align 4
  br label %put_cache.i

put_cache.i:                                      ; preds = %free_domain.i, %if.end20.i.put_cache.i_crit_edge
  %err.0100.i = phi i32 [ %spec.store.select.i, %free_domain.i ], [ -12, %if.end20.i.put_cache.i_crit_edge ]
  tail call void @iova_cache_put() #11
  br label %put_group.i

put_group.i:                                      ; preds = %put_cache.i, %if.then17.i.put_group.i_crit_edge
  %err.095.i = phi i32 [ %err.0100.i, %put_cache.i ], [ %call18.i, %if.then17.i.put_group.i_crit_edge ]
  %42 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %group.i, align 4
  tail call void @iommu_group_put(ptr noundef %43) #11
  %44 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %group.i, align 4
  %45 = inttoptr i32 %err.095.i to ptr
  br label %host1x_iommu_attach.exit

host1x_iommu_attach.exit:                         ; preds = %put_group.i, %cleanup.thread.i, %if.end.i.host1x_iommu_attach.exit_crit_edge
  %retval.0.i = phi ptr [ %45, %put_group.i ], [ %domain.0.i, %if.end.i.host1x_iommu_attach.exit_crit_edge ], [ %38, %cleanup.thread.i ]
  %cmp.i28 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.then, label %if.end

if.then:                                          ; preds = %host1x_iommu_attach.exit
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %retval.0.i to i32
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.72, i32 noundef %46) #14
  br label %cleanup

if.end:                                           ; preds = %host1x_iommu_attach.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end12.i.land.lhs.true_crit_edge
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host, align 4
  %has_wide_gather = getelementptr inbounds %struct.host1x_info, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %has_wide_gather to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_wide_gather, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool4.not = icmp eq i8 %52, 0
  %spec.select = select i1 %tobool4.not, i64 4294967295, i64 %3
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end.if.end6_crit_edge
  %mask.0 = phi i64 [ %3, %if.end.if.end6_crit_edge ], [ %spec.select, %land.lhs.true ]
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 19
  %dma_mask.i29 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %dma_mask.i29 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i29, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %54, i64 noundef %mask.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i30 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i30, label %dma_coerce_mask_and_coherent.exit.thread, label %dma_coerce_mask_and_coherent.exit

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %54, i64 noundef %mask.0) #11
  br label %cleanup

dma_coerce_mask_and_coherent.exit:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end12, label %dma_coerce_mask_and_coherent.exit.cleanup_crit_edge

dma_coerce_mask_and_coherent.exit.cleanup_crit_edge: ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %dma_coerce_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.75, i32 noundef %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %dma_coerce_mask_and_coherent.exit.cleanup_crit_edge, %dma_coerce_mask_and_coherent.exit.thread, %if.then
  %retval.0 = phi i32 [ %46, %if.then ], [ %call.i.i, %do.end12 ], [ 0, %dma_coerce_mask_and_coherent.exit.cleanup_crit_edge ], [ 0, %dma_coerce_mask_and_coherent.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_channel_list_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !331
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !332
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @host1x_iommu_exit(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iova = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 11
  tail call void @put_iova_domain(ptr noundef %iova) #11
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %group = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  tail call void @iommu_detach_group(ptr noundef %3, ptr noundef %5) #11
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %7) #11
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %domain, align 4
  tail call void @iova_cache_put() #11
  %9 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %10) #11
  %11 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %group, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x07_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x06_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x05_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x04_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x02_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x01_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @host1x_intr_stop(ptr noundef %1) #11
  tail call void @host1x_syncpt_save(ptr noundef %1) #11
  %nresets = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @reset_control_bulk_assert(i32 noundef %3, ptr noundef %resets) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call1) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %has_hypervisor.i = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %has_hypervisor.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_hypervisor.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.host1x_setup_sid_table.exit_crit_edge, label %for.cond.preheader.i

do.end.host1x_setup_sid_table.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.cond.preheader.i:                             ; preds = %do.end
  %num_sid_entries.i = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %num_sid_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sid_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not.i = icmp eq i32 %9, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sid_table.i = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 10
  %hv_regs.i.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sid_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sid_table.i, align 8
  %arrayidx.i = getelementptr %struct.host1x_sid_entry, ptr %11, i32 %i.017.i
  %offset.i = getelementptr %struct.host1x_sid_entry, ptr %11, i32 %i.017.i, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %17 = ptrtoint ptr %hv_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hv_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #11, !srcloc !321
  %limit.i = getelementptr %struct.host1x_sid_entry, ptr %11, i32 %i.017.i, i32 2
  %19 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %24 = ptrtoint ptr %hv_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hv_regs.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %23) #11, !srcloc !321
  %inc.i = add nuw i32 %i.017.i, 1
  %26 = ptrtoint ptr %num_sid_entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sid_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.host1x_setup_sid_table.exit_crit_edge

for.body.i.host1x_setup_sid_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

host1x_setup_sid_table.exit:                      ; preds = %for.body.i.host1x_setup_sid_table.exit_crit_edge, %for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge, %do.end.host1x_setup_sid_table.exit_crit_edge
  tail call void @host1x_syncpt_restore(ptr noundef %1) #11
  tail call void @host1x_intr_start(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %clk = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  tail call void @clk_unprepare(ptr noundef %29) #11
  %30 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nresets, align 4
  tail call void @reset_control_bulk_release(i32 noundef %31, ptr noundef %resets) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %host1x_setup_sid_table.exit
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nresets = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @reset_control_bulk_acquire(i32 noundef %3, ptr noundef %resets) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i, %if.end.do.end7_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %retval.0.i.ph) #14
  br label %release_reset

if.end8:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nresets, align 4
  %call12 = tail call i32 @reset_control_bulk_deassert(i32 noundef %7, ptr noundef %resets) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call12) #14
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %release_reset

if.end17:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %has_hypervisor.i = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %has_hypervisor.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_hypervisor.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i43 = icmp eq i8 %13, 0
  br i1 %tobool.not.i43, label %if.end17.host1x_setup_sid_table.exit_crit_edge, label %for.cond.preheader.i

if.end17.host1x_setup_sid_table.exit_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.cond.preheader.i:                             ; preds = %if.end17
  %num_sid_entries.i = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %num_sid_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sid_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.not.i = icmp eq i32 %15, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sid_table.i = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 10
  %hv_regs.i.i = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %sid_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sid_table.i, align 8
  %arrayidx.i = getelementptr %struct.host1x_sid_entry, ptr %17, i32 %i.017.i
  %offset.i = getelementptr %struct.host1x_sid_entry, ptr %17, i32 %i.017.i, i32 1
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %23 = ptrtoint ptr %hv_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hv_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #11, !srcloc !321
  %limit.i = getelementptr %struct.host1x_sid_entry, ptr %17, i32 %i.017.i, i32 2
  %25 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %limit.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %30 = ptrtoint ptr %hv_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hv_regs.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %29) #11, !srcloc !321
  %inc.i = add nuw i32 %i.017.i, 1
  %32 = ptrtoint ptr %num_sid_entries.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_sid_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.host1x_setup_sid_table.exit_crit_edge

for.body.i.host1x_setup_sid_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %host1x_setup_sid_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

host1x_setup_sid_table.exit:                      ; preds = %for.body.i.host1x_setup_sid_table.exit_crit_edge, %for.cond.preheader.i.host1x_setup_sid_table.exit_crit_edge, %if.end17.host1x_setup_sid_table.exit_crit_edge
  tail call void @host1x_syncpt_restore(ptr noundef %1) #11
  tail call void @host1x_intr_start(ptr noundef %1) #11
  br label %cleanup

release_reset:                                    ; preds = %do.end16, %do.end7
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end7 ], [ %call12, %do.end16 ]
  %34 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nresets, align 4
  tail call void @reset_control_bulk_release(i32 noundef %35, ptr noundef %resets) #11
  br label %cleanup

cleanup:                                          ; preds = %release_reset, %host1x_setup_sid_table.exit, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.0, %release_reset ], [ 0, %host1x_setup_sid_table.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_save(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !201, !203, !205, !207, !209, !210, !211, !212, !213, !214, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306}
!llvm.named.register.sp = !{!307}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314, !315}
!llvm.ident = !{!316}

!0 = !{ptr @__tracepoint_host1x_channel_open, !1, !"__tracepoint_host1x_channel_open", i1 false, i1 false}
!1 = !{!"../include/trace/events/host1x.h", i32 29, i32 1}
!2 = !{ptr @__tracepoint_ptr_host1x_channel_open, !1, !"__tracepoint_ptr_host1x_channel_open", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_host1x_channel_open, !1, !"__SCK__tp_func_host1x_channel_open", i1 false, i1 false}
!4 = !{ptr @__tracepoint_host1x_channel_release, !5, !"__tracepoint_host1x_channel_release", i1 false, i1 false}
!5 = !{!"../include/trace/events/host1x.h", i32 34, i32 1}
!6 = !{ptr @__tracepoint_ptr_host1x_channel_release, !5, !"__tracepoint_ptr_host1x_channel_release", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_host1x_channel_release, !5, !"__SCK__tp_func_host1x_channel_release", i1 false, i1 false}
!8 = !{ptr @__tracepoint_host1x_cdma_begin, !9, !"__tracepoint_host1x_cdma_begin", i1 false, i1 false}
!9 = !{!"../include/trace/events/host1x.h", i32 39, i32 1}
!10 = !{ptr @__tracepoint_ptr_host1x_cdma_begin, !9, !"__tracepoint_ptr_host1x_cdma_begin", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_host1x_cdma_begin, !9, !"__SCK__tp_func_host1x_cdma_begin", i1 false, i1 false}
!12 = !{ptr @__tracepoint_host1x_cdma_end, !13, !"__tracepoint_host1x_cdma_end", i1 false, i1 false}
!13 = !{!"../include/trace/events/host1x.h", i32 44, i32 1}
!14 = !{ptr @__tracepoint_ptr_host1x_cdma_end, !13, !"__tracepoint_ptr_host1x_cdma_end", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_host1x_cdma_end, !13, !"__SCK__tp_func_host1x_cdma_end", i1 false, i1 false}
!16 = !{ptr @__tracepoint_host1x_cdma_push, !17, !"__tracepoint_host1x_cdma_push", i1 false, i1 false}
!17 = !{!"../include/trace/events/host1x.h", i32 49, i32 1}
!18 = !{ptr @__tracepoint_ptr_host1x_cdma_push, !17, !"__tracepoint_ptr_host1x_cdma_push", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_host1x_cdma_push, !17, !"__SCK__tp_func_host1x_cdma_push", i1 false, i1 false}
!20 = !{ptr @__tracepoint_host1x_cdma_push_wide, !21, !"__tracepoint_host1x_cdma_push_wide", i1 false, i1 false}
!21 = !{!"../include/trace/events/host1x.h", i32 70, i32 1}
!22 = !{ptr @__tracepoint_ptr_host1x_cdma_push_wide, !21, !"__tracepoint_ptr_host1x_cdma_push_wide", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_host1x_cdma_push_wide, !21, !"__SCK__tp_func_host1x_cdma_push_wide", i1 false, i1 false}
!24 = !{ptr @__tracepoint_host1x_cdma_push_gather, !25, !"__tracepoint_host1x_cdma_push_gather", i1 false, i1 false}
!25 = !{!"../include/trace/events/host1x.h", i32 96, i32 1}
!26 = !{ptr @__tracepoint_ptr_host1x_cdma_push_gather, !25, !"__tracepoint_ptr_host1x_cdma_push_gather", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_host1x_cdma_push_gather, !25, !"__SCK__tp_func_host1x_cdma_push_gather", i1 false, i1 false}
!28 = !{ptr @__tracepoint_host1x_channel_submit, !29, !"__tracepoint_host1x_channel_submit", i1 false, i1 false}
!29 = !{!"../include/trace/events/host1x.h", i32 130, i32 1}
!30 = !{ptr @__tracepoint_ptr_host1x_channel_submit, !29, !"__tracepoint_ptr_host1x_channel_submit", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_host1x_channel_submit, !29, !"__SCK__tp_func_host1x_channel_submit", i1 false, i1 false}
!32 = !{ptr @__tracepoint_host1x_channel_submitted, !33, !"__tracepoint_host1x_channel_submitted", i1 false, i1 false}
!33 = !{!"../include/trace/events/host1x.h", i32 158, i32 1}
!34 = !{ptr @__tracepoint_ptr_host1x_channel_submitted, !33, !"__tracepoint_ptr_host1x_channel_submitted", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_host1x_channel_submitted, !33, !"__SCK__tp_func_host1x_channel_submitted", i1 false, i1 false}
!36 = !{ptr @__tracepoint_host1x_channel_submit_complete, !37, !"__tracepoint_host1x_channel_submit_complete", i1 false, i1 false}
!37 = !{!"../include/trace/events/host1x.h", i32 179, i32 1}
!38 = !{ptr @__tracepoint_ptr_host1x_channel_submit_complete, !37, !"__tracepoint_ptr_host1x_channel_submit_complete", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_host1x_channel_submit_complete, !37, !"__SCK__tp_func_host1x_channel_submit_complete", i1 false, i1 false}
!40 = !{ptr @__tracepoint_host1x_wait_cdma, !41, !"__tracepoint_host1x_wait_cdma", i1 false, i1 false}
!41 = !{!"../include/trace/events/host1x.h", i32 200, i32 1}
!42 = !{ptr @__tracepoint_ptr_host1x_wait_cdma, !41, !"__tracepoint_ptr_host1x_wait_cdma", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_host1x_wait_cdma, !41, !"__SCK__tp_func_host1x_wait_cdma", i1 false, i1 false}
!44 = !{ptr @__tracepoint_host1x_syncpt_load_min, !45, !"__tracepoint_host1x_syncpt_load_min", i1 false, i1 false}
!45 = !{!"../include/trace/events/host1x.h", i32 218, i32 1}
!46 = !{ptr @__tracepoint_ptr_host1x_syncpt_load_min, !45, !"__tracepoint_ptr_host1x_syncpt_load_min", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_host1x_syncpt_load_min, !45, !"__SCK__tp_func_host1x_syncpt_load_min", i1 false, i1 false}
!48 = !{ptr @__tracepoint_host1x_syncpt_wait_check, !49, !"__tracepoint_host1x_syncpt_wait_check", i1 false, i1 false}
!49 = !{!"../include/trace/events/host1x.h", i32 236, i32 1}
!50 = !{ptr @__tracepoint_ptr_host1x_syncpt_wait_check, !49, !"__tracepoint_ptr_host1x_syncpt_wait_check", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_host1x_syncpt_wait_check, !49, !"__SCK__tp_func_host1x_syncpt_wait_check", i1 false, i1 false}
!52 = !{ptr @event_class_host1x, !53, !"event_class_host1x", i1 false, i1 false}
!53 = !{!"../include/trace/events/host1x.h", i32 21, i32 1}
!54 = !{ptr @event_host1x_channel_open, !1, !"event_host1x_channel_open", i1 false, i1 false}
!55 = !{ptr @__event_host1x_channel_open, !1, !"__event_host1x_channel_open", i1 false, i1 false}
!56 = !{ptr @event_host1x_channel_release, !5, !"event_host1x_channel_release", i1 false, i1 false}
!57 = !{ptr @__event_host1x_channel_release, !5, !"__event_host1x_channel_release", i1 false, i1 false}
!58 = !{ptr @event_host1x_cdma_begin, !9, !"event_host1x_cdma_begin", i1 false, i1 false}
!59 = !{ptr @__event_host1x_cdma_begin, !9, !"__event_host1x_cdma_begin", i1 false, i1 false}
!60 = !{ptr @event_host1x_cdma_end, !13, !"event_host1x_cdma_end", i1 false, i1 false}
!61 = !{ptr @__event_host1x_cdma_end, !13, !"__event_host1x_cdma_end", i1 false, i1 false}
!62 = !{ptr @event_class_host1x_cdma_push, !17, !"event_class_host1x_cdma_push", i1 false, i1 false}
!63 = !{ptr @event_host1x_cdma_push, !17, !"event_host1x_cdma_push", i1 false, i1 false}
!64 = !{ptr @__event_host1x_cdma_push, !17, !"__event_host1x_cdma_push", i1 false, i1 false}
!65 = !{ptr @event_class_host1x_cdma_push_wide, !21, !"event_class_host1x_cdma_push_wide", i1 false, i1 false}
!66 = !{ptr @event_host1x_cdma_push_wide, !21, !"event_host1x_cdma_push_wide", i1 false, i1 false}
!67 = !{ptr @__event_host1x_cdma_push_wide, !21, !"__event_host1x_cdma_push_wide", i1 false, i1 false}
!68 = !{ptr @event_class_host1x_cdma_push_gather, !25, !"event_class_host1x_cdma_push_gather", i1 false, i1 false}
!69 = !{ptr @event_host1x_cdma_push_gather, !25, !"event_host1x_cdma_push_gather", i1 false, i1 false}
!70 = !{ptr @__event_host1x_cdma_push_gather, !25, !"__event_host1x_cdma_push_gather", i1 false, i1 false}
!71 = !{ptr @event_class_host1x_channel_submit, !29, !"event_class_host1x_channel_submit", i1 false, i1 false}
!72 = !{ptr @event_host1x_channel_submit, !29, !"event_host1x_channel_submit", i1 false, i1 false}
!73 = !{ptr @__event_host1x_channel_submit, !29, !"__event_host1x_channel_submit", i1 false, i1 false}
!74 = !{ptr @event_class_host1x_channel_submitted, !33, !"event_class_host1x_channel_submitted", i1 false, i1 false}
!75 = !{ptr @event_host1x_channel_submitted, !33, !"event_host1x_channel_submitted", i1 false, i1 false}
!76 = !{ptr @__event_host1x_channel_submitted, !33, !"__event_host1x_channel_submitted", i1 false, i1 false}
!77 = !{ptr @event_class_host1x_channel_submit_complete, !37, !"event_class_host1x_channel_submit_complete", i1 false, i1 false}
!78 = !{ptr @event_host1x_channel_submit_complete, !37, !"event_host1x_channel_submit_complete", i1 false, i1 false}
!79 = !{ptr @__event_host1x_channel_submit_complete, !37, !"__event_host1x_channel_submit_complete", i1 false, i1 false}
!80 = !{ptr @event_class_host1x_wait_cdma, !41, !"event_class_host1x_wait_cdma", i1 false, i1 false}
!81 = !{ptr @event_host1x_wait_cdma, !41, !"event_host1x_wait_cdma", i1 false, i1 false}
!82 = !{ptr @__event_host1x_wait_cdma, !41, !"__event_host1x_wait_cdma", i1 false, i1 false}
!83 = !{ptr @event_class_host1x_syncpt_load_min, !45, !"event_class_host1x_syncpt_load_min", i1 false, i1 false}
!84 = !{ptr @event_host1x_syncpt_load_min, !45, !"event_host1x_syncpt_load_min", i1 false, i1 false}
!85 = !{ptr @__event_host1x_syncpt_load_min, !45, !"__event_host1x_syncpt_load_min", i1 false, i1 false}
!86 = !{ptr @event_class_host1x_syncpt_wait_check, !49, !"event_class_host1x_syncpt_wait_check", i1 false, i1 false}
!87 = !{ptr @event_host1x_syncpt_wait_check, !49, !"event_host1x_syncpt_wait_check", i1 false, i1 false}
!88 = !{ptr @__event_host1x_syncpt_wait_check, !49, !"__event_host1x_syncpt_wait_check", i1 false, i1 false}
!89 = !{ptr @__bpf_trace_tp_map_host1x_channel_open, !1, !"__bpf_trace_tp_map_host1x_channel_open", i1 false, i1 false}
!90 = !{ptr @__bpf_trace_tp_map_host1x_channel_release, !5, !"__bpf_trace_tp_map_host1x_channel_release", i1 false, i1 false}
!91 = !{ptr @__bpf_trace_tp_map_host1x_cdma_begin, !9, !"__bpf_trace_tp_map_host1x_cdma_begin", i1 false, i1 false}
!92 = !{ptr @__bpf_trace_tp_map_host1x_cdma_end, !13, !"__bpf_trace_tp_map_host1x_cdma_end", i1 false, i1 false}
!93 = !{ptr @__bpf_trace_tp_map_host1x_cdma_push, !17, !"__bpf_trace_tp_map_host1x_cdma_push", i1 false, i1 false}
!94 = !{ptr @__bpf_trace_tp_map_host1x_cdma_push_wide, !21, !"__bpf_trace_tp_map_host1x_cdma_push_wide", i1 false, i1 false}
!95 = !{ptr @__bpf_trace_tp_map_host1x_cdma_push_gather, !25, !"__bpf_trace_tp_map_host1x_cdma_push_gather", i1 false, i1 false}
!96 = !{ptr @__bpf_trace_tp_map_host1x_channel_submit, !29, !"__bpf_trace_tp_map_host1x_channel_submit", i1 false, i1 false}
!97 = !{ptr @__bpf_trace_tp_map_host1x_channel_submitted, !33, !"__bpf_trace_tp_map_host1x_channel_submitted", i1 false, i1 false}
!98 = !{ptr @__bpf_trace_tp_map_host1x_channel_submit_complete, !37, !"__bpf_trace_tp_map_host1x_channel_submit_complete", i1 false, i1 false}
!99 = !{ptr @__bpf_trace_tp_map_host1x_wait_cdma, !41, !"__bpf_trace_tp_map_host1x_wait_cdma", i1 false, i1 false}
!100 = !{ptr @__bpf_trace_tp_map_host1x_syncpt_load_min, !45, !"__bpf_trace_tp_map_host1x_syncpt_load_min", i1 false, i1 false}
!101 = !{ptr @__bpf_trace_tp_map_host1x_syncpt_wait_check, !49, !"__bpf_trace_tp_map_host1x_syncpt_wait_check", i1 false, i1 false}
!102 = !{ptr @__initcall__kmod_host1x__321_678_tegra_host1x_init6, !103, !"__initcall__kmod_host1x__321_678_tegra_host1x_init6", i1 false, i1 false}
!103 = !{!"../drivers/gpu/host1x/dev.c", i32 678, i32 1}
!104 = !{ptr @__exitcall_tegra_host1x_exit, !105, !"__exitcall_tegra_host1x_exit", i1 false, i1 false}
!105 = !{!"../drivers/gpu/host1x/dev.c", i32 685, i32 1}
!106 = !{ptr @__ksymtab_host1x_get_dma_mask, !107, !"__ksymtab_host1x_get_dma_mask", i1 false, i1 false}
!107 = !{!"../drivers/gpu/host1x/dev.c", i32 698, i32 1}
!108 = !{ptr @__UNIQUE_ID_author322, !109, !"__UNIQUE_ID_author322", i1 false, i1 false}
!109 = !{!"../drivers/gpu/host1x/dev.c", i32 700, i32 1}
!110 = !{ptr @__UNIQUE_ID_author323, !111, !"__UNIQUE_ID_author323", i1 false, i1 false}
!111 = !{!"../drivers/gpu/host1x/dev.c", i32 701, i32 1}
!112 = !{ptr @__UNIQUE_ID_description324, !113, !"__UNIQUE_ID_description324", i1 false, i1 false}
!113 = !{!"../drivers/gpu/host1x/dev.c", i32 702, i32 1}
!114 = !{ptr @__UNIQUE_ID_file325, !115, !"__UNIQUE_ID_file325", i1 false, i1 false}
!115 = !{!"../drivers/gpu/host1x/dev.c", i32 703, i32 1}
!116 = !{ptr @__UNIQUE_ID_license326, !115, !"__UNIQUE_ID_license326", i1 false, i1 false}
!117 = !{ptr @__tpstrtab_host1x_channel_open, !1, !"__tpstrtab_host1x_channel_open", i1 false, i1 false}
!118 = !{ptr @__tpstrtab_host1x_channel_release, !5, !"__tpstrtab_host1x_channel_release", i1 false, i1 false}
!119 = !{ptr @__tpstrtab_host1x_cdma_begin, !9, !"__tpstrtab_host1x_cdma_begin", i1 false, i1 false}
!120 = !{ptr @__tpstrtab_host1x_cdma_end, !13, !"__tpstrtab_host1x_cdma_end", i1 false, i1 false}
!121 = !{ptr @__tpstrtab_host1x_cdma_push, !17, !"__tpstrtab_host1x_cdma_push", i1 false, i1 false}
!122 = !{ptr @__tpstrtab_host1x_cdma_push_wide, !21, !"__tpstrtab_host1x_cdma_push_wide", i1 false, i1 false}
!123 = !{ptr @__tpstrtab_host1x_cdma_push_gather, !25, !"__tpstrtab_host1x_cdma_push_gather", i1 false, i1 false}
!124 = !{ptr @__tpstrtab_host1x_channel_submit, !29, !"__tpstrtab_host1x_channel_submit", i1 false, i1 false}
!125 = !{ptr @__tpstrtab_host1x_channel_submitted, !33, !"__tpstrtab_host1x_channel_submitted", i1 false, i1 false}
!126 = !{ptr @__tpstrtab_host1x_channel_submit_complete, !37, !"__tpstrtab_host1x_channel_submit_complete", i1 false, i1 false}
!127 = !{ptr @__tpstrtab_host1x_wait_cdma, !41, !"__tpstrtab_host1x_wait_cdma", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_host1x_syncpt_load_min, !45, !"__tpstrtab_host1x_syncpt_load_min", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_host1x_syncpt_wait_check, !49, !"__tpstrtab_host1x_syncpt_wait_check", i1 false, i1 false}
!130 = !{ptr @str__host1x__trace_system_name, !131, !"str__host1x__trace_system_name", i1 false, i1 false}
!131 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!132 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @trace_event_fields_host1x, !53, !"trace_event_fields_host1x", i1 false, i1 false}
!135 = !{ptr @trace_event_type_funcs_host1x, !53, !"trace_event_type_funcs_host1x", i1 false, i1 false}
!136 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @print_fmt_host1x, !53, !"print_fmt_host1x", i1 false, i1 false}
!138 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @trace_event_fields_host1x_cdma_push, !17, !"trace_event_fields_host1x_cdma_push", i1 false, i1 false}
!142 = !{ptr @trace_event_type_funcs_host1x_cdma_push, !17, !"trace_event_type_funcs_host1x_cdma_push", i1 false, i1 false}
!143 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @print_fmt_host1x_cdma_push, !17, !"print_fmt_host1x_cdma_push", i1 false, i1 false}
!145 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @trace_event_fields_host1x_cdma_push_wide, !21, !"trace_event_fields_host1x_cdma_push_wide", i1 false, i1 false}
!148 = !{ptr @trace_event_type_funcs_host1x_cdma_push_wide, !21, !"trace_event_type_funcs_host1x_cdma_push_wide", i1 false, i1 false}
!149 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @print_fmt_host1x_cdma_push_wide, !21, !"print_fmt_host1x_cdma_push_wide", i1 false, i1 false}
!151 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @trace_event_fields_host1x_cdma_push_gather, !25, !"trace_event_fields_host1x_cdma_push_gather", i1 false, i1 false}
!159 = !{ptr @trace_event_type_funcs_host1x_cdma_push_gather, !25, !"trace_event_type_funcs_host1x_cdma_push_gather", i1 false, i1 false}
!160 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @print_fmt_host1x_cdma_push_gather, !25, !"print_fmt_host1x_cdma_push_gather", i1 false, i1 false}
!162 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @trace_event_fields_host1x_channel_submit, !29, !"trace_event_fields_host1x_channel_submit", i1 false, i1 false}
!167 = !{ptr @trace_event_type_funcs_host1x_channel_submit, !29, !"trace_event_type_funcs_host1x_channel_submit", i1 false, i1 false}
!168 = !{ptr @.str.22, !29, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @print_fmt_host1x_channel_submit, !29, !"print_fmt_host1x_channel_submit", i1 false, i1 false}
!170 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @trace_event_fields_host1x_channel_submitted, !33, !"trace_event_fields_host1x_channel_submitted", i1 false, i1 false}
!173 = !{ptr @trace_event_type_funcs_host1x_channel_submitted, !33, !"trace_event_type_funcs_host1x_channel_submitted", i1 false, i1 false}
!174 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @print_fmt_host1x_channel_submitted, !33, !"print_fmt_host1x_channel_submitted", i1 false, i1 false}
!176 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @trace_event_fields_host1x_channel_submit_complete, !37, !"trace_event_fields_host1x_channel_submit_complete", i1 false, i1 false}
!180 = !{ptr @trace_event_type_funcs_host1x_channel_submit_complete, !37, !"trace_event_type_funcs_host1x_channel_submit_complete", i1 false, i1 false}
!181 = !{ptr @.str.29, !37, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @print_fmt_host1x_channel_submit_complete, !37, !"print_fmt_host1x_channel_submit_complete", i1 false, i1 false}
!183 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @trace_event_fields_host1x_wait_cdma, !41, !"trace_event_fields_host1x_wait_cdma", i1 false, i1 false}
!185 = !{ptr @trace_event_type_funcs_host1x_wait_cdma, !41, !"trace_event_type_funcs_host1x_wait_cdma", i1 false, i1 false}
!186 = !{ptr @.str.31, !41, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @print_fmt_host1x_wait_cdma, !41, !"print_fmt_host1x_wait_cdma", i1 false, i1 false}
!188 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @trace_event_fields_host1x_syncpt_load_min, !45, !"trace_event_fields_host1x_syncpt_load_min", i1 false, i1 false}
!191 = !{ptr @trace_event_type_funcs_host1x_syncpt_load_min, !45, !"trace_event_type_funcs_host1x_syncpt_load_min", i1 false, i1 false}
!192 = !{ptr @.str.34, !45, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @print_fmt_host1x_syncpt_load_min, !45, !"print_fmt_host1x_syncpt_load_min", i1 false, i1 false}
!194 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @trace_event_fields_host1x_syncpt_wait_check, !49, !"trace_event_fields_host1x_syncpt_wait_check", i1 false, i1 false}
!196 = !{ptr @trace_event_type_funcs_host1x_syncpt_wait_check, !49, !"trace_event_type_funcs_host1x_syncpt_wait_check", i1 false, i1 false}
!197 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @print_fmt_host1x_syncpt_wait_check, !49, !"print_fmt_host1x_syncpt_wait_check", i1 false, i1 false}
!199 = !{ptr @drivers, !200, !"drivers", i1 false, i1 false}
!200 = !{!"../drivers/gpu/host1x/dev.c", i32 659, i32 39}
!201 = !{ptr @.str.37, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/host1x/dev.c", i32 651, i32 11}
!203 = !{ptr @tegra_host1x_driver, !204, !"tegra_host1x_driver", i1 false, i1 false}
!204 = !{!"../drivers/gpu/host1x/dev.c", i32 649, i32 31}
!205 = !{ptr @.str.38, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/host1x/dev.c", i32 425, i32 61}
!207 = !{ptr @.str.39, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/host1x/dev.c", i32 427, i32 4}
!209 = !{ptr @.str.40, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.41, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.42, !208, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.43, !208, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @host1x_probe._entry, !208, !"_entry", i1 false, i1 false}
!214 = !{ptr @host1x_probe._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.44, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/host1x/dev.c", i32 432, i32 14}
!217 = !{ptr @.str.46, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/host1x/dev.c", i32 434, i32 4}
!219 = !{ptr @host1x_probe._entry.45, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @host1x_probe._entry_ptr.47, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.49, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/host1x/dev.c", i32 441, i32 4}
!223 = !{ptr @host1x_probe._entry.48, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @host1x_probe._entry_ptr.50, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @host1x_probe.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../drivers/gpu/host1x/dev.c", i32 451, i32 2}
!227 = !{ptr @.str.51, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.53, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/host1x/dev.c", i32 483, i32 4}
!230 = !{ptr @host1x_probe._entry.52, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @host1x_probe._entry_ptr.54, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.56, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/host1x/dev.c", i32 494, i32 3}
!234 = !{ptr @host1x_probe._entry.55, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @host1x_probe._entry_ptr.57, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.59, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/host1x/dev.c", i32 501, i32 3}
!238 = !{ptr @host1x_probe._entry.58, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @host1x_probe._entry_ptr.60, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.62, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/host1x/dev.c", i32 507, i32 3}
!242 = !{ptr @host1x_probe._entry.61, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @host1x_probe._entry_ptr.63, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.65, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/host1x/dev.c", i32 513, i32 3}
!246 = !{ptr @host1x_probe._entry.64, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @host1x_probe._entry_ptr.66, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @host1x_bo_cache_init.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../include/linux/host1x.h", i32 43, i32 2}
!250 = !{ptr @.str.67, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.68, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/host1x/dev.c", i32 394, i32 23}
!253 = !{ptr @.str.69, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/host1x/dev.c", i32 395, i32 23}
!255 = !{ptr @.str.70, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/host1x/dev.c", i32 401, i32 3}
!257 = !{ptr @.str.71, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @host1x_get_resets._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @host1x_get_resets._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.72, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/host1x/dev.c", i32 350, i32 3}
!262 = !{ptr @.str.73, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @host1x_iommu_init._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @host1x_iommu_init._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.75, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/host1x/dev.c", i32 367, i32 3}
!267 = !{ptr @host1x_iommu_init._entry.74, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @host1x_iommu_init._entry_ptr.76, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @host1x_of_match, !270, !"host1x_of_match", i1 false, i1 false}
!270 = !{!"../drivers/gpu/host1x/dev.c", i32 202, i32 34}
!271 = !{ptr @host1x07_info, !272, !"host1x07_info", i1 false, i1 false}
!272 = !{!"../drivers/gpu/host1x/dev.c", i32 187, i32 33}
!273 = !{ptr @tegra194_sid_table, !274, !"tegra194_sid_table", i1 false, i1 false}
!274 = !{!"../drivers/gpu/host1x/dev.c", i32 166, i32 38}
!275 = !{ptr @host1x06_info, !276, !"host1x06_info", i1 false, i1 false}
!276 = !{!"../drivers/gpu/host1x/dev.c", i32 151, i32 33}
!277 = !{ptr @tegra186_sid_table, !278, !"tegra186_sid_table", i1 false, i1 false}
!278 = !{!"../drivers/gpu/host1x/dev.c", i32 136, i32 38}
!279 = !{ptr @host1x05_info, !280, !"host1x05_info", i1 false, i1 false}
!280 = !{!"../drivers/gpu/host1x/dev.c", i32 121, i32 33}
!281 = !{ptr @host1x04_info, !282, !"host1x04_info", i1 false, i1 false}
!282 = !{!"../drivers/gpu/host1x/dev.c", i32 106, i32 33}
!283 = !{ptr @host1x02_info, !284, !"host1x02_info", i1 false, i1 false}
!284 = !{!"../drivers/gpu/host1x/dev.c", i32 91, i32 33}
!285 = !{ptr @host1x01_info, !286, !"host1x01_info", i1 false, i1 false}
!286 = !{!"../drivers/gpu/host1x/dev.c", i32 76, i32 33}
!287 = !{ptr @host1x_pm_ops, !288, !"host1x_pm_ops", i1 false, i1 false}
!288 = !{!"../drivers/gpu/host1x/dev.c", i32 643, i32 32}
!289 = !{ptr @.str.77, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/host1x/dev.c", i32 587, i32 3}
!291 = !{ptr @.str.78, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @host1x_runtime_suspend._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @host1x_runtime_suspend._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.79, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/host1x/dev.c", i32 613, i32 3}
!296 = !{ptr @.str.80, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @host1x_runtime_resume._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @host1x_runtime_resume._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.82, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/host1x/dev.c", i32 619, i32 3}
!301 = !{ptr @host1x_runtime_resume._entry.81, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @host1x_runtime_resume._entry_ptr.83, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.85, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/host1x/dev.c", i32 625, i32 3}
!305 = !{ptr @host1x_runtime_resume._entry.84, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @host1x_runtime_resume._entry_ptr.86, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{!"sp"}
!308 = !{i32 1, !"wchar_size", i32 2}
!309 = !{i32 1, !"min_enum_size", i32 4}
!310 = !{i32 8, !"branch-target-enforcement", i32 0}
!311 = !{i32 8, !"sign-return-address", i32 0}
!312 = !{i32 8, !"sign-return-address-all", i32 0}
!313 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!314 = !{i32 7, !"uwtable", i32 1}
!315 = !{i32 7, !"frame-pointer", i32 2}
!316 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!317 = !{!"branch_weights", i32 2000, i32 1}
!318 = !{!"branch_weights", i32 1, i32 2000}
!319 = !{!"auto-init"}
!320 = !{i64 2156285272}
!321 = !{i64 6270536}
!322 = !{i64 6270954}
!323 = !{i64 2156285937}
!324 = !{i64 2156286145}
!325 = !{i64 2156286780}
!326 = !{i64 2156286987}
!327 = !{i64 2156287617}
!328 = !{i8 0, i8 2}
!329 = !{i32 0, i32 33}
!330 = !{i64 2148253992}
!331 = !{i64 738815, i64 738840, i64 738862, i64 738878, i64 738890, i64 738910, i64 738934, i64 738950, i64 738962}
!332 = !{i64 2148254180}
