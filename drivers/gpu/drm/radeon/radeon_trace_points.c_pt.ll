; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_trace_points.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_trace_points.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.130, %struct.trace_event, ptr, ptr, %union.anon.131, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.130 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.131 = type { ptr }
%union.anon.132 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.133 = type { %struct.bpf_raw_event_map }
%union.anon.134 = type { %struct.bpf_raw_event_map }
%union.anon.135 = type { %struct.bpf_raw_event_map }
%union.anon.136 = type { %struct.bpf_raw_event_map }
%union.anon.137 = type { %struct.bpf_raw_event_map }
%union.anon.138 = type { %struct.bpf_raw_event_map }
%union.anon.139 = type { %struct.bpf_raw_event_map }
%union.anon.140 = type { %struct.bpf_raw_event_map }
%union.anon.141 = type { %struct.bpf_raw_event_map }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_radeon_bo_create = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.trace_event_raw_radeon_cs = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_radeon_vm_grab_id = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.radeon_bo_va = type { %struct.list_head, i32, ptr, i32, %struct.interval_tree_node, %struct.list_head, ptr, ptr }
%struct.trace_event_raw_radeon_vm_bo_update = type { %struct.trace_entry, i64, i64, i32, [0 x i8] }
%struct.trace_event_raw_radeon_vm_set_page = type { %struct.trace_entry, i64, i64, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_radeon_vm_flush = type { %struct.trace_entry, i64, i32, i32, [0 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.trace_event_raw_radeon_fence_request = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_radeon_semaphore_request = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.radeon_semaphore = type { ptr, i32, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_radeon_bo_create = internal constant [17 x i8] c"radeon_bo_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_bo_create = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_bo_create }, align 4
@__tracepoint_radeon_bo_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_bo_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_bo_create, ptr null, ptr @__traceiter_radeon_bo_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_bo_create = internal constant ptr @__tracepoint_radeon_bo_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_cs = internal constant [10 x i8] c"radeon_cs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_cs = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_cs }, align 4
@__tracepoint_radeon_cs = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_cs, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_cs, ptr null, ptr @__traceiter_radeon_cs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_cs = internal constant ptr @__tracepoint_radeon_cs, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_vm_grab_id = internal constant [18 x i8] c"radeon_vm_grab_id\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_vm_grab_id = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_vm_grab_id }, align 4
@__tracepoint_radeon_vm_grab_id = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_vm_grab_id, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_vm_grab_id, ptr null, ptr @__traceiter_radeon_vm_grab_id, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_vm_grab_id = internal constant ptr @__tracepoint_radeon_vm_grab_id, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_vm_bo_update = internal constant [20 x i8] c"radeon_vm_bo_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_vm_bo_update = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_vm_bo_update }, align 4
@__tracepoint_radeon_vm_bo_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_vm_bo_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_vm_bo_update, ptr null, ptr @__traceiter_radeon_vm_bo_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_vm_bo_update = internal constant ptr @__tracepoint_radeon_vm_bo_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_vm_set_page = internal constant [19 x i8] c"radeon_vm_set_page\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_vm_set_page = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_vm_set_page }, align 4
@__tracepoint_radeon_vm_set_page = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_vm_set_page, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_vm_set_page, ptr null, ptr @__traceiter_radeon_vm_set_page, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_vm_set_page = internal constant ptr @__tracepoint_radeon_vm_set_page, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_vm_flush = internal constant [16 x i8] c"radeon_vm_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_vm_flush = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_vm_flush }, align 4
@__tracepoint_radeon_vm_flush = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_vm_flush, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_vm_flush, ptr null, ptr @__traceiter_radeon_vm_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_vm_flush = internal constant ptr @__tracepoint_radeon_vm_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_fence_emit = internal constant [18 x i8] c"radeon_fence_emit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_fence_emit = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_fence_emit }, align 4
@__tracepoint_radeon_fence_emit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_fence_emit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_fence_emit, ptr null, ptr @__traceiter_radeon_fence_emit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_fence_emit = internal constant ptr @__tracepoint_radeon_fence_emit, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_fence_wait_begin = internal constant [24 x i8] c"radeon_fence_wait_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_fence_wait_begin = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_fence_wait_begin }, align 4
@__tracepoint_radeon_fence_wait_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_fence_wait_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_fence_wait_begin, ptr null, ptr @__traceiter_radeon_fence_wait_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_fence_wait_begin = internal constant ptr @__tracepoint_radeon_fence_wait_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_fence_wait_end = internal constant [22 x i8] c"radeon_fence_wait_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_fence_wait_end = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_fence_wait_end }, align 4
@__tracepoint_radeon_fence_wait_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_fence_wait_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_fence_wait_end, ptr null, ptr @__traceiter_radeon_fence_wait_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_fence_wait_end = internal constant ptr @__tracepoint_radeon_fence_wait_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_semaphore_signale = internal constant [25 x i8] c"radeon_semaphore_signale\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_semaphore_signale = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_semaphore_signale }, align 4
@__tracepoint_radeon_semaphore_signale = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_semaphore_signale, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_semaphore_signale, ptr null, ptr @__traceiter_radeon_semaphore_signale, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_semaphore_signale = internal constant ptr @__tracepoint_radeon_semaphore_signale, section "__tracepoints_ptrs", align 4
@__tpstrtab_radeon_semaphore_wait = internal constant [22 x i8] c"radeon_semaphore_wait\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_radeon_semaphore_wait = dso_local global %struct.static_call_key { ptr @__traceiter_radeon_semaphore_wait }, align 4
@__tracepoint_radeon_semaphore_wait = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_radeon_semaphore_wait, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_radeon_semaphore_wait, ptr null, ptr @__traceiter_radeon_semaphore_wait, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_radeon_semaphore_wait = internal constant ptr @__tracepoint_radeon_semaphore_wait, section "__tracepoints_ptrs", align 4
@str__radeon__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"radeon\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_radeon_bo_create = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.128 { %struct.anon.129 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_radeon_bo_create = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_bo_create, ptr @perf_trace_radeon_bo_create, ptr @trace_event_reg, ptr @trace_event_fields_radeon_bo_create, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_bo_create, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_bo_create, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_bo_create = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_bo_create, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_bo_create = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22bo=%p, pages=%u\22, REC->bo, REC->pages\00", [57 x i8] zeroinitializer }, align 32
@event_radeon_bo_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_bo_create, %union.anon.130 { ptr @__tracepoint_radeon_bo_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_bo_create }, ptr @print_fmt_radeon_bo_create, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_bo_create = internal global ptr @event_radeon_bo_create, section "_ftrace_events", align 4
@trace_event_fields_radeon_cs = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_radeon_cs = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_cs, ptr @perf_trace_radeon_cs, ptr @trace_event_reg, ptr @trace_event_fields_radeon_cs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_cs, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_cs, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_cs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_cs, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_cs = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22ring=%u, dw=%u, fences=%u\22, REC->ring, REC->dw, REC->fences\00", [35 x i8] zeroinitializer }, align 32
@event_radeon_cs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_cs, %union.anon.130 { ptr @__tracepoint_radeon_cs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_cs }, ptr @print_fmt_radeon_cs, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_cs = internal global ptr @event_radeon_cs, section "_ftrace_events", align 4
@trace_event_fields_radeon_vm_grab_id = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_radeon_vm_grab_id = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_vm_grab_id, ptr @perf_trace_radeon_vm_grab_id, ptr @trace_event_reg, ptr @trace_event_fields_radeon_vm_grab_id, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_vm_grab_id, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_vm_grab_id, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_vm_grab_id = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_vm_grab_id, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_vm_grab_id = internal global { [41 x i8], [55 x i8] } { [41 x i8] c"\22vmid=%u, ring=%u\22, REC->vmid, REC->ring\00", [55 x i8] zeroinitializer }, align 32
@event_radeon_vm_grab_id = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_vm_grab_id, %union.anon.130 { ptr @__tracepoint_radeon_vm_grab_id }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_vm_grab_id }, ptr @print_fmt_radeon_vm_grab_id, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_vm_grab_id = internal global ptr @event_radeon_vm_grab_id, section "_ftrace_events", align 4
@trace_event_fields_radeon_vm_bo_update = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.128 { %struct.anon.129 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.128 { %struct.anon.129 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_radeon_vm_bo_update = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_vm_bo_update, ptr @perf_trace_radeon_vm_bo_update, ptr @trace_event_reg, ptr @trace_event_fields_radeon_vm_bo_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_vm_bo_update, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_vm_bo_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_vm_bo_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_vm_bo_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_vm_bo_update = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22soffs=%010llx, eoffs=%010llx, flags=%08x\22, REC->soffset, REC->eoffset, REC->flags\00", [45 x i8] zeroinitializer }, align 32
@event_radeon_vm_bo_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_vm_bo_update, %union.anon.130 { ptr @__tracepoint_radeon_vm_bo_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_vm_bo_update }, ptr @print_fmt_radeon_vm_bo_update, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_vm_bo_update = internal global ptr @event_radeon_vm_bo_update, section "_ftrace_events", align 4
@trace_event_fields_radeon_vm_set_page = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.128 { %struct.anon.129 { ptr @.str.16, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.128 { %struct.anon.129 { ptr @.str.17, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_radeon_vm_set_page = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_vm_set_page, ptr @perf_trace_radeon_vm_set_page, ptr @trace_event_reg, ptr @trace_event_fields_radeon_vm_set_page, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_vm_set_page, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_vm_set_page, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_vm_set_page = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_vm_set_page, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_vm_set_page = internal global { [111 x i8], [49 x i8] } { [111 x i8] c"\22pe=%010Lx, addr=%010Lx, incr=%u, flags=%08x, count=%u\22, REC->pe, REC->addr, REC->incr, REC->flags, REC->count\00", [49 x i8] zeroinitializer }, align 32
@event_radeon_vm_set_page = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_vm_set_page, %union.anon.130 { ptr @__tracepoint_radeon_vm_set_page }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_vm_set_page }, ptr @print_fmt_radeon_vm_set_page, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_vm_set_page = internal global ptr @event_radeon_vm_set_page, section "_ftrace_events", align 4
@trace_event_fields_radeon_vm_flush = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.128 { %struct.anon.129 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_radeon_vm_flush = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_vm_flush, ptr @perf_trace_radeon_vm_flush, ptr @trace_event_reg, ptr @trace_event_fields_radeon_vm_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_vm_flush, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_vm_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_vm_flush = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_vm_flush, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_vm_flush = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\22pd_addr=%010Lx, ring=%u, id=%u\22, REC->pd_addr, REC->ring, REC->id\00", [61 x i8] zeroinitializer }, align 32
@event_radeon_vm_flush = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_vm_flush, %union.anon.130 { ptr @__tracepoint_radeon_vm_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_vm_flush }, ptr @print_fmt_radeon_vm_flush, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_vm_flush = internal global ptr @event_radeon_vm_flush, section "_ftrace_events", align 4
@trace_event_fields_radeon_fence_request = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.128 { %struct.anon.129 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.128 { %struct.anon.129 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_radeon_fence_request = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_fence_request, ptr @perf_trace_radeon_fence_request, ptr @trace_event_reg, ptr @trace_event_fields_radeon_fence_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_fence_request, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_fence_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_fence_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_fence_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_fence_request = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22dev=%u, ring=%d, seqno=%u\22, REC->dev, REC->ring, REC->seqno\00", [35 x i8] zeroinitializer }, align 32
@event_radeon_fence_emit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_fence_request, %union.anon.130 { ptr @__tracepoint_radeon_fence_emit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_fence_request }, ptr @print_fmt_radeon_fence_request, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_fence_emit = internal global ptr @event_radeon_fence_emit, section "_ftrace_events", align 4
@event_radeon_fence_wait_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_fence_request, %union.anon.130 { ptr @__tracepoint_radeon_fence_wait_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_fence_request }, ptr @print_fmt_radeon_fence_request, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_fence_wait_begin = internal global ptr @event_radeon_fence_wait_begin, section "_ftrace_events", align 4
@event_radeon_fence_wait_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_fence_request, %union.anon.130 { ptr @__tracepoint_radeon_fence_wait_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_fence_request }, ptr @print_fmt_radeon_fence_request, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_fence_wait_end = internal global ptr @event_radeon_fence_wait_end, section "_ftrace_events", align 4
@trace_event_fields_radeon_semaphore_request = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.128 { %struct.anon.129 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.128 { %struct.anon.129 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.128 { %struct.anon.129 { ptr @.str.31, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_radeon_semaphore_request = internal global %struct.trace_event_class { ptr @str__radeon__trace_system_name, ptr @trace_event_raw_event_radeon_semaphore_request, ptr @perf_trace_radeon_semaphore_request, ptr @trace_event_reg, ptr @trace_event_fields_radeon_semaphore_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_radeon_semaphore_request, i64 24), ptr getelementptr (i8, ptr @event_class_radeon_semaphore_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_radeon_semaphore_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_radeon_semaphore_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_radeon_semaphore_request = internal global { [75 x i8], [53 x i8] } { [75 x i8] c"\22ring=%u, waiters=%d, addr=%010Lx\22, REC->ring, REC->waiters, REC->gpu_addr\00", [53 x i8] zeroinitializer }, align 32
@event_radeon_semaphore_signale = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_semaphore_request, %union.anon.130 { ptr @__tracepoint_radeon_semaphore_signale }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_semaphore_request }, ptr @print_fmt_radeon_semaphore_request, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_semaphore_signale = internal global ptr @event_radeon_semaphore_signale, section "_ftrace_events", align 4
@event_radeon_semaphore_wait = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_radeon_semaphore_request, %union.anon.130 { ptr @__tracepoint_radeon_semaphore_wait }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_radeon_semaphore_request }, ptr @print_fmt_radeon_semaphore_request, ptr null, %union.anon.131 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_radeon_semaphore_wait = internal global ptr @event_radeon_semaphore_wait, section "_ftrace_events", align 4
@__bpf_trace_tp_map_radeon_bo_create = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_bo_create, ptr @__bpf_trace_radeon_bo_create, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_cs = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_cs, ptr @__bpf_trace_radeon_cs, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_vm_grab_id = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_vm_grab_id, ptr @__bpf_trace_radeon_vm_grab_id, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_vm_bo_update = internal global %union.anon.135 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_vm_bo_update, ptr @__bpf_trace_radeon_vm_bo_update, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_vm_set_page = internal global %union.anon.136 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_vm_set_page, ptr @__bpf_trace_radeon_vm_set_page, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_vm_flush = internal global %union.anon.137 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_vm_flush, ptr @__bpf_trace_radeon_vm_flush, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_fence_emit = internal global %union.anon.138 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_fence_emit, ptr @__bpf_trace_radeon_fence_request, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_fence_wait_begin = internal global %union.anon.139 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_fence_wait_begin, ptr @__bpf_trace_radeon_fence_request, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_fence_wait_end = internal global %union.anon.140 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_fence_wait_end, ptr @__bpf_trace_radeon_fence_request, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_semaphore_signale = internal global %union.anon.141 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_semaphore_signale, ptr @__bpf_trace_radeon_semaphore_request, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_radeon_semaphore_wait = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_radeon_semaphore_wait, ptr @__bpf_trace_radeon_semaphore_request, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct radeon_bo *\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bo\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pages\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bo=%p, pages=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dw\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fences\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ring=%u, dw=%u, fences=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vmid\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vmid=%u, ring=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"soffset\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eoffset\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soffs=%010llx, eoffs=%010llx, flags=%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pe\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"incr\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"pe=%010Lx, addr=%010Lx, incr=%u, flags=%08x, count=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pd_addr\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pd_addr=%010Lx, ring=%u, id=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev=%u, ring=%d, seqno=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signed\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiters\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpu_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ring=%u, waiters=%d, addr=%010Lx\0A\00", [62 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [48 x i8] c"../drivers/gpu/drm/radeon/radeon_trace_points.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"str__radeon__trace_system_name\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 36, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [36 x i8] c"trace_event_fields_radeon_bo_create\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_radeon_bo_create\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"print_fmt_radeon_bo_create\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"event_radeon_bo_create\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"trace_event_fields_radeon_cs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_radeon_cs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"print_fmt_radeon_cs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"event_radeon_cs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [37 x i8] c"trace_event_fields_radeon_vm_grab_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_radeon_vm_grab_id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"print_fmt_radeon_vm_grab_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"event_radeon_vm_grab_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [39 x i8] c"trace_event_fields_radeon_vm_bo_update\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_radeon_vm_bo_update\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"print_fmt_radeon_vm_bo_update\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"event_radeon_vm_bo_update\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [38 x i8] c"trace_event_fields_radeon_vm_set_page\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_radeon_vm_set_page\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [29 x i8] c"print_fmt_radeon_vm_set_page\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"event_radeon_vm_set_page\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [35 x i8] c"trace_event_fields_radeon_vm_flush\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_radeon_vm_flush\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [26 x i8] c"print_fmt_radeon_vm_flush\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"event_radeon_vm_flush\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [40 x i8] c"trace_event_fields_radeon_fence_request\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_radeon_fence_request\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"print_fmt_radeon_fence_request\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"event_radeon_fence_emit\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 147, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"event_radeon_fence_wait_begin\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 154, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"event_radeon_fence_wait_end\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 161, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [44 x i8] c"trace_event_fields_radeon_semaphore_request\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_radeon_semaphore_request\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [35 x i8] c"print_fmt_radeon_semaphore_request\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"event_radeon_semaphore_signale\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 190, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"event_radeon_semaphore_wait\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 197, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 15, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 30, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 50, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 65, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 83, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 107, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 125, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [61 x i8] c"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 168, i32 1 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__bpf_trace_tp_map_radeon_bo_create, ptr @__bpf_trace_tp_map_radeon_cs, ptr @__bpf_trace_tp_map_radeon_fence_emit, ptr @__bpf_trace_tp_map_radeon_fence_wait_begin, ptr @__bpf_trace_tp_map_radeon_fence_wait_end, ptr @__bpf_trace_tp_map_radeon_semaphore_signale, ptr @__bpf_trace_tp_map_radeon_semaphore_wait, ptr @__bpf_trace_tp_map_radeon_vm_bo_update, ptr @__bpf_trace_tp_map_radeon_vm_flush, ptr @__bpf_trace_tp_map_radeon_vm_grab_id, ptr @__bpf_trace_tp_map_radeon_vm_set_page, ptr @__event_radeon_bo_create, ptr @__event_radeon_cs, ptr @__event_radeon_fence_emit, ptr @__event_radeon_fence_wait_begin, ptr @__event_radeon_fence_wait_end, ptr @__event_radeon_semaphore_signale, ptr @__event_radeon_semaphore_wait, ptr @__event_radeon_vm_bo_update, ptr @__event_radeon_vm_flush, ptr @__event_radeon_vm_grab_id, ptr @__event_radeon_vm_set_page, ptr @__tracepoint_ptr_radeon_bo_create, ptr @__tracepoint_ptr_radeon_cs, ptr @__tracepoint_ptr_radeon_fence_emit, ptr @__tracepoint_ptr_radeon_fence_wait_begin, ptr @__tracepoint_ptr_radeon_fence_wait_end, ptr @__tracepoint_ptr_radeon_semaphore_signale, ptr @__tracepoint_ptr_radeon_semaphore_wait, ptr @__tracepoint_ptr_radeon_vm_bo_update, ptr @__tracepoint_ptr_radeon_vm_flush, ptr @__tracepoint_ptr_radeon_vm_grab_id, ptr @__tracepoint_ptr_radeon_vm_set_page, ptr @__tracepoint_radeon_bo_create, ptr @__tracepoint_radeon_cs, ptr @__tracepoint_radeon_fence_emit, ptr @__tracepoint_radeon_fence_wait_begin, ptr @__tracepoint_radeon_fence_wait_end, ptr @__tracepoint_radeon_semaphore_signale, ptr @__tracepoint_radeon_semaphore_wait, ptr @__tracepoint_radeon_vm_bo_update, ptr @__tracepoint_radeon_vm_flush, ptr @__tracepoint_radeon_vm_grab_id, ptr @__tracepoint_radeon_vm_set_page, ptr @event_class_radeon_bo_create, ptr @event_class_radeon_cs, ptr @event_class_radeon_fence_request, ptr @event_class_radeon_semaphore_request, ptr @event_class_radeon_vm_bo_update, ptr @event_class_radeon_vm_flush, ptr @event_class_radeon_vm_grab_id, ptr @event_class_radeon_vm_set_page, ptr @event_radeon_bo_create, ptr @event_radeon_cs, ptr @event_radeon_fence_emit, ptr @event_radeon_fence_wait_begin, ptr @event_radeon_fence_wait_end, ptr @event_radeon_semaphore_signale, ptr @event_radeon_semaphore_wait, ptr @event_radeon_vm_bo_update, ptr @event_radeon_vm_flush, ptr @event_radeon_vm_grab_id, ptr @event_radeon_vm_set_page, ptr @str__radeon__trace_system_name, ptr @trace_event_fields_radeon_bo_create, ptr @trace_event_type_funcs_radeon_bo_create, ptr @print_fmt_radeon_bo_create, ptr @trace_event_fields_radeon_cs, ptr @trace_event_type_funcs_radeon_cs, ptr @print_fmt_radeon_cs, ptr @trace_event_fields_radeon_vm_grab_id, ptr @trace_event_type_funcs_radeon_vm_grab_id, ptr @print_fmt_radeon_vm_grab_id, ptr @trace_event_fields_radeon_vm_bo_update, ptr @trace_event_type_funcs_radeon_vm_bo_update, ptr @print_fmt_radeon_vm_bo_update, ptr @trace_event_fields_radeon_vm_set_page, ptr @trace_event_type_funcs_radeon_vm_set_page, ptr @print_fmt_radeon_vm_set_page, ptr @trace_event_fields_radeon_vm_flush, ptr @trace_event_type_funcs_radeon_vm_flush, ptr @print_fmt_radeon_vm_flush, ptr @trace_event_fields_radeon_fence_request, ptr @trace_event_type_funcs_radeon_fence_request, ptr @print_fmt_radeon_fence_request, ptr @trace_event_fields_radeon_semaphore_request, ptr @trace_event_type_funcs_radeon_semaphore_request, ptr @print_fmt_radeon_semaphore_request, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__radeon__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_bo_create to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_bo_create to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_bo_create to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_bo_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_cs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_cs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_cs to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_cs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_vm_grab_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_vm_grab_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_vm_grab_id to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_vm_grab_id to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_vm_bo_update to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_vm_bo_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_vm_bo_update to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_vm_bo_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_vm_set_page to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_vm_set_page to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_vm_set_page to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_vm_set_page to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_vm_flush to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_vm_flush to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_vm_flush to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_vm_flush to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_fence_request to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_fence_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_fence_request to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_fence_emit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_fence_wait_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_fence_wait_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_radeon_semaphore_request to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_radeon_semaphore_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_radeon_semaphore_request to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_semaphore_signale to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_radeon_semaphore_wait to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_bo_create(ptr nocapture readnone %__data, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_bo_create, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %bo) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_cs(ptr nocapture readnone %__data, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_cs, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %p) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_vm_grab_id(ptr nocapture readnone %__data, i32 noundef %vmid, i32 noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_vm_grab_id, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %vmid, i32 noundef %ring) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_vm_bo_update(ptr nocapture readnone %__data, ptr noundef %bo_va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_vm_bo_update, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %bo_va) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_vm_set_page(ptr nocapture readnone %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_vm_set_page, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_vm_flush(ptr nocapture readnone %__data, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_vm_flush, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_fence_emit(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_fence_emit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_fence_wait_begin(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_fence_wait_begin, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_fence_wait_end(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_fence_wait_end, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_semaphore_signale(ptr nocapture readnone %__data, i32 noundef %ring, ptr noundef %sem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_semaphore_signale, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %ring, ptr noundef %sem) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_radeon_semaphore_wait(ptr nocapture readnone %__data, i32 noundef %ring, ptr noundef %sem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_radeon_semaphore_wait, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %ring, ptr noundef %sem) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bo6 = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bo6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bo, ptr %bo6, align 4
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pages, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bo17 = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bo17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bo, ptr %bo17, align 4
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_pages, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pages, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_cs(ptr noundef %__data, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %3 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring, align 8
  %ring6 = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ring6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ring6, align 4
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %6 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chunk_ib, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dw, align 4
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %13 = load i32, ptr %ring, align 8
  %call8 = call i32 @radeon_fence_count_emitted(ptr noundef %12, i32 noundef %13) #5
  %fences = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call8, ptr %fences, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_cs(ptr noundef %__data, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ring = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %27 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring, align 8
  %ring17 = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ring17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ring17, align 4
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %30 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chunk_ib, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dw, align 4
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rdev, align 4
  %37 = load i32, ptr %ring, align 8
  %call19 = call i32 @radeon_fence_count_emitted(ptr noundef %36, i32 noundef %37) #5
  %fences = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call19, ptr %fences, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_vm_grab_id(ptr noundef %__data, i32 noundef %vmid, i32 noundef %ring) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %vmid6 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vmid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vmid, ptr %vmid6, align 4
  %ring7 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ring7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ring, ptr %ring7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_vm_grab_id(ptr noundef %__data, i32 noundef %vmid, i32 noundef %ring) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vmid17 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vmid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %vmid, ptr %vmid17, align 4
  %ring18 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ring18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ring, ptr %ring18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_vm_bo_update(ptr noundef %__data, ptr nocapture noundef readonly %bo_va) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start, align 4
  %conv = zext i32 %4 to i64
  %soffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %soffset to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %soffset, align 8
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last, align 4
  %add7 = add i32 %7, 1
  %conv8 = zext i32 %add7 to i64
  %eoffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %eoffset to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv8, ptr %eoffset, align 8
  %flags = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %flags9 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_vm_bo_update(ptr noundef %__data, ptr nocapture noundef readonly %bo_va) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start, align 4
  %conv = zext i32 %28 to i64
  %soffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %soffset to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %soffset, align 8
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last, align 4
  %add18 = add i32 %31, 1
  %conv19 = zext i32 %add18 to i64
  %eoffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %eoffset to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv19, ptr %eoffset, align 8
  %flags = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 1
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %flags20 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags20, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_vm_set_page(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pe6 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pe6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %pe, ptr %pe6, align 8
  %addr7 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %addr, ptr %addr7, align 8
  %count8 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %count8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count8, align 8
  %incr9 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %incr9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %incr, ptr %incr9, align 4
  %flags10 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_vm_set_page(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pe17 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pe17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %pe, ptr %pe17, align 8
  %addr18 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %addr, ptr %addr18, align 8
  %count19 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %count19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %count, ptr %count19, align 8
  %incr20 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %incr20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %incr, ptr %incr20, align 4
  %flags21 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %flags, ptr %flags21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_vm_flush(ptr noundef %__data, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pd_addr6 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pd_addr6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %pd_addr, ptr %pd_addr6, align 8
  %ring7 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ring7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ring, ptr %ring7, align 8
  %id8 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %id, ptr %id8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_vm_flush(ptr noundef %__data, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pd_addr17 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pd_addr17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %pd_addr, ptr %pd_addr17, align 8
  %ring18 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ring18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ring, ptr %ring18, align 8
  %id19 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %id, ptr %id19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_fence_request(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %dev6 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev6, align 4
  %ring7 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %ring7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ring, ptr %ring7, align 4
  %seqno8 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %seqno8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %seqno, ptr %seqno8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_fence_request(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev17, align 4
  %ring18 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %ring18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %ring, ptr %ring18, align 4
  %seqno19 = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %seqno19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %seqno, ptr %seqno19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_radeon_semaphore_request(ptr noundef %__data, i32 noundef %ring, ptr nocapture noundef readonly %sem) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !167

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !168

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ring6 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ring6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ring, ptr %ring6, align 8
  %waiters = getelementptr inbounds %struct.radeon_semaphore, ptr %sem, i32 0, i32 1
  %4 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %waiters, align 4
  %waiters7 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %waiters7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %waiters7, align 4
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %sem, i32 0, i32 2
  %7 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gpu_addr, align 8
  %gpu_addr8 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %gpu_addr8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %gpu_addr8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_radeon_semaphore_request(ptr noundef %__data, i32 noundef %ring, ptr nocapture noundef readonly %sem) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !157) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ring17 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ring17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ring, ptr %ring17, align 8
  %waiters = getelementptr inbounds %struct.radeon_semaphore, ptr %sem, i32 0, i32 1
  %28 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %waiters, align 4
  %waiters18 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %waiters18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %waiters18, align 4
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %sem, i32 0, i32 2
  %31 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %gpu_addr, align 8
  %gpu_addr19 = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %gpu_addr19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %gpu_addr19, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bo to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_cs(ptr noundef %__data, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %p to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_vm_grab_id(ptr noundef %__data, i32 noundef %vmid, i32 noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %vmid to i64
  %conv4 = zext i32 %ring to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_vm_bo_update(ptr noundef %__data, ptr noundef %bo_va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bo_va to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_vm_set_page(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %count to i64
  %conv10 = zext i32 %incr to i64
  %conv14 = zext i32 %flags to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i64 noundef %conv, i64 noundef %conv10, i64 noundef %conv14) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_vm_flush(ptr noundef %__data, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %ring to i64
  %conv7 = zext i32 %id to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %pd_addr, i64 noundef %conv, i64 noundef %conv7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_fence_request(ptr noundef %__data, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ring to i64
  %conv8 = zext i32 %seqno to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_radeon_semaphore_request(ptr noundef %__data, i32 noundef %ring, ptr noundef %sem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %ring to i64
  %0 = ptrtoint ptr %sem to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_bo_create(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_radeon_bo_create, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %5) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_count_emitted(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_cs(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ring = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dw, align 4
  %fences = getelementptr inbounds %struct.trace_event_raw_radeon_cs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fences, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_vm_grab_id(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vmid = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmid, align 4
  %ring = getelementptr inbounds %struct.trace_event_raw_radeon_vm_grab_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %5) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_vm_bo_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %soffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %soffset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %soffset, align 8
  %eoffset = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eoffset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %eoffset, align 8
  %flags1 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_bo_update, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i64 noundef %3, i64 noundef %5, i32 noundef %7) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_vm_set_page(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pe = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pe, align 8
  %addr = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %incr = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %incr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incr, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1, align 8
  %count = getelementptr inbounds %struct.trace_event_raw_radeon_vm_set_page, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i64 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_vm_flush(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pd_addr = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pd_addr, align 8
  %ring = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 8
  %id = getelementptr inbounds %struct.trace_event_raw_radeon_vm_flush, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i64 noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_fence_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %ring = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_radeon_fence_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_radeon_semaphore_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ring = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 8
  %waiters = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %waiters, align 4
  %gpu_addr = getelementptr inbounds %struct.trace_event_raw_radeon_semaphore_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gpu_addr, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.32, i32 noundef %3, i32 noundef %5, i64 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__tracepoint_radeon_bo_create, !1, !"__tracepoint_radeon_bo_create", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 15, i32 1}
!2 = !{ptr @__tracepoint_ptr_radeon_bo_create, !1, !"__tracepoint_ptr_radeon_bo_create", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_radeon_bo_create, !1, !"__SCK__tp_func_radeon_bo_create", i1 false, i1 false}
!4 = !{ptr @__tracepoint_radeon_cs, !5, !"__tracepoint_radeon_cs", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 30, i32 1}
!6 = !{ptr @__tracepoint_ptr_radeon_cs, !5, !"__tracepoint_ptr_radeon_cs", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_radeon_cs, !5, !"__SCK__tp_func_radeon_cs", i1 false, i1 false}
!8 = !{ptr @__tracepoint_radeon_vm_grab_id, !9, !"__tracepoint_radeon_vm_grab_id", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 50, i32 1}
!10 = !{ptr @__tracepoint_ptr_radeon_vm_grab_id, !9, !"__tracepoint_ptr_radeon_vm_grab_id", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_radeon_vm_grab_id, !9, !"__SCK__tp_func_radeon_vm_grab_id", i1 false, i1 false}
!12 = !{ptr @__tracepoint_radeon_vm_bo_update, !13, !"__tracepoint_radeon_vm_bo_update", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 65, i32 1}
!14 = !{ptr @__tracepoint_ptr_radeon_vm_bo_update, !13, !"__tracepoint_ptr_radeon_vm_bo_update", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_radeon_vm_bo_update, !13, !"__SCK__tp_func_radeon_vm_bo_update", i1 false, i1 false}
!16 = !{ptr @__tracepoint_radeon_vm_set_page, !17, !"__tracepoint_radeon_vm_set_page", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 83, i32 1}
!18 = !{ptr @__tracepoint_ptr_radeon_vm_set_page, !17, !"__tracepoint_ptr_radeon_vm_set_page", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_radeon_vm_set_page, !17, !"__SCK__tp_func_radeon_vm_set_page", i1 false, i1 false}
!20 = !{ptr @__tracepoint_radeon_vm_flush, !21, !"__tracepoint_radeon_vm_flush", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 107, i32 1}
!22 = !{ptr @__tracepoint_ptr_radeon_vm_flush, !21, !"__tracepoint_ptr_radeon_vm_flush", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_radeon_vm_flush, !21, !"__SCK__tp_func_radeon_vm_flush", i1 false, i1 false}
!24 = !{ptr @__tracepoint_radeon_fence_emit, !25, !"__tracepoint_radeon_fence_emit", i1 false, i1 false}
!25 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 147, i32 1}
!26 = !{ptr @__tracepoint_ptr_radeon_fence_emit, !25, !"__tracepoint_ptr_radeon_fence_emit", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_radeon_fence_emit, !25, !"__SCK__tp_func_radeon_fence_emit", i1 false, i1 false}
!28 = !{ptr @__tracepoint_radeon_fence_wait_begin, !29, !"__tracepoint_radeon_fence_wait_begin", i1 false, i1 false}
!29 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 154, i32 1}
!30 = !{ptr @__tracepoint_ptr_radeon_fence_wait_begin, !29, !"__tracepoint_ptr_radeon_fence_wait_begin", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_radeon_fence_wait_begin, !29, !"__SCK__tp_func_radeon_fence_wait_begin", i1 false, i1 false}
!32 = !{ptr @__tracepoint_radeon_fence_wait_end, !33, !"__tracepoint_radeon_fence_wait_end", i1 false, i1 false}
!33 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 161, i32 1}
!34 = !{ptr @__tracepoint_ptr_radeon_fence_wait_end, !33, !"__tracepoint_ptr_radeon_fence_wait_end", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_radeon_fence_wait_end, !33, !"__SCK__tp_func_radeon_fence_wait_end", i1 false, i1 false}
!36 = !{ptr @__tracepoint_radeon_semaphore_signale, !37, !"__tracepoint_radeon_semaphore_signale", i1 false, i1 false}
!37 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 190, i32 1}
!38 = !{ptr @__tracepoint_ptr_radeon_semaphore_signale, !37, !"__tracepoint_ptr_radeon_semaphore_signale", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_radeon_semaphore_signale, !37, !"__SCK__tp_func_radeon_semaphore_signale", i1 false, i1 false}
!40 = !{ptr @__tracepoint_radeon_semaphore_wait, !41, !"__tracepoint_radeon_semaphore_wait", i1 false, i1 false}
!41 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 197, i32 1}
!42 = !{ptr @__tracepoint_ptr_radeon_semaphore_wait, !41, !"__tracepoint_ptr_radeon_semaphore_wait", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_radeon_semaphore_wait, !41, !"__SCK__tp_func_radeon_semaphore_wait", i1 false, i1 false}
!44 = !{ptr @event_class_radeon_bo_create, !1, !"event_class_radeon_bo_create", i1 false, i1 false}
!45 = !{ptr @event_radeon_bo_create, !1, !"event_radeon_bo_create", i1 false, i1 false}
!46 = !{ptr @__event_radeon_bo_create, !1, !"__event_radeon_bo_create", i1 false, i1 false}
!47 = !{ptr @event_class_radeon_cs, !5, !"event_class_radeon_cs", i1 false, i1 false}
!48 = !{ptr @event_radeon_cs, !5, !"event_radeon_cs", i1 false, i1 false}
!49 = !{ptr @__event_radeon_cs, !5, !"__event_radeon_cs", i1 false, i1 false}
!50 = !{ptr @event_class_radeon_vm_grab_id, !9, !"event_class_radeon_vm_grab_id", i1 false, i1 false}
!51 = !{ptr @event_radeon_vm_grab_id, !9, !"event_radeon_vm_grab_id", i1 false, i1 false}
!52 = !{ptr @__event_radeon_vm_grab_id, !9, !"__event_radeon_vm_grab_id", i1 false, i1 false}
!53 = !{ptr @event_class_radeon_vm_bo_update, !13, !"event_class_radeon_vm_bo_update", i1 false, i1 false}
!54 = !{ptr @event_radeon_vm_bo_update, !13, !"event_radeon_vm_bo_update", i1 false, i1 false}
!55 = !{ptr @__event_radeon_vm_bo_update, !13, !"__event_radeon_vm_bo_update", i1 false, i1 false}
!56 = !{ptr @event_class_radeon_vm_set_page, !17, !"event_class_radeon_vm_set_page", i1 false, i1 false}
!57 = !{ptr @event_radeon_vm_set_page, !17, !"event_radeon_vm_set_page", i1 false, i1 false}
!58 = !{ptr @__event_radeon_vm_set_page, !17, !"__event_radeon_vm_set_page", i1 false, i1 false}
!59 = !{ptr @event_class_radeon_vm_flush, !21, !"event_class_radeon_vm_flush", i1 false, i1 false}
!60 = !{ptr @event_radeon_vm_flush, !21, !"event_radeon_vm_flush", i1 false, i1 false}
!61 = !{ptr @__event_radeon_vm_flush, !21, !"__event_radeon_vm_flush", i1 false, i1 false}
!62 = !{ptr @event_class_radeon_fence_request, !63, !"event_class_radeon_fence_request", i1 false, i1 false}
!63 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 125, i32 1}
!64 = !{ptr @event_radeon_fence_emit, !25, !"event_radeon_fence_emit", i1 false, i1 false}
!65 = !{ptr @__event_radeon_fence_emit, !25, !"__event_radeon_fence_emit", i1 false, i1 false}
!66 = !{ptr @event_radeon_fence_wait_begin, !29, !"event_radeon_fence_wait_begin", i1 false, i1 false}
!67 = !{ptr @__event_radeon_fence_wait_begin, !29, !"__event_radeon_fence_wait_begin", i1 false, i1 false}
!68 = !{ptr @event_radeon_fence_wait_end, !33, !"event_radeon_fence_wait_end", i1 false, i1 false}
!69 = !{ptr @__event_radeon_fence_wait_end, !33, !"__event_radeon_fence_wait_end", i1 false, i1 false}
!70 = !{ptr @event_class_radeon_semaphore_request, !71, !"event_class_radeon_semaphore_request", i1 false, i1 false}
!71 = !{!"../include/trace/../../drivers/gpu/drm/radeon/radeon_trace.h", i32 168, i32 1}
!72 = !{ptr @event_radeon_semaphore_signale, !37, !"event_radeon_semaphore_signale", i1 false, i1 false}
!73 = !{ptr @__event_radeon_semaphore_signale, !37, !"__event_radeon_semaphore_signale", i1 false, i1 false}
!74 = !{ptr @event_radeon_semaphore_wait, !41, !"event_radeon_semaphore_wait", i1 false, i1 false}
!75 = !{ptr @__event_radeon_semaphore_wait, !41, !"__event_radeon_semaphore_wait", i1 false, i1 false}
!76 = !{ptr @__bpf_trace_tp_map_radeon_bo_create, !1, !"__bpf_trace_tp_map_radeon_bo_create", i1 false, i1 false}
!77 = !{ptr @__bpf_trace_tp_map_radeon_cs, !5, !"__bpf_trace_tp_map_radeon_cs", i1 false, i1 false}
!78 = !{ptr @__bpf_trace_tp_map_radeon_vm_grab_id, !9, !"__bpf_trace_tp_map_radeon_vm_grab_id", i1 false, i1 false}
!79 = !{ptr @__bpf_trace_tp_map_radeon_vm_bo_update, !13, !"__bpf_trace_tp_map_radeon_vm_bo_update", i1 false, i1 false}
!80 = !{ptr @__bpf_trace_tp_map_radeon_vm_set_page, !17, !"__bpf_trace_tp_map_radeon_vm_set_page", i1 false, i1 false}
!81 = !{ptr @__bpf_trace_tp_map_radeon_vm_flush, !21, !"__bpf_trace_tp_map_radeon_vm_flush", i1 false, i1 false}
!82 = !{ptr @__bpf_trace_tp_map_radeon_fence_emit, !25, !"__bpf_trace_tp_map_radeon_fence_emit", i1 false, i1 false}
!83 = !{ptr @__bpf_trace_tp_map_radeon_fence_wait_begin, !29, !"__bpf_trace_tp_map_radeon_fence_wait_begin", i1 false, i1 false}
!84 = !{ptr @__bpf_trace_tp_map_radeon_fence_wait_end, !33, !"__bpf_trace_tp_map_radeon_fence_wait_end", i1 false, i1 false}
!85 = !{ptr @__bpf_trace_tp_map_radeon_semaphore_signale, !37, !"__bpf_trace_tp_map_radeon_semaphore_signale", i1 false, i1 false}
!86 = !{ptr @__bpf_trace_tp_map_radeon_semaphore_wait, !41, !"__bpf_trace_tp_map_radeon_semaphore_wait", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_radeon_bo_create, !1, !"__tpstrtab_radeon_bo_create", i1 false, i1 false}
!88 = !{ptr @__tpstrtab_radeon_cs, !5, !"__tpstrtab_radeon_cs", i1 false, i1 false}
!89 = !{ptr @__tpstrtab_radeon_vm_grab_id, !9, !"__tpstrtab_radeon_vm_grab_id", i1 false, i1 false}
!90 = !{ptr @__tpstrtab_radeon_vm_bo_update, !13, !"__tpstrtab_radeon_vm_bo_update", i1 false, i1 false}
!91 = !{ptr @__tpstrtab_radeon_vm_set_page, !17, !"__tpstrtab_radeon_vm_set_page", i1 false, i1 false}
!92 = !{ptr @__tpstrtab_radeon_vm_flush, !21, !"__tpstrtab_radeon_vm_flush", i1 false, i1 false}
!93 = !{ptr @__tpstrtab_radeon_fence_emit, !25, !"__tpstrtab_radeon_fence_emit", i1 false, i1 false}
!94 = !{ptr @__tpstrtab_radeon_fence_wait_begin, !29, !"__tpstrtab_radeon_fence_wait_begin", i1 false, i1 false}
!95 = !{ptr @__tpstrtab_radeon_fence_wait_end, !33, !"__tpstrtab_radeon_fence_wait_end", i1 false, i1 false}
!96 = !{ptr @__tpstrtab_radeon_semaphore_signale, !37, !"__tpstrtab_radeon_semaphore_signale", i1 false, i1 false}
!97 = !{ptr @__tpstrtab_radeon_semaphore_wait, !41, !"__tpstrtab_radeon_semaphore_wait", i1 false, i1 false}
!98 = !{ptr @str__radeon__trace_system_name, !99, !"str__radeon__trace_system_name", i1 false, i1 false}
!99 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!100 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @trace_event_fields_radeon_bo_create, !1, !"trace_event_fields_radeon_bo_create", i1 false, i1 false}
!105 = !{ptr @trace_event_type_funcs_radeon_bo_create, !1, !"trace_event_type_funcs_radeon_bo_create", i1 false, i1 false}
!106 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @print_fmt_radeon_bo_create, !1, !"print_fmt_radeon_bo_create", i1 false, i1 false}
!108 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @trace_event_fields_radeon_cs, !5, !"trace_event_fields_radeon_cs", i1 false, i1 false}
!112 = !{ptr @trace_event_type_funcs_radeon_cs, !5, !"trace_event_type_funcs_radeon_cs", i1 false, i1 false}
!113 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @print_fmt_radeon_cs, !5, !"print_fmt_radeon_cs", i1 false, i1 false}
!115 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @trace_event_fields_radeon_vm_grab_id, !9, !"trace_event_fields_radeon_vm_grab_id", i1 false, i1 false}
!117 = !{ptr @trace_event_type_funcs_radeon_vm_grab_id, !9, !"trace_event_type_funcs_radeon_vm_grab_id", i1 false, i1 false}
!118 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @print_fmt_radeon_vm_grab_id, !9, !"print_fmt_radeon_vm_grab_id", i1 false, i1 false}
!120 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.13, !13, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @trace_event_fields_radeon_vm_bo_update, !13, !"trace_event_fields_radeon_vm_bo_update", i1 false, i1 false}
!125 = !{ptr @trace_event_type_funcs_radeon_vm_bo_update, !13, !"trace_event_type_funcs_radeon_vm_bo_update", i1 false, i1 false}
!126 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @print_fmt_radeon_vm_bo_update, !13, !"print_fmt_radeon_vm_bo_update", i1 false, i1 false}
!128 = !{ptr @.str.16, !17, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.17, !17, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.18, !17, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.19, !17, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @trace_event_fields_radeon_vm_set_page, !17, !"trace_event_fields_radeon_vm_set_page", i1 false, i1 false}
!133 = !{ptr @trace_event_type_funcs_radeon_vm_set_page, !17, !"trace_event_type_funcs_radeon_vm_set_page", i1 false, i1 false}
!134 = !{ptr @.str.20, !17, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @print_fmt_radeon_vm_set_page, !17, !"print_fmt_radeon_vm_set_page", i1 false, i1 false}
!136 = !{ptr @.str.21, !21, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.22, !21, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @trace_event_fields_radeon_vm_flush, !21, !"trace_event_fields_radeon_vm_flush", i1 false, i1 false}
!139 = !{ptr @trace_event_type_funcs_radeon_vm_flush, !21, !"trace_event_type_funcs_radeon_vm_flush", i1 false, i1 false}
!140 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @print_fmt_radeon_vm_flush, !21, !"print_fmt_radeon_vm_flush", i1 false, i1 false}
!142 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @trace_event_fields_radeon_fence_request, !63, !"trace_event_fields_radeon_fence_request", i1 false, i1 false}
!146 = !{ptr @trace_event_type_funcs_radeon_fence_request, !63, !"trace_event_type_funcs_radeon_fence_request", i1 false, i1 false}
!147 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @print_fmt_radeon_fence_request, !63, !"print_fmt_radeon_fence_request", i1 false, i1 false}
!149 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @trace_event_fields_radeon_semaphore_request, !71, !"trace_event_fields_radeon_semaphore_request", i1 false, i1 false}
!154 = !{ptr @trace_event_type_funcs_radeon_semaphore_request, !71, !"trace_event_type_funcs_radeon_semaphore_request", i1 false, i1 false}
!155 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @print_fmt_radeon_semaphore_request, !71, !"print_fmt_radeon_semaphore_request", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"auto-init"}
