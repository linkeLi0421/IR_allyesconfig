; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_trace_points.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_trace_points.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.135, %struct.trace_event, ptr, ptr, %union.anon.136, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.135 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.138 = type { %struct.bpf_raw_event_map }
%union.anon.139 = type { %struct.bpf_raw_event_map }
%union.anon.140 = type { %struct.bpf_raw_event_map }
%union.anon.141 = type { %struct.bpf_raw_event_map }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%union.anon.143 = type { %struct.bpf_raw_event_map }
%union.anon.144 = type { %struct.bpf_raw_event_map }
%union.anon.145 = type { %struct.bpf_raw_event_map }
%union.anon.146 = type { %struct.bpf_raw_event_map }
%union.anon.147 = type { %struct.bpf_raw_event_map }
%union.anon.148 = type { %struct.bpf_raw_event_map }
%union.anon.149 = type { %struct.bpf_raw_event_map }
%union.anon.150 = type { %struct.bpf_raw_event_map }
%union.anon.151 = type { %struct.bpf_raw_event_map }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%union.anon.153 = type { %struct.bpf_raw_event_map }
%union.anon.154 = type { %struct.bpf_raw_event_map }
%union.anon.155 = type { %struct.bpf_raw_event_map }
%union.anon.156 = type { %struct.bpf_raw_event_map }
%union.anon.157 = type { %struct.bpf_raw_event_map }
%union.anon.158 = type { %struct.bpf_raw_event_map }
%union.anon.159 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_amdgpu_device_rreg = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_amdgpu_device_wreg = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_amdgpu_iv = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i64, i32, i32, [4 x i32], [0 x i8] }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.trace_event_raw_amdgpu_bo_create = type { %struct.trace_entry, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
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
%struct.amdgpu_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ww_acquire_ctx, ptr, ptr, %struct.amdgpu_bo_list_entry, %struct.list_head, ptr, i64, i64, i64, i64, %struct.amdgpu_bo_list_entry, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.trace_event_raw_amdgpu_cs = type { %struct.trace_entry, ptr, i32, i32, i32, [0 x i8] }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.91, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.91 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_raw_amdgpu_cs_ioctl = type { %struct.trace_entry, i64, i32, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_amdgpu_sched_run_job = type { %struct.trace_entry, i64, i32, i32, i32, i32, i32, [0 x i8] }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_amdgpu_vm_grab_id = type { %struct.trace_entry, i32, i32, i32, i32, i32, i64, i32, [0 x i8] }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.109, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.109 = type { %union.anon.110, [128 x i64] }
%union.anon.110 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_raw_amdgpu_vm_bo_map = type { %struct.trace_entry, ptr, i32, i32, i64, i64, [0 x i8] }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.trace_event_raw_amdgpu_vm_bo_unmap = type { %struct.trace_entry, ptr, i32, i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_amdgpu_vm_mapping = type { %struct.trace_entry, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_amdgpu_vm_update_ptes = type { %struct.trace_entry, i64, i64, i64, i32, i64, i32, i64, i32, [0 x i8] }
%struct.amdgpu_vm_update_params = type { ptr, ptr, i8, i8, ptr, ptr, i32, i8 }
%struct.trace_event_raw_amdgpu_vm_set_ptes = type { %struct.trace_entry, i64, i64, i32, i32, i64, i8, [0 x i8] }
%struct.trace_event_raw_amdgpu_vm_copy_ptes = type { %struct.trace_entry, i64, i64, i32, i8, [0 x i8] }
%struct.trace_event_raw_amdgpu_vm_flush = type { %struct.trace_entry, i32, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_amdgpu_pasid = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_amdgpu_bo_list_set = type { %struct.trace_entry, ptr, ptr, i64, [0 x i8] }
%struct.trace_event_raw_amdgpu_cs_bo_status = type { %struct.trace_entry, i64, i64, [0 x i8] }
%struct.trace_event_raw_amdgpu_bo_move = type { %struct.trace_entry, ptr, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_amdgpu_ib_pipe_sync = type { %struct.trace_entry, i32, i64, ptr, i64, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_amdgpu_device_rreg = internal constant [19 x i8] c"amdgpu_device_rreg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_device_rreg = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_device_rreg }, align 4
@__tracepoint_amdgpu_device_rreg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_device_rreg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_device_rreg, ptr null, ptr @__traceiter_amdgpu_device_rreg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_device_rreg = internal constant ptr @__tracepoint_amdgpu_device_rreg, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_device_wreg = internal constant [19 x i8] c"amdgpu_device_wreg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_device_wreg = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_device_wreg }, align 4
@__tracepoint_amdgpu_device_wreg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_device_wreg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_device_wreg, ptr null, ptr @__traceiter_amdgpu_device_wreg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_device_wreg = internal constant ptr @__tracepoint_amdgpu_device_wreg, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_iv = internal constant [10 x i8] c"amdgpu_iv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_iv = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_iv }, align 4
@__tracepoint_amdgpu_iv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_iv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_iv, ptr null, ptr @__traceiter_amdgpu_iv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_iv = internal constant ptr @__tracepoint_amdgpu_iv, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_bo_create = internal constant [17 x i8] c"amdgpu_bo_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_bo_create = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_bo_create }, align 4
@__tracepoint_amdgpu_bo_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_bo_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_bo_create, ptr null, ptr @__traceiter_amdgpu_bo_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_bo_create = internal constant ptr @__tracepoint_amdgpu_bo_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_cs = internal constant [10 x i8] c"amdgpu_cs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_cs = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_cs }, align 4
@__tracepoint_amdgpu_cs = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_cs, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_cs, ptr null, ptr @__traceiter_amdgpu_cs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_cs = internal constant ptr @__tracepoint_amdgpu_cs, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_cs_ioctl = internal constant [16 x i8] c"amdgpu_cs_ioctl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_cs_ioctl = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_cs_ioctl }, align 4
@__tracepoint_amdgpu_cs_ioctl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_cs_ioctl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_cs_ioctl, ptr null, ptr @__traceiter_amdgpu_cs_ioctl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_cs_ioctl = internal constant ptr @__tracepoint_amdgpu_cs_ioctl, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_sched_run_job = internal constant [21 x i8] c"amdgpu_sched_run_job\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_sched_run_job = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_sched_run_job }, align 4
@__tracepoint_amdgpu_sched_run_job = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_sched_run_job, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_sched_run_job, ptr null, ptr @__traceiter_amdgpu_sched_run_job, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_sched_run_job = internal constant ptr @__tracepoint_amdgpu_sched_run_job, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_grab_id = internal constant [18 x i8] c"amdgpu_vm_grab_id\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_grab_id = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_grab_id }, align 4
@__tracepoint_amdgpu_vm_grab_id = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_grab_id, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_grab_id, ptr null, ptr @__traceiter_amdgpu_vm_grab_id, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_grab_id = internal constant ptr @__tracepoint_amdgpu_vm_grab_id, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_bo_map = internal constant [17 x i8] c"amdgpu_vm_bo_map\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_bo_map = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_bo_map }, align 4
@__tracepoint_amdgpu_vm_bo_map = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_bo_map, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_bo_map, ptr null, ptr @__traceiter_amdgpu_vm_bo_map, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_bo_map = internal constant ptr @__tracepoint_amdgpu_vm_bo_map, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_bo_unmap = internal constant [19 x i8] c"amdgpu_vm_bo_unmap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_bo_unmap = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_bo_unmap }, align 4
@__tracepoint_amdgpu_vm_bo_unmap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_bo_unmap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_bo_unmap, ptr null, ptr @__traceiter_amdgpu_vm_bo_unmap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_bo_unmap = internal constant ptr @__tracepoint_amdgpu_vm_bo_unmap, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_bo_update = internal constant [20 x i8] c"amdgpu_vm_bo_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_bo_update = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_bo_update }, align 4
@__tracepoint_amdgpu_vm_bo_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_bo_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_bo_update, ptr null, ptr @__traceiter_amdgpu_vm_bo_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_bo_update = internal constant ptr @__tracepoint_amdgpu_vm_bo_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_bo_mapping = internal constant [21 x i8] c"amdgpu_vm_bo_mapping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_bo_mapping = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_bo_mapping }, align 4
@__tracepoint_amdgpu_vm_bo_mapping = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_bo_mapping, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_bo_mapping, ptr null, ptr @__traceiter_amdgpu_vm_bo_mapping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_bo_mapping = internal constant ptr @__tracepoint_amdgpu_vm_bo_mapping, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_bo_cs = internal constant [16 x i8] c"amdgpu_vm_bo_cs\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_bo_cs = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_bo_cs }, align 4
@__tracepoint_amdgpu_vm_bo_cs = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_bo_cs, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_bo_cs, ptr null, ptr @__traceiter_amdgpu_vm_bo_cs, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_bo_cs = internal constant ptr @__tracepoint_amdgpu_vm_bo_cs, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_update_ptes = internal constant [22 x i8] c"amdgpu_vm_update_ptes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_update_ptes = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_update_ptes }, align 4
@__tracepoint_amdgpu_vm_update_ptes = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_update_ptes, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_update_ptes, ptr null, ptr @__traceiter_amdgpu_vm_update_ptes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_update_ptes = internal constant ptr @__tracepoint_amdgpu_vm_update_ptes, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_set_ptes = internal constant [19 x i8] c"amdgpu_vm_set_ptes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_set_ptes = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_set_ptes }, align 4
@__tracepoint_amdgpu_vm_set_ptes = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_set_ptes, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_set_ptes, ptr null, ptr @__traceiter_amdgpu_vm_set_ptes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_set_ptes = internal constant ptr @__tracepoint_amdgpu_vm_set_ptes, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_copy_ptes = internal constant [20 x i8] c"amdgpu_vm_copy_ptes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_copy_ptes = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_copy_ptes }, align 4
@__tracepoint_amdgpu_vm_copy_ptes = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_copy_ptes, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_copy_ptes, ptr null, ptr @__traceiter_amdgpu_vm_copy_ptes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_copy_ptes = internal constant ptr @__tracepoint_amdgpu_vm_copy_ptes, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_vm_flush = internal constant [16 x i8] c"amdgpu_vm_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_vm_flush = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_vm_flush }, align 4
@__tracepoint_amdgpu_vm_flush = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_vm_flush, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_vm_flush, ptr null, ptr @__traceiter_amdgpu_vm_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_vm_flush = internal constant ptr @__tracepoint_amdgpu_vm_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_pasid_allocated = internal constant [23 x i8] c"amdgpu_pasid_allocated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_pasid_allocated = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_pasid_allocated }, align 4
@__tracepoint_amdgpu_pasid_allocated = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_pasid_allocated, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_pasid_allocated, ptr null, ptr @__traceiter_amdgpu_pasid_allocated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_pasid_allocated = internal constant ptr @__tracepoint_amdgpu_pasid_allocated, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_pasid_freed = internal constant [19 x i8] c"amdgpu_pasid_freed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_pasid_freed = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_pasid_freed }, align 4
@__tracepoint_amdgpu_pasid_freed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_pasid_freed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_pasid_freed, ptr null, ptr @__traceiter_amdgpu_pasid_freed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_pasid_freed = internal constant ptr @__tracepoint_amdgpu_pasid_freed, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_bo_list_set = internal constant [19 x i8] c"amdgpu_bo_list_set\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_bo_list_set = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_bo_list_set }, align 4
@__tracepoint_amdgpu_bo_list_set = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_bo_list_set, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_bo_list_set, ptr null, ptr @__traceiter_amdgpu_bo_list_set, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_bo_list_set = internal constant ptr @__tracepoint_amdgpu_bo_list_set, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_cs_bo_status = internal constant [20 x i8] c"amdgpu_cs_bo_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_cs_bo_status = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_cs_bo_status }, align 4
@__tracepoint_amdgpu_cs_bo_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_cs_bo_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_cs_bo_status, ptr null, ptr @__traceiter_amdgpu_cs_bo_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_cs_bo_status = internal constant ptr @__tracepoint_amdgpu_cs_bo_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_bo_move = internal constant [15 x i8] c"amdgpu_bo_move\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_bo_move = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_bo_move }, align 4
@__tracepoint_amdgpu_bo_move = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_bo_move, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_bo_move, ptr null, ptr @__traceiter_amdgpu_bo_move, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_bo_move = internal constant ptr @__tracepoint_amdgpu_bo_move, section "__tracepoints_ptrs", align 4
@__tpstrtab_amdgpu_ib_pipe_sync = internal constant [20 x i8] c"amdgpu_ib_pipe_sync\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_amdgpu_ib_pipe_sync = dso_local global %struct.static_call_key { ptr @__traceiter_amdgpu_ib_pipe_sync }, align 4
@__tracepoint_amdgpu_ib_pipe_sync = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_amdgpu_ib_pipe_sync, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_amdgpu_ib_pipe_sync, ptr null, ptr @__traceiter_amdgpu_ib_pipe_sync, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_amdgpu_ib_pipe_sync = internal constant ptr @__tracepoint_amdgpu_ib_pipe_sync, section "__tracepoints_ptrs", align 4
@str__amdgpu__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_amdgpu_device_rreg = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.133 { %struct.anon.134 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.133 { %struct.anon.134 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_device_rreg = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_device_rreg, ptr @perf_trace_amdgpu_device_rreg, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_device_rreg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_device_rreg, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_device_rreg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_device_rreg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_device_rreg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_device_rreg = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\220x%04lx, 0x%08lx, 0x%08lx\22, (unsigned long)REC->did, (unsigned long)REC->reg, (unsigned long)REC->value\00", [55 x i8] zeroinitializer }, align 32
@event_amdgpu_device_rreg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_device_rreg, %union.anon.135 { ptr @__tracepoint_amdgpu_device_rreg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_device_rreg }, ptr @print_fmt_amdgpu_device_rreg, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_device_rreg = internal global ptr @event_amdgpu_device_rreg, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_device_wreg = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.133 { %struct.anon.134 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.133 { %struct.anon.134 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_device_wreg = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_device_wreg, ptr @perf_trace_amdgpu_device_wreg, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_device_wreg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_device_wreg, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_device_wreg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_device_wreg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_device_wreg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_device_wreg = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\220x%04lx, 0x%08lx, 0x%08lx\22, (unsigned long)REC->did, (unsigned long)REC->reg, (unsigned long)REC->value\00", [55 x i8] zeroinitializer }, align 32
@event_amdgpu_device_wreg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_device_wreg, %union.anon.135 { ptr @__tracepoint_amdgpu_device_wreg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_device_wreg }, ptr @print_fmt_amdgpu_device_wreg, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_device_wreg = internal global ptr @event_amdgpu_device_wreg, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_iv = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.133 { %struct.anon.134 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.133 { %struct.anon.134 { ptr @.str.17, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_amdgpu_iv = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_iv, ptr @perf_trace_amdgpu_iv, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_iv, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_iv, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_iv, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_iv = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_iv, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_iv = internal global { [265 x i8], [87 x i8] } { [265 x i8] c"\22ih:%u client_id:%u src_id:%u ring:%u vmid:%u timestamp: %llu pasid:%u src_data: %08x %08x %08x %08x\22, REC->ih, REC->client_id, REC->src_id, REC->ring_id, REC->vmid, REC->timestamp, REC->pasid, REC->src_data[0], REC->src_data[1], REC->src_data[2], REC->src_data[3]\00", [87 x i8] zeroinitializer }, align 32
@event_amdgpu_iv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_iv, %union.anon.135 { ptr @__tracepoint_amdgpu_iv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_iv }, ptr @print_fmt_amdgpu_iv, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_iv = internal global ptr @event_amdgpu_iv, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_bo_create = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.133 { %struct.anon.134 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_amdgpu_bo_create = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_bo_create, ptr @perf_trace_amdgpu_bo_create, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_bo_create, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_bo_create, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_bo_create, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_bo_create = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_bo_create, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_bo_create = internal global { [136 x i8], [56 x i8] } { [136 x i8] c"\22bo=%p, pages=%u, type=%d, preferred=%d, allowed=%d, visible=%d\22, REC->bo, REC->pages, REC->type, REC->prefer, REC->allow, REC->visible\00", [56 x i8] zeroinitializer }, align 32
@event_amdgpu_bo_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_bo_create, %union.anon.135 { ptr @__tracepoint_amdgpu_bo_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_bo_create }, ptr @print_fmt_amdgpu_bo_create, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_bo_create = internal global ptr @event_amdgpu_bo_create, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_cs = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon.133 { %struct.anon.134 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_amdgpu_cs = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_cs, ptr @perf_trace_amdgpu_cs, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_cs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_cs, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_cs, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_cs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_cs, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_cs = internal global { [87 x i8], [41 x i8] } { [87 x i8] c"\22bo_list=%p, ring=%u, dw=%u, fences=%u\22, REC->bo_list, REC->ring, REC->dw, REC->fences\00", [41 x i8] zeroinitializer }, align 32
@event_amdgpu_cs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_cs, %union.anon.135 { ptr @__tracepoint_amdgpu_cs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_cs }, ptr @print_fmt_amdgpu_cs, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_cs = internal global ptr @event_amdgpu_cs, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_cs_ioctl = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.12, %union.anon.133 { %struct.anon.134 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.133 { %struct.anon.134 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.133 { %struct.anon.134 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.133 { %struct.anon.134 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_cs_ioctl = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_cs_ioctl, ptr @perf_trace_amdgpu_cs_ioctl, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_cs_ioctl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_cs_ioctl, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_cs_ioctl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_cs_ioctl = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_cs_ioctl, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_cs_ioctl = internal global { [175 x i8], [49 x i8] } { [175 x i8] c"\22sched_job=%llu, timeline=%s, context=%u, seqno=%u, ring_name=%s, num_ibs=%u\22, REC->sched_job_id, __get_str(timeline), REC->context, REC->seqno, __get_str(ring), REC->num_ibs\00", [49 x i8] zeroinitializer }, align 32
@event_amdgpu_cs_ioctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_cs_ioctl, %union.anon.135 { ptr @__tracepoint_amdgpu_cs_ioctl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_cs_ioctl }, ptr @print_fmt_amdgpu_cs_ioctl, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_cs_ioctl = internal global ptr @event_amdgpu_cs_ioctl, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_sched_run_job = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.12, %union.anon.133 { %struct.anon.134 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.133 { %struct.anon.134 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.133 { %struct.anon.134 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_amdgpu_sched_run_job = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_sched_run_job, ptr @perf_trace_amdgpu_sched_run_job, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_sched_run_job, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_sched_run_job, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_sched_run_job, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_sched_run_job = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_sched_run_job, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_sched_run_job = internal global { [175 x i8], [49 x i8] } { [175 x i8] c"\22sched_job=%llu, timeline=%s, context=%u, seqno=%u, ring_name=%s, num_ibs=%u\22, REC->sched_job_id, __get_str(timeline), REC->context, REC->seqno, __get_str(ring), REC->num_ibs\00", [49 x i8] zeroinitializer }, align 32
@event_amdgpu_sched_run_job = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_sched_run_job, %union.anon.135 { ptr @__tracepoint_amdgpu_sched_run_job }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_sched_run_job }, ptr @print_fmt_amdgpu_sched_run_job, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_sched_run_job = internal global ptr @event_amdgpu_sched_run_job, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_grab_id = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.47, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_grab_id = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_grab_id, ptr @perf_trace_amdgpu_vm_grab_id, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_grab_id, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_grab_id, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_grab_id, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_grab_id = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_grab_id, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_grab_id = internal global { [151 x i8], [41 x i8] } { [151 x i8] c"\22pasid=%d, ring=%s, id=%u, hub=%u, pd_addr=%010Lx needs_flush=%u\22, REC->pasid, __get_str(ring), REC->vmid, REC->vm_hub, REC->pd_addr, REC->needs_flush\00", [41 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_grab_id = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_grab_id, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_grab_id }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_grab_id }, ptr @print_fmt_amdgpu_vm_grab_id, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_grab_id = internal global ptr @event_amdgpu_vm_grab_id, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_bo_map = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.133 { %struct.anon.134 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.133 { %struct.anon.134 { ptr @.str.51, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.133 { %struct.anon.134 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.53, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.54, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_bo_map = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_bo_map, ptr @perf_trace_amdgpu_vm_bo_map, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_bo_map, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_bo_map, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_bo_map, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_bo_map = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_bo_map, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_bo_map = internal global { [114 x i8], [46 x i8] } { [114 x i8] c"\22bo=%p, start=%lx, last=%lx, offset=%010llx, flags=%llx\22, REC->bo, REC->start, REC->last, REC->offset, REC->flags\00", [46 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_bo_map = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_bo_map, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_bo_map }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_bo_map }, ptr @print_fmt_amdgpu_vm_bo_map, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_bo_map = internal global ptr @event_amdgpu_vm_bo_map, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_bo_unmap = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.133 { %struct.anon.134 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.133 { %struct.anon.134 { ptr @.str.51, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.133 { %struct.anon.134 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.53, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.54, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_bo_unmap = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_bo_unmap, ptr @perf_trace_amdgpu_vm_bo_unmap, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_bo_unmap, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_bo_unmap, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_bo_unmap, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_bo_unmap = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_bo_unmap, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_bo_unmap = internal global { [114 x i8], [46 x i8] } { [114 x i8] c"\22bo=%p, start=%lx, last=%lx, offset=%010llx, flags=%llx\22, REC->bo, REC->start, REC->last, REC->offset, REC->flags\00", [46 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_bo_unmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_bo_unmap, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_bo_unmap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_bo_unmap }, ptr @print_fmt_amdgpu_vm_bo_unmap, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_bo_unmap = internal global ptr @event_amdgpu_vm_bo_unmap, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_mapping = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.56, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.57, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.54, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_mapping = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_mapping, ptr @perf_trace_amdgpu_vm_mapping, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_mapping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_mapping, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_mapping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_mapping = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_mapping, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_mapping = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22soffs=%010llx, eoffs=%010llx, flags=%llx\22, REC->soffset, REC->eoffset, REC->flags\00", [45 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_bo_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_mapping, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_bo_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_mapping }, ptr @print_fmt_amdgpu_vm_mapping, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_bo_update = internal global ptr @event_amdgpu_vm_bo_update, section "_ftrace_events", align 4
@event_amdgpu_vm_bo_mapping = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_mapping, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_bo_mapping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_mapping }, ptr @print_fmt_amdgpu_vm_mapping, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_bo_mapping = internal global ptr @event_amdgpu_vm_bo_mapping, section "_ftrace_events", align 4
@event_amdgpu_vm_bo_cs = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_mapping, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_bo_cs }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_mapping }, ptr @print_fmt_amdgpu_vm_mapping, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_bo_cs = internal global ptr @event_amdgpu_vm_bo_cs, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_update_ptes = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.51, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.59, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.54, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.133 { %struct.anon.134 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.61, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.62, %union.anon.133 { %struct.anon.134 { ptr @.str.63, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.64, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.65, %union.anon.133 { %struct.anon.134 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_update_ptes = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_update_ptes, ptr @perf_trace_amdgpu_vm_update_ptes, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_update_ptes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_update_ptes, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_update_ptes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_update_ptes = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_update_ptes, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_update_ptes = internal global { [716 x i8], [180 x i8] } { [716 x i8] c"\22pid:%u vm_ctx:0x%llx start:0x%010llx end:0x%010llx, flags:0x%llx, incr:%llu, dst:\0A%s%s\22, REC->pid, REC->vm_ctx, REC->start, REC->end, REC->flags, REC->incr, __print_array( __get_dynamic_array(dst), __builtin_choose_expr(((!!(sizeof((typeof(REC->nptes) *)1 == (typeof(32u) *)1))) && ((sizeof(int) == sizeof(*(8 ? ((void *)((long)(REC->nptes) * 0l)) : (int *)8))) && (sizeof(int) == sizeof(*(8 ? ((void *)((long)(32u) * 0l)) : (int *)8))))), ((REC->nptes) < (32u) ? (REC->nptes) : (32u)), ({ typeof(REC->nptes) __UNIQUE_ID___x480 = (REC->nptes); typeof(32u) __UNIQUE_ID___y481 = (32u); ((__UNIQUE_ID___x480) < (__UNIQUE_ID___y481) ? (__UNIQUE_ID___x480) : (__UNIQUE_ID___y481)); })), 8), REC->nptes > 32 ? \22...\22 : \22\22\00", [180 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_update_ptes = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_update_ptes, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_update_ptes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_update_ptes }, ptr @print_fmt_amdgpu_vm_update_ptes, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_update_ptes = internal global ptr @event_amdgpu_vm_update_ptes, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_set_ptes = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.70, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.71, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.54, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.73, %union.anon.133 { %struct.anon.134 { ptr @.str.74, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_set_ptes = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_set_ptes, ptr @perf_trace_amdgpu_vm_set_ptes, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_set_ptes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_set_ptes, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_set_ptes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_set_ptes = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_set_ptes, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_set_ptes = internal global { [141 x i8], [51 x i8] } { [141 x i8] c"\22pe=%010Lx, addr=%010Lx, incr=%u, flags=%llx, count=%u, immediate=%d\22, REC->pe, REC->addr, REC->incr, REC->flags, REC->count, REC->immediate\00", [51 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_set_ptes = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_set_ptes, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_set_ptes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_set_ptes }, ptr @print_fmt_amdgpu_vm_set_ptes, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_set_ptes = internal global ptr @event_amdgpu_vm_set_ptes, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_copy_ptes = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.70, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.76, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.73, %union.anon.133 { %struct.anon.134 { ptr @.str.74, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_copy_ptes = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_copy_ptes, ptr @perf_trace_amdgpu_vm_copy_ptes, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_copy_ptes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_copy_ptes, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_copy_ptes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_copy_ptes = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_copy_ptes, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_copy_ptes = internal global { [95 x i8], [33 x i8] } { [95 x i8] c"\22pe=%010Lx, src=%010Lx, count=%u, immediate=%d\22, REC->pe, REC->src, REC->count, REC->immediate\00", [33 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_copy_ptes = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_copy_ptes, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_copy_ptes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_copy_ptes }, ptr @print_fmt_amdgpu_vm_copy_ptes, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_copy_ptes = internal global ptr @event_amdgpu_vm_copy_ptes, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_vm_flush = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.47, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_amdgpu_vm_flush = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_vm_flush, ptr @perf_trace_amdgpu_vm_flush, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_vm_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_vm_flush, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_vm_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_vm_flush = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_vm_flush, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_vm_flush = internal global { [95 x i8], [33 x i8] } { [95 x i8] c"\22ring=%s, id=%u, hub=%u, pd_addr=%010Lx\22, __get_str(ring), REC->vmid, REC->vm_hub,REC->pd_addr\00", [33 x i8] zeroinitializer }, align 32
@event_amdgpu_vm_flush = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_vm_flush, %union.anon.135 { ptr @__tracepoint_amdgpu_vm_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_vm_flush }, ptr @print_fmt_amdgpu_vm_flush, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_vm_flush = internal global ptr @event_amdgpu_vm_flush, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_pasid = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_amdgpu_pasid = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_pasid, ptr @perf_trace_amdgpu_pasid, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_pasid, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_pasid, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_pasid, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_pasid = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_pasid, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_pasid = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22pasid=%u\22, REC->pasid\00", [41 x i8] zeroinitializer }, align 32
@event_amdgpu_pasid_allocated = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_pasid, %union.anon.135 { ptr @__tracepoint_amdgpu_pasid_allocated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_pasid }, ptr @print_fmt_amdgpu_pasid, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_pasid_allocated = internal global ptr @event_amdgpu_pasid_allocated, section "_ftrace_events", align 4
@event_amdgpu_pasid_freed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_pasid, %union.anon.135 { ptr @__tracepoint_amdgpu_pasid_freed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_pasid }, ptr @print_fmt_amdgpu_pasid, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_pasid_freed = internal global ptr @event_amdgpu_pasid_freed, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_bo_list_set = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon.133 { %struct.anon.134 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.133 { %struct.anon.134 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.81, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_amdgpu_bo_list_set = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_bo_list_set, ptr @perf_trace_amdgpu_bo_list_set, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_bo_list_set, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_bo_list_set, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_bo_list_set, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_bo_list_set = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_bo_list_set, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_bo_list_set = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\22list=%p, bo=%p, bo_size=%Ld\22, REC->list, REC->bo, REC->bo_size\00", [32 x i8] zeroinitializer }, align 32
@event_amdgpu_bo_list_set = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_bo_list_set, %union.anon.135 { ptr @__tracepoint_amdgpu_bo_list_set }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_bo_list_set }, ptr @print_fmt_amdgpu_bo_list_set, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_bo_list_set = internal global ptr @event_amdgpu_bo_list_set, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_cs_bo_status = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.83, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.84, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_amdgpu_cs_bo_status = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_cs_bo_status, ptr @perf_trace_amdgpu_cs_bo_status, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_cs_bo_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_cs_bo_status, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_cs_bo_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_cs_bo_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_cs_bo_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_cs_bo_status = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22total_bo_size=%Ld, total_bo_count=%Ld\22, REC->total_bo, REC->total_size\00", [56 x i8] zeroinitializer }, align 32
@event_amdgpu_cs_bo_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_cs_bo_status, %union.anon.135 { ptr @__tracepoint_amdgpu_cs_bo_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_cs_bo_status }, ptr @print_fmt_amdgpu_cs_bo_status, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_cs_bo_status = internal global ptr @event_amdgpu_cs_bo_status, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_bo_move = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.133 { %struct.anon.134 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.133 { %struct.anon.134 { ptr @.str.81, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.133 { %struct.anon.134 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_amdgpu_bo_move = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_bo_move, ptr @perf_trace_amdgpu_bo_move, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_bo_move, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_bo_move, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_bo_move, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_bo_move = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_bo_move, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_bo_move = internal global { [97 x i8], [63 x i8] } { [97 x i8] c"\22bo=%p, from=%d, to=%d, size=%Ld\22, REC->bo, REC->old_placement, REC->new_placement, REC->bo_size\00", [63 x i8] zeroinitializer }, align 32
@event_amdgpu_bo_move = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_bo_move, %union.anon.135 { ptr @__tracepoint_amdgpu_bo_move }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_bo_move }, ptr @print_fmt_amdgpu_bo_move, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_bo_move = internal global ptr @event_amdgpu_bo_move, section "_ftrace_events", align 4
@trace_event_fields_amdgpu_ib_pipe_sync = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.133 { %struct.anon.134 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.133 { %struct.anon.134 { ptr @.str.89, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.133 { %struct.anon.134 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.133 { %struct.anon.134 { ptr @.str.90, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.133 { %struct.anon.134 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_amdgpu_ib_pipe_sync = internal global %struct.trace_event_class { ptr @str__amdgpu__trace_system_name, ptr @trace_event_raw_event_amdgpu_ib_pipe_sync, ptr @perf_trace_amdgpu_ib_pipe_sync, ptr @trace_event_reg, ptr @trace_event_fields_amdgpu_ib_pipe_sync, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_amdgpu_ib_pipe_sync, i64 24), ptr getelementptr (i8, ptr @event_class_amdgpu_ib_pipe_sync, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_amdgpu_ib_pipe_sync = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_amdgpu_ib_pipe_sync, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_amdgpu_ib_pipe_sync = internal global { [133 x i8], [59 x i8] } { [133 x i8] c"\22job ring=%s, id=%llu, need pipe sync to fence=%p, context=%llu, seq=%u\22, __get_str(ring), REC->id, REC->fence, REC->ctx, REC->seqno\00", [59 x i8] zeroinitializer }, align 32
@event_amdgpu_ib_pipe_sync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_amdgpu_ib_pipe_sync, %union.anon.135 { ptr @__tracepoint_amdgpu_ib_pipe_sync }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_amdgpu_ib_pipe_sync }, ptr @print_fmt_amdgpu_ib_pipe_sync, ptr null, %union.anon.136 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_amdgpu_ib_pipe_sync = internal global ptr @event_amdgpu_ib_pipe_sync, section "_ftrace_events", align 4
@__bpf_trace_tp_map_amdgpu_device_rreg = internal global %union.anon.137 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_device_rreg, ptr @__bpf_trace_amdgpu_device_rreg, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_device_wreg = internal global %union.anon.138 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_device_wreg, ptr @__bpf_trace_amdgpu_device_wreg, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_iv = internal global %union.anon.139 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_iv, ptr @__bpf_trace_amdgpu_iv, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_bo_create = internal global %union.anon.140 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_bo_create, ptr @__bpf_trace_amdgpu_bo_create, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_cs = internal global %union.anon.141 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_cs, ptr @__bpf_trace_amdgpu_cs, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_cs_ioctl = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_cs_ioctl, ptr @__bpf_trace_amdgpu_cs_ioctl, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_sched_run_job = internal global %union.anon.143 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_sched_run_job, ptr @__bpf_trace_amdgpu_sched_run_job, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_grab_id = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_grab_id, ptr @__bpf_trace_amdgpu_vm_grab_id, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_bo_map = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_bo_map, ptr @__bpf_trace_amdgpu_vm_bo_map, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_bo_unmap = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_bo_unmap, ptr @__bpf_trace_amdgpu_vm_bo_unmap, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_bo_update = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_bo_update, ptr @__bpf_trace_amdgpu_vm_mapping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_bo_mapping = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_bo_mapping, ptr @__bpf_trace_amdgpu_vm_mapping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_bo_cs = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_bo_cs, ptr @__bpf_trace_amdgpu_vm_mapping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_update_ptes = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_update_ptes, ptr @__bpf_trace_amdgpu_vm_update_ptes, i32 9, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_set_ptes = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_set_ptes, ptr @__bpf_trace_amdgpu_vm_set_ptes, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_copy_ptes = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_copy_ptes, ptr @__bpf_trace_amdgpu_vm_copy_ptes, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_vm_flush = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_vm_flush, ptr @__bpf_trace_amdgpu_vm_flush, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_pasid_allocated = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_pasid_allocated, ptr @__bpf_trace_amdgpu_pasid, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_pasid_freed = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_pasid_freed, ptr @__bpf_trace_amdgpu_pasid, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_bo_list_set = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_bo_list_set, ptr @__bpf_trace_amdgpu_bo_list_set, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_cs_bo_status = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_cs_bo_status, ptr @__bpf_trace_amdgpu_cs_bo_status, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_bo_move = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_bo_move, ptr @__bpf_trace_amdgpu_bo_move, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_amdgpu_ib_pipe_sync = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_amdgpu_ib_pipe_sync, ptr @__bpf_trace_amdgpu_ib_pipe_sync, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"did\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint32_t\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0x%04lx, 0x%08lx, 0x%08lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ih\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"client_id\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"src_id\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ring_id\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vmid\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vmid_src\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timestamp\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timestamp_src\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pasid\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsigned[4]\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"src_data\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"ih:%u client_id:%u src_id:%u ring:%u vmid:%u timestamp: %llu pasid:%u src_data: %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct amdgpu_bo *\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bo\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pages\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prefer\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"allow\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"visible\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"bo=%p, pages=%u, type=%d, preferred=%d, allowed=%d, visible=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct amdgpu_bo_list *\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bo_list\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dw\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fences\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bo_list=%p, ring=%u, dw=%u, fences=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sched_job_id\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeline\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"context\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct dma_fence *\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fence\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_ibs\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"sched_job=%llu, timeline=%s, context=%u, seqno=%u, ring_name=%s, num_ibs=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vm_hub\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pd_addr\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"needs_flush\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"pasid=%d, ring=%s, id=%u, hub=%u, pd_addr=%010Lx needs_flush=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"last\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bo=%p, start=%lx, last=%lx, offset=%010llx, flags=%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"soffset\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eoffset\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"soffs=%010llx, eoffs=%010llx, flags=%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nptes\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"incr\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vm_ctx\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u64[]\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"pid:%u vm_ctx:0x%llx start:0x%010llx end:0x%010llx, flags:0x%llx, incr:%llu, dst:\0A%s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"...\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pe\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"immediate\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"pe=%010Lx, addr=%010Lx, incr=%u, flags=%llx, count=%u, immediate=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pe=%010Lx, src=%010Lx, count=%u, immediate=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ring=%s, id=%u, hub=%u, pd_addr=%010Lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pasid=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bo_size\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list=%p, bo=%p, bo_size=%Ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"total_bo\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"total_size\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"total_bo_size=%Ld, total_bo_count=%Ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_placement\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"old_placement\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bo=%p, from=%d, to=%d, size=%Ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"job ring=%s, id=%llu, need pipe sync to fence=%p, context=%llu, seq=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [52 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_trace_points.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"str__amdgpu__trace_system_name\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 36, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [38 x i8] c"trace_event_fields_amdgpu_device_rreg\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_amdgpu_device_rreg\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"print_fmt_amdgpu_device_rreg\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"event_amdgpu_device_rreg\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [38 x i8] c"trace_event_fields_amdgpu_device_wreg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_amdgpu_device_wreg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [29 x i8] c"print_fmt_amdgpu_device_wreg\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [25 x i8] c"event_amdgpu_device_wreg\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 57, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [29 x i8] c"trace_event_fields_amdgpu_iv\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_amdgpu_iv\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"print_fmt_amdgpu_iv\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"event_amdgpu_iv\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [36 x i8] c"trace_event_fields_amdgpu_bo_create\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_amdgpu_bo_create\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"print_fmt_amdgpu_bo_create\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"event_amdgpu_bo_create\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [29 x i8] c"trace_event_fields_amdgpu_cs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_amdgpu_cs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"print_fmt_amdgpu_cs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"event_amdgpu_cs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [35 x i8] c"trace_event_fields_amdgpu_cs_ioctl\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_amdgpu_cs_ioctl\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"print_fmt_amdgpu_cs_ioctl\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"event_amdgpu_cs_ioctl\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [40 x i8] c"trace_event_fields_amdgpu_sched_run_job\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_amdgpu_sched_run_job\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [31 x i8] c"print_fmt_amdgpu_sched_run_job\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"event_amdgpu_sched_run_job\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 190, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [37 x i8] c"trace_event_fields_amdgpu_vm_grab_id\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_amdgpu_vm_grab_id\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [28 x i8] c"print_fmt_amdgpu_vm_grab_id\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"event_amdgpu_vm_grab_id\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [36 x i8] c"trace_event_fields_amdgpu_vm_bo_map\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_amdgpu_vm_bo_map\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"print_fmt_amdgpu_vm_bo_map\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"event_amdgpu_vm_bo_map\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [38 x i8] c"trace_event_fields_amdgpu_vm_bo_unmap\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_amdgpu_vm_bo_unmap\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [29 x i8] c"print_fmt_amdgpu_vm_bo_unmap\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"event_amdgpu_vm_bo_unmap\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 267, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [37 x i8] c"trace_event_fields_amdgpu_vm_mapping\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_amdgpu_vm_mapping\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"print_fmt_amdgpu_vm_mapping\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [26 x i8] c"event_amdgpu_vm_bo_update\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 309, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"event_amdgpu_vm_bo_mapping\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 314, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"event_amdgpu_vm_bo_cs\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 319, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [41 x i8] c"trace_event_fields_amdgpu_vm_update_ptes\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_amdgpu_vm_update_ptes\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [32 x i8] c"print_fmt_amdgpu_vm_update_ptes\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [28 x i8] c"event_amdgpu_vm_update_ptes\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [38 x i8] c"trace_event_fields_amdgpu_vm_set_ptes\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_amdgpu_vm_set_ptes\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [29 x i8] c"print_fmt_amdgpu_vm_set_ptes\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [25 x i8] c"event_amdgpu_vm_set_ptes\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [39 x i8] c"trace_event_fields_amdgpu_vm_copy_ptes\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_amdgpu_vm_copy_ptes\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [30 x i8] c"print_fmt_amdgpu_vm_copy_ptes\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"event_amdgpu_vm_copy_ptes\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [35 x i8] c"trace_event_fields_amdgpu_vm_flush\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_amdgpu_vm_flush\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"print_fmt_amdgpu_vm_flush\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"event_amdgpu_vm_flush\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [32 x i8] c"trace_event_fields_amdgpu_pasid\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_amdgpu_pasid\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [23 x i8] c"print_fmt_amdgpu_pasid\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [29 x i8] c"event_amdgpu_pasid_allocated\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 449, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"event_amdgpu_pasid_freed\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 454, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant [38 x i8] c"trace_event_fields_amdgpu_bo_list_set\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_amdgpu_bo_list_set\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [29 x i8] c"print_fmt_amdgpu_bo_list_set\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [25 x i8] c"event_amdgpu_bo_list_set\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [39 x i8] c"trace_event_fields_amdgpu_cs_bo_status\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_amdgpu_cs_bo_status\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [30 x i8] c"print_fmt_amdgpu_cs_bo_status\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [26 x i8] c"event_amdgpu_cs_bo_status\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [34 x i8] c"trace_event_fields_amdgpu_bo_move\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_amdgpu_bo_move\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [25 x i8] c"print_fmt_amdgpu_bo_move\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"event_amdgpu_bo_move\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [39 x i8] c"trace_event_fields_amdgpu_ib_pipe_sync\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_amdgpu_ib_pipe_sync\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"print_fmt_amdgpu_ib_pipe_sync\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [26 x i8] c"event_amdgpu_ib_pipe_sync\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 38, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 76, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 116, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 142, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 164, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 216, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 243, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 291, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 324, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 368, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 394, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 415, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 437, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 459, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 479, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 495, i32 1 }
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [65 x i8] c"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 516, i32 1 }
@llvm.compiler.used = appending global [288 x ptr] [ptr @__bpf_trace_tp_map_amdgpu_bo_create, ptr @__bpf_trace_tp_map_amdgpu_bo_list_set, ptr @__bpf_trace_tp_map_amdgpu_bo_move, ptr @__bpf_trace_tp_map_amdgpu_cs, ptr @__bpf_trace_tp_map_amdgpu_cs_bo_status, ptr @__bpf_trace_tp_map_amdgpu_cs_ioctl, ptr @__bpf_trace_tp_map_amdgpu_device_rreg, ptr @__bpf_trace_tp_map_amdgpu_device_wreg, ptr @__bpf_trace_tp_map_amdgpu_ib_pipe_sync, ptr @__bpf_trace_tp_map_amdgpu_iv, ptr @__bpf_trace_tp_map_amdgpu_pasid_allocated, ptr @__bpf_trace_tp_map_amdgpu_pasid_freed, ptr @__bpf_trace_tp_map_amdgpu_sched_run_job, ptr @__bpf_trace_tp_map_amdgpu_vm_bo_cs, ptr @__bpf_trace_tp_map_amdgpu_vm_bo_map, ptr @__bpf_trace_tp_map_amdgpu_vm_bo_mapping, ptr @__bpf_trace_tp_map_amdgpu_vm_bo_unmap, ptr @__bpf_trace_tp_map_amdgpu_vm_bo_update, ptr @__bpf_trace_tp_map_amdgpu_vm_copy_ptes, ptr @__bpf_trace_tp_map_amdgpu_vm_flush, ptr @__bpf_trace_tp_map_amdgpu_vm_grab_id, ptr @__bpf_trace_tp_map_amdgpu_vm_set_ptes, ptr @__bpf_trace_tp_map_amdgpu_vm_update_ptes, ptr @__event_amdgpu_bo_create, ptr @__event_amdgpu_bo_list_set, ptr @__event_amdgpu_bo_move, ptr @__event_amdgpu_cs, ptr @__event_amdgpu_cs_bo_status, ptr @__event_amdgpu_cs_ioctl, ptr @__event_amdgpu_device_rreg, ptr @__event_amdgpu_device_wreg, ptr @__event_amdgpu_ib_pipe_sync, ptr @__event_amdgpu_iv, ptr @__event_amdgpu_pasid_allocated, ptr @__event_amdgpu_pasid_freed, ptr @__event_amdgpu_sched_run_job, ptr @__event_amdgpu_vm_bo_cs, ptr @__event_amdgpu_vm_bo_map, ptr @__event_amdgpu_vm_bo_mapping, ptr @__event_amdgpu_vm_bo_unmap, ptr @__event_amdgpu_vm_bo_update, ptr @__event_amdgpu_vm_copy_ptes, ptr @__event_amdgpu_vm_flush, ptr @__event_amdgpu_vm_grab_id, ptr @__event_amdgpu_vm_set_ptes, ptr @__event_amdgpu_vm_update_ptes, ptr @__tracepoint_amdgpu_bo_create, ptr @__tracepoint_amdgpu_bo_list_set, ptr @__tracepoint_amdgpu_bo_move, ptr @__tracepoint_amdgpu_cs, ptr @__tracepoint_amdgpu_cs_bo_status, ptr @__tracepoint_amdgpu_cs_ioctl, ptr @__tracepoint_amdgpu_device_rreg, ptr @__tracepoint_amdgpu_device_wreg, ptr @__tracepoint_amdgpu_ib_pipe_sync, ptr @__tracepoint_amdgpu_iv, ptr @__tracepoint_amdgpu_pasid_allocated, ptr @__tracepoint_amdgpu_pasid_freed, ptr @__tracepoint_amdgpu_sched_run_job, ptr @__tracepoint_amdgpu_vm_bo_cs, ptr @__tracepoint_amdgpu_vm_bo_map, ptr @__tracepoint_amdgpu_vm_bo_mapping, ptr @__tracepoint_amdgpu_vm_bo_unmap, ptr @__tracepoint_amdgpu_vm_bo_update, ptr @__tracepoint_amdgpu_vm_copy_ptes, ptr @__tracepoint_amdgpu_vm_flush, ptr @__tracepoint_amdgpu_vm_grab_id, ptr @__tracepoint_amdgpu_vm_set_ptes, ptr @__tracepoint_amdgpu_vm_update_ptes, ptr @__tracepoint_ptr_amdgpu_bo_create, ptr @__tracepoint_ptr_amdgpu_bo_list_set, ptr @__tracepoint_ptr_amdgpu_bo_move, ptr @__tracepoint_ptr_amdgpu_cs, ptr @__tracepoint_ptr_amdgpu_cs_bo_status, ptr @__tracepoint_ptr_amdgpu_cs_ioctl, ptr @__tracepoint_ptr_amdgpu_device_rreg, ptr @__tracepoint_ptr_amdgpu_device_wreg, ptr @__tracepoint_ptr_amdgpu_ib_pipe_sync, ptr @__tracepoint_ptr_amdgpu_iv, ptr @__tracepoint_ptr_amdgpu_pasid_allocated, ptr @__tracepoint_ptr_amdgpu_pasid_freed, ptr @__tracepoint_ptr_amdgpu_sched_run_job, ptr @__tracepoint_ptr_amdgpu_vm_bo_cs, ptr @__tracepoint_ptr_amdgpu_vm_bo_map, ptr @__tracepoint_ptr_amdgpu_vm_bo_mapping, ptr @__tracepoint_ptr_amdgpu_vm_bo_unmap, ptr @__tracepoint_ptr_amdgpu_vm_bo_update, ptr @__tracepoint_ptr_amdgpu_vm_copy_ptes, ptr @__tracepoint_ptr_amdgpu_vm_flush, ptr @__tracepoint_ptr_amdgpu_vm_grab_id, ptr @__tracepoint_ptr_amdgpu_vm_set_ptes, ptr @__tracepoint_ptr_amdgpu_vm_update_ptes, ptr @event_amdgpu_bo_create, ptr @event_amdgpu_bo_list_set, ptr @event_amdgpu_bo_move, ptr @event_amdgpu_cs, ptr @event_amdgpu_cs_bo_status, ptr @event_amdgpu_cs_ioctl, ptr @event_amdgpu_device_rreg, ptr @event_amdgpu_device_wreg, ptr @event_amdgpu_ib_pipe_sync, ptr @event_amdgpu_iv, ptr @event_amdgpu_pasid_allocated, ptr @event_amdgpu_pasid_freed, ptr @event_amdgpu_sched_run_job, ptr @event_amdgpu_vm_bo_cs, ptr @event_amdgpu_vm_bo_map, ptr @event_amdgpu_vm_bo_mapping, ptr @event_amdgpu_vm_bo_unmap, ptr @event_amdgpu_vm_bo_update, ptr @event_amdgpu_vm_copy_ptes, ptr @event_amdgpu_vm_flush, ptr @event_amdgpu_vm_grab_id, ptr @event_amdgpu_vm_set_ptes, ptr @event_amdgpu_vm_update_ptes, ptr @event_class_amdgpu_bo_create, ptr @event_class_amdgpu_bo_list_set, ptr @event_class_amdgpu_bo_move, ptr @event_class_amdgpu_cs, ptr @event_class_amdgpu_cs_bo_status, ptr @event_class_amdgpu_cs_ioctl, ptr @event_class_amdgpu_device_rreg, ptr @event_class_amdgpu_device_wreg, ptr @event_class_amdgpu_ib_pipe_sync, ptr @event_class_amdgpu_iv, ptr @event_class_amdgpu_pasid, ptr @event_class_amdgpu_sched_run_job, ptr @event_class_amdgpu_vm_bo_map, ptr @event_class_amdgpu_vm_bo_unmap, ptr @event_class_amdgpu_vm_copy_ptes, ptr @event_class_amdgpu_vm_flush, ptr @event_class_amdgpu_vm_grab_id, ptr @event_class_amdgpu_vm_mapping, ptr @event_class_amdgpu_vm_set_ptes, ptr @event_class_amdgpu_vm_update_ptes, ptr @str__amdgpu__trace_system_name, ptr @trace_event_fields_amdgpu_device_rreg, ptr @trace_event_type_funcs_amdgpu_device_rreg, ptr @print_fmt_amdgpu_device_rreg, ptr @trace_event_fields_amdgpu_device_wreg, ptr @trace_event_type_funcs_amdgpu_device_wreg, ptr @print_fmt_amdgpu_device_wreg, ptr @trace_event_fields_amdgpu_iv, ptr @trace_event_type_funcs_amdgpu_iv, ptr @print_fmt_amdgpu_iv, ptr @trace_event_fields_amdgpu_bo_create, ptr @trace_event_type_funcs_amdgpu_bo_create, ptr @print_fmt_amdgpu_bo_create, ptr @trace_event_fields_amdgpu_cs, ptr @trace_event_type_funcs_amdgpu_cs, ptr @print_fmt_amdgpu_cs, ptr @trace_event_fields_amdgpu_cs_ioctl, ptr @trace_event_type_funcs_amdgpu_cs_ioctl, ptr @print_fmt_amdgpu_cs_ioctl, ptr @trace_event_fields_amdgpu_sched_run_job, ptr @trace_event_type_funcs_amdgpu_sched_run_job, ptr @print_fmt_amdgpu_sched_run_job, ptr @trace_event_fields_amdgpu_vm_grab_id, ptr @trace_event_type_funcs_amdgpu_vm_grab_id, ptr @print_fmt_amdgpu_vm_grab_id, ptr @trace_event_fields_amdgpu_vm_bo_map, ptr @trace_event_type_funcs_amdgpu_vm_bo_map, ptr @print_fmt_amdgpu_vm_bo_map, ptr @trace_event_fields_amdgpu_vm_bo_unmap, ptr @trace_event_type_funcs_amdgpu_vm_bo_unmap, ptr @print_fmt_amdgpu_vm_bo_unmap, ptr @trace_event_fields_amdgpu_vm_mapping, ptr @trace_event_type_funcs_amdgpu_vm_mapping, ptr @print_fmt_amdgpu_vm_mapping, ptr @trace_event_fields_amdgpu_vm_update_ptes, ptr @trace_event_type_funcs_amdgpu_vm_update_ptes, ptr @print_fmt_amdgpu_vm_update_ptes, ptr @trace_event_fields_amdgpu_vm_set_ptes, ptr @trace_event_type_funcs_amdgpu_vm_set_ptes, ptr @print_fmt_amdgpu_vm_set_ptes, ptr @trace_event_fields_amdgpu_vm_copy_ptes, ptr @trace_event_type_funcs_amdgpu_vm_copy_ptes, ptr @print_fmt_amdgpu_vm_copy_ptes, ptr @trace_event_fields_amdgpu_vm_flush, ptr @trace_event_type_funcs_amdgpu_vm_flush, ptr @print_fmt_amdgpu_vm_flush, ptr @trace_event_fields_amdgpu_pasid, ptr @trace_event_type_funcs_amdgpu_pasid, ptr @print_fmt_amdgpu_pasid, ptr @trace_event_fields_amdgpu_bo_list_set, ptr @trace_event_type_funcs_amdgpu_bo_list_set, ptr @print_fmt_amdgpu_bo_list_set, ptr @trace_event_fields_amdgpu_cs_bo_status, ptr @trace_event_type_funcs_amdgpu_cs_bo_status, ptr @print_fmt_amdgpu_cs_bo_status, ptr @trace_event_fields_amdgpu_bo_move, ptr @trace_event_type_funcs_amdgpu_bo_move, ptr @print_fmt_amdgpu_bo_move, ptr @trace_event_fields_amdgpu_ib_pipe_sync, ptr @trace_event_type_funcs_amdgpu_ib_pipe_sync, ptr @print_fmt_amdgpu_ib_pipe_sync, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__amdgpu__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_device_rreg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_device_rreg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_device_rreg to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_device_rreg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_device_wreg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_device_wreg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_device_wreg to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_device_wreg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_iv to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_iv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_iv to i32), i32 265, i32 352, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_iv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_bo_create to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_bo_create to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_bo_create to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_bo_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_cs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_cs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_cs to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_cs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_cs_ioctl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_cs_ioctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_cs_ioctl to i32), i32 175, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_cs_ioctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_sched_run_job to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_sched_run_job to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_sched_run_job to i32), i32 175, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_sched_run_job to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_grab_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_grab_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_grab_id to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_grab_id to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_bo_map to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_bo_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_bo_map to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_bo_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_bo_unmap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_bo_unmap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_bo_unmap to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_bo_unmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_mapping to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_mapping to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_bo_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_bo_mapping to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_bo_cs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_update_ptes to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_update_ptes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_update_ptes to i32), i32 716, i32 896, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_update_ptes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_set_ptes to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_set_ptes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_set_ptes to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_set_ptes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_copy_ptes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_copy_ptes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_copy_ptes to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_copy_ptes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_vm_flush to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_vm_flush to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_vm_flush to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_vm_flush to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_pasid to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_pasid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_pasid to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_pasid_allocated to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_pasid_freed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_bo_list_set to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_bo_list_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_bo_list_set to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_bo_list_set to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_cs_bo_status to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_cs_bo_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_cs_bo_status to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_cs_bo_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_bo_move to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_bo_move to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_bo_move to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_bo_move to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_amdgpu_ib_pipe_sync to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_amdgpu_ib_pipe_sync to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_amdgpu_ib_pipe_sync to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_amdgpu_ib_pipe_sync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_device_rreg(ptr nocapture readnone %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_device_rreg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_device_wreg(ptr nocapture readnone %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_device_wreg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_iv(ptr nocapture readnone %__data, i32 noundef %ih, ptr noundef %iv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_iv, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %ih, ptr noundef %iv) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_bo_create(ptr nocapture readnone %__data, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_bo_create, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %bo) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_cs(ptr nocapture readnone %__data, ptr noundef %p, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_cs, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %p, i32 noundef %i) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_cs_ioctl(ptr nocapture readnone %__data, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_cs_ioctl, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %job) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_sched_run_job(ptr nocapture readnone %__data, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_sched_run_job, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %job) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_grab_id(ptr nocapture readnone %__data, ptr noundef %vm, ptr noundef %ring, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_grab_id, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %vm, ptr noundef %ring, ptr noundef %job) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_bo_map(ptr nocapture readnone %__data, ptr noundef %bo_va, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_bo_map, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %bo_va, ptr noundef %mapping) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_bo_unmap(ptr nocapture readnone %__data, ptr noundef %bo_va, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_bo_unmap, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %bo_va, ptr noundef %mapping) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_bo_update(ptr nocapture readnone %__data, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_bo_update, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %mapping) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_bo_mapping(ptr nocapture readnone %__data, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_bo_mapping, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %mapping) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_bo_cs(ptr nocapture readnone %__data, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_bo_cs, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %mapping) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_update_ptes(ptr nocapture readnone %__data, ptr noundef %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_update_ptes, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_set_ptes(ptr nocapture readnone %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_set_ptes, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_copy_ptes(ptr nocapture readnone %__data, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_copy_ptes, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_vm_flush(ptr nocapture readnone %__data, ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_vm_flush, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_pasid_allocated(ptr nocapture readnone %__data, i32 noundef %pasid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_pasid_allocated, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %pasid) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_pasid_freed(ptr nocapture readnone %__data, i32 noundef %pasid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_pasid_freed, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %pasid) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_bo_list_set(ptr nocapture readnone %__data, ptr noundef %list, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_bo_list_set, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %list, ptr noundef %bo) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_cs_bo_status(ptr nocapture readnone %__data, i64 noundef %total_bo, i64 noundef %total_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_cs_bo_status, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i64 noundef %total_bo, i64 noundef %total_size) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_bo_move(ptr nocapture readnone %__data, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_bo_move, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_amdgpu_ib_pipe_sync(ptr nocapture readnone %__data, ptr noundef %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_amdgpu_ib_pipe_sync, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sched_job, ptr noundef %fence) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_device_rreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %did6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %did6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %did, ptr %did6, align 4
  %reg7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %reg7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reg, ptr %reg7, align 4
  %value8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value, ptr %value8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_device_rreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %did17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %did17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %did, ptr %did17, align 4
  %reg18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %reg, ptr %reg18, align 4
  %value19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %value19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_device_wreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %did6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %did6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %did, ptr %did6, align 4
  %reg7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %reg7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reg, ptr %reg7, align 4
  %value8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value, ptr %value8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_device_wreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %did17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %did17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %did, ptr %did17, align 4
  %reg18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %reg, ptr %reg18, align 4
  %value19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %value19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_iv(ptr noundef %__data, i32 noundef %ih, ptr nocapture noundef readonly %iv) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 64) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ih6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ih6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ih, ptr %ih6, align 8
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 1
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %client_id7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %client_id7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %client_id7, align 4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 2
  %7 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_id, align 8
  %src_id8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %src_id8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %src_id8, align 8
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 3
  %10 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_id, align 4
  %ring_id9 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %ring_id9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ring_id9, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 4
  %13 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vmid, align 8
  %vmid10 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %vmid10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vmid10, align 8
  %vmid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 5
  %16 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vmid_src, align 4
  %vmid_src11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %vmid_src11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vmid_src11, align 4
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 6
  %19 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timestamp, align 8
  %timestamp12 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %timestamp12 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %timestamp12, align 8
  %timestamp_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 7
  %22 = ptrtoint ptr %timestamp_src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timestamp_src, align 8
  %timestamp_src13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 8
  %24 = ptrtoint ptr %timestamp_src13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %timestamp_src13, align 8
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 8
  %25 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pasid, align 4
  %pasid14 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 9
  %27 = ptrtoint ptr %pasid14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pasid14, align 4
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10
  %28 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_data, align 4
  %src_data15 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 10
  %30 = ptrtoint ptr %src_data15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %src_data15, align 8
  %arrayidx18 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 10, i32 2
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx24, align 8
  %arrayidx26 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 3
  %37 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call3, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_iv(ptr noundef %__data, i32 noundef %ih, ptr nocapture noundef readonly %iv) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 68, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ih17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ih17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ih, ptr %ih17, align 8
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 1
  %28 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %client_id, align 4
  %client_id18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %client_id18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %client_id18, align 4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 2
  %31 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_id, align 8
  %src_id19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %src_id19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %src_id19, align 8
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 3
  %34 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ring_id, align 4
  %ring_id20 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %ring_id20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ring_id20, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 4
  %37 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vmid, align 8
  %vmid21 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %vmid21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %vmid21, align 8
  %vmid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 5
  %40 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vmid_src, align 4
  %vmid_src22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %vmid_src22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %vmid_src22, align 4
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 6
  %43 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %timestamp, align 8
  %timestamp23 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %timestamp23 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %timestamp23, align 8
  %timestamp_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 7
  %46 = ptrtoint ptr %timestamp_src to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timestamp_src, align 8
  %timestamp_src24 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 8
  %48 = ptrtoint ptr %timestamp_src24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %timestamp_src24, align 8
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 8
  %49 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pasid, align 4
  %pasid25 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 9
  %51 = ptrtoint ptr %pasid25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pasid25, align 4
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10
  %52 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_data, align 4
  %src_data27 = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 10
  %54 = ptrtoint ptr %src_data27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %src_data27, align 8
  %arrayidx30 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 2
  %58 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr %struct.amdgpu_iv_entry, ptr %iv, i32 0, i32 10, i32 3
  %61 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %call13, i32 0, i32 10, i32 3
  %63 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx40, align 4
  %64 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rctx, align 4
  %66 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 68, i32 noundef %65, ptr noundef %__data, i64 noundef 1, ptr noundef %67, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bo6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bo6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bo, ptr %bo6, align 4
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pages, align 4
  %9 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type, align 4
  %type = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type, align 4
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bo, align 8
  %prefer = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %prefer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %prefer, align 4
  %allowed_domains = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 1
  %16 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %allowed_domains, align 4
  %allow = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %allow to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %allow, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags, align 8
  %conv = trunc i64 %20 to i32
  %visible = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call3, i32 0, i32 6
  %21 = ptrtoint ptr %visible to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %visible, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bo17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bo17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bo, ptr %bo17, align 4
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_pages, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pages, align 4
  %33 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mem_type, align 4
  %type = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %type, align 4
  %37 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bo, align 8
  %prefer = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %prefer to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %prefer, align 4
  %allowed_domains = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 1
  %40 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %allowed_domains, align 4
  %allow = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %allow to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %allow, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %flags, align 8
  %conv = trunc i64 %44 to i32
  %visible = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %call13, i32 0, i32 6
  %45 = ptrtoint ptr %visible to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %visible, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_cs(ptr noundef %__data, ptr nocapture noundef readonly %p, i32 noundef %i) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bo_list = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %3 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo_list, align 4
  %bo_list6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %bo_list6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bo_list6, align 4
  %entity = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity, align 8
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched, align 4
  %idx = getelementptr i8, ptr %11, i32 620
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ring, align 4
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %15 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %18, i32 %i, i32 1
  %19 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length_dw, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call3, i32 0, i32 3
  %21 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dw, align 4
  %22 = load ptr, ptr %entity, align 8
  %rq9 = getelementptr inbounds %struct.drm_sched_entity, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %rq9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq9, align 8
  %sched10 = getelementptr inbounds %struct.drm_sched_rq, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %sched10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sched10, align 4
  %add.ptr12 = getelementptr i8, ptr %26, i32 -144
  %call13 = call i32 @amdgpu_fence_count_emitted(ptr noundef %add.ptr12) #8
  %fences = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call3, i32 0, i32 4
  %27 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call13, ptr %fences, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_cs(ptr noundef %__data, ptr nocapture noundef readonly %p, i32 noundef %i) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bo_list = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 8
  %27 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bo_list, align 4
  %bo_list17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %bo_list17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bo_list17, align 4
  %entity = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 6
  %30 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entity, align 8
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sched, align 4
  %idx = getelementptr i8, ptr %35, i32 620
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 4
  %ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ring, align 4
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %39 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %42, i32 %i, i32 1
  %43 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length_dw, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call13, i32 0, i32 3
  %45 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dw, align 4
  %46 = load ptr, ptr %entity, align 8
  %rq22 = getelementptr inbounds %struct.drm_sched_entity, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %rq22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rq22, align 8
  %sched23 = getelementptr inbounds %struct.drm_sched_rq, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sched23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sched23, align 4
  %add.ptr25 = getelementptr i8, ptr %50, i32 -144
  %call26 = call i32 @amdgpu_fence_count_emitted(ptr noundef %add.ptr25) #8
  %fences = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %call13, i32 0, i32 4
  %51 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call26, ptr %fences, align 4
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_cs_ioctl(ptr noundef %__data, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %s_fence.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %3 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fence.i, align 8
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %get_timeline_name.i = getelementptr inbounds %struct.dma_fence_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %get_timeline_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_timeline_name.i, align 4
  %call.i76 = tail call ptr %8(ptr noundef %finished.i) #8
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %if.end.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge, label %cond.true.i

if.end.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_amdgpu_cs_ioctl.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fence.i, align 8
  %finished7.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1
  %ops8.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops8.i, align 4
  %get_timeline_name9.i = getelementptr inbounds %struct.dma_fence_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %get_timeline_name9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_timeline_name9.i, align 4
  %call13.i = tail call ptr %14(ptr noundef %finished7.i) #8
  br label %trace_event_get_offsets_amdgpu_cs_ioctl.exit

trace_event_get_offsets_amdgpu_cs_ioctl.exit:     ; preds = %cond.true.i, %if.end.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge
  %cond.i = phi ptr [ %call13.i, %cond.true.i ], [ @.str.34, %if.end.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge ]
  %call14.i = tail call i32 @strlen(ptr noundef %cond.i) #11
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %15 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr i8, ptr %16, i32 688
  %tobool19.not.i = icmp eq ptr %name.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr @.str.34, ptr %name.i
  %call31.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add32.i = add i32 %call31.i, 1
  %add38.i = add i32 %call14.i, 41
  %add = add i32 %add38.i, %add32.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_amdgpu_cs_ioctl.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_amdgpu_cs_ioctl.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_amdgpu_cs_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_amdgpu_cs_ioctl.exit
  %shl35.i = shl i32 %add32.i, 16
  %or37.i = or i32 %shl35.i, %add38.i
  %add.i = shl i32 %call14.i, 16
  %or.i = add i32 %add.i, 65576
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %__data_loc_timeline, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or37.i, ptr %__data_loc_ring, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %id, align 8
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %sched_job_id, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %22 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fence.i, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %get_timeline_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_timeline_name, align 4
  %call11 = call ptr %27(ptr noundef %finished) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fence.i, align 8
  %finished15 = getelementptr inbounds %struct.drm_sched_fence, ptr %29, i32 0, i32 1
  %ops16 = getelementptr inbounds %struct.drm_sched_fence, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops16, align 4
  %get_timeline_name17 = getelementptr inbounds %struct.dma_fence_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %get_timeline_name17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_timeline_name17, align 4
  %call21 = call ptr %33(ptr noundef %finished15) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %call21, %cond.true ], [ @.str.34, %if.end5.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %34 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fence.i, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %context, align 8
  %conv = trunc i64 %37 to i32
  %context26 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %context26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %context26, align 4
  %39 = load ptr, ptr %s_fence.i, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %39, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %seqno, align 8
  %conv30 = trunc i64 %41 to i32
  %seqno31 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 4
  %42 = ptrtoint ptr %seqno31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv30, ptr %seqno31, align 8
  %43 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_loc_ring, align 8
  %and33 = and i32 %44, 65535
  %add.ptr34 = getelementptr i8, ptr %call3, i32 %and33
  %45 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sched.i, align 4
  %name = getelementptr i8, ptr %46, i32 688
  %tobool37.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool37.not, ptr @.str.34, ptr %name
  %call49 = call ptr @strcpy(ptr noundef %add.ptr34, ptr noundef nonnull %spec.select) #12
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %47 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ibs, align 4
  %num_ibs50 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call3, i32 0, i32 7
  %49 = ptrtoint ptr %num_ibs50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num_ibs50, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_amdgpu_cs_ioctl.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_cs_ioctl(ptr noundef %__data, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %s_fence.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %2 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fence.i, align 8
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_timeline_name.i = getelementptr inbounds %struct.dma_fence_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %get_timeline_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_timeline_name.i, align 4
  %call.i = tail call ptr %7(ptr noundef %finished.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge, label %cond.true.i

entry.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_amdgpu_cs_ioctl.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fence.i, align 8
  %finished7.i = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1
  %ops8.i = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops8.i, align 4
  %get_timeline_name9.i = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %get_timeline_name9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_timeline_name9.i, align 4
  %call13.i = tail call ptr %13(ptr noundef %finished7.i) #8
  br label %trace_event_get_offsets_amdgpu_cs_ioctl.exit

trace_event_get_offsets_amdgpu_cs_ioctl.exit:     ; preds = %cond.true.i, %entry.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge
  %cond.i = phi ptr [ %call13.i, %cond.true.i ], [ @.str.34, %entry.trace_event_get_offsets_amdgpu_cs_ioctl.exit_crit_edge ]
  %call14.i = tail call i32 @strlen(ptr noundef %cond.i) #11
  %add.i = shl i32 %call14.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 40
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %14 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr i8, ptr %15, i32 688
  %tobool19.not.i = icmp eq ptr %name.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr @.str.34, ptr %name.i
  %call31.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add32.i = add i32 %call31.i, 1
  %add34.i = add i32 %call14.i, 41
  %shl35.i = shl i32 %add32.i, 16
  %or37.i = or i32 %shl35.i, %add34.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %16 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %perf_events, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !360) #8
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, %18
  %25 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %26 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %27, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_amdgpu_cs_ioctl.exit.if.end_crit_edge

trace_event_get_offsets_amdgpu_cs_ioctl.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_amdgpu_cs_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_amdgpu_cs_ioctl.exit
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %25, align 4
  %tobool.not.i101.not = icmp eq ptr %29, null
  br i1 %tobool.not.i101.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_amdgpu_cs_ioctl.exit.if.end_crit_edge
  %add38.i = add i32 %call14.i, 52
  %add12 = add i32 %add38.i, %add32.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #8
  %33 = ptrtoint ptr %32 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %36 = ptrtoint ptr %35 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx2.i, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i, ptr %__data_loc_timeline, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or37.i, ptr %__data_loc_ring, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 5
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %id, align 8
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %sched_job_id, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %46 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fence.i, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %47, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_sched_fence, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %get_timeline_name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_timeline_name, align 4
  %call23 = call ptr %51(ptr noundef %finished) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fence.i, align 8
  %finished27 = getelementptr inbounds %struct.drm_sched_fence, ptr %53, i32 0, i32 1
  %ops28 = getelementptr inbounds %struct.drm_sched_fence, ptr %53, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops28, align 4
  %get_timeline_name29 = getelementptr inbounds %struct.dma_fence_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %get_timeline_name29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_timeline_name29, align 4
  %call33 = call ptr %57(ptr noundef %finished27) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %call33, %cond.true ], [ @.str.34, %if.end16.cond.end_crit_edge ]
  %call34 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %58 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fence.i, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %59, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %context, align 8
  %conv = trunc i64 %61 to i32
  %context38 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 3
  %62 = ptrtoint ptr %context38 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv, ptr %context38, align 4
  %63 = load ptr, ptr %s_fence.i, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %63, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seqno, align 8
  %conv42 = trunc i64 %65 to i32
  %seqno43 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 4
  %66 = ptrtoint ptr %seqno43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv42, ptr %seqno43, align 8
  %67 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %__data_loc_ring, align 8
  %and45 = and i32 %68, 65535
  %add.ptr46 = getelementptr i8, ptr %call13, i32 %and45
  %69 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sched.i, align 4
  %name = getelementptr i8, ptr %70, i32 688
  %tobool50.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool50.not, ptr @.str.34, ptr %name
  %call62 = call ptr @strcpy(ptr noundef %add.ptr46, ptr noundef nonnull %spec.select) #12
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %71 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_ibs, align 4
  %num_ibs63 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %call13, i32 0, i32 7
  %73 = ptrtoint ptr %num_ibs63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_ibs63, align 4
  %74 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rctx, align 4
  %76 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %75, ptr noundef %__data, i64 noundef 1, ptr noundef %77, ptr noundef %25, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_sched_run_job(ptr noundef %__data, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %s_fence.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %3 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fence.i, align 8
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %get_timeline_name.i = getelementptr inbounds %struct.dma_fence_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %get_timeline_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_timeline_name.i, align 4
  %call.i76 = tail call ptr %8(ptr noundef %finished.i) #8
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %if.end.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge, label %cond.true.i

if.end.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_amdgpu_sched_run_job.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fence.i, align 8
  %finished7.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1
  %ops8.i = getelementptr inbounds %struct.drm_sched_fence, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops8.i, align 4
  %get_timeline_name9.i = getelementptr inbounds %struct.dma_fence_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %get_timeline_name9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_timeline_name9.i, align 4
  %call13.i = tail call ptr %14(ptr noundef %finished7.i) #8
  br label %trace_event_get_offsets_amdgpu_sched_run_job.exit

trace_event_get_offsets_amdgpu_sched_run_job.exit: ; preds = %cond.true.i, %if.end.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge
  %cond.i = phi ptr [ %call13.i, %cond.true.i ], [ @.str.34, %if.end.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge ]
  %call14.i = tail call i32 @strlen(ptr noundef %cond.i) #11
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %15 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr i8, ptr %16, i32 688
  %tobool19.not.i = icmp eq ptr %name.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr @.str.34, ptr %name.i
  %call31.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add32.i = add i32 %call31.i, 1
  %add38.i = add i32 %call14.i, 41
  %add = add i32 %add38.i, %add32.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_amdgpu_sched_run_job.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_amdgpu_sched_run_job.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_amdgpu_sched_run_job.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_amdgpu_sched_run_job.exit
  %shl35.i = shl i32 %add32.i, 16
  %add34.i = add i32 %call14.i, 37
  %or37.i = or i32 %shl35.i, %add34.i
  %add.i = shl i32 %call14.i, 16
  %or.i = add i32 %add.i, 65572
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %__data_loc_timeline, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or37.i, ptr %__data_loc_ring, align 4
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %id, align 8
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %sched_job_id, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 36
  %22 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fence.i, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_sched_fence, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %get_timeline_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_timeline_name, align 4
  %call11 = call ptr %27(ptr noundef %finished) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fence.i, align 8
  %finished15 = getelementptr inbounds %struct.drm_sched_fence, ptr %29, i32 0, i32 1
  %ops16 = getelementptr inbounds %struct.drm_sched_fence, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops16, align 4
  %get_timeline_name17 = getelementptr inbounds %struct.dma_fence_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %get_timeline_name17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_timeline_name17, align 4
  %call21 = call ptr %33(ptr noundef %finished15) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %call21, %cond.true ], [ @.str.34, %if.end5.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %34 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fence.i, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %context, align 8
  %conv = trunc i64 %37 to i32
  %context26 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 3
  %38 = ptrtoint ptr %context26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %context26, align 4
  %39 = load ptr, ptr %s_fence.i, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %39, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %seqno, align 8
  %conv30 = trunc i64 %41 to i32
  %seqno31 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 4
  %42 = ptrtoint ptr %seqno31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv30, ptr %seqno31, align 8
  %43 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_loc_ring, align 4
  %and33 = and i32 %44, 65535
  %add.ptr34 = getelementptr i8, ptr %call3, i32 %and33
  %45 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sched.i, align 4
  %name = getelementptr i8, ptr %46, i32 688
  %tobool37.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool37.not, ptr @.str.34, ptr %name
  %call49 = call ptr @strcpy(ptr noundef %add.ptr34, ptr noundef nonnull %spec.select) #12
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %47 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ibs, align 4
  %num_ibs50 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call3, i32 0, i32 6
  %49 = ptrtoint ptr %num_ibs50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num_ibs50, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_amdgpu_sched_run_job.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_sched_run_job(ptr noundef %__data, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %s_fence.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %2 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fence.i, align 8
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_timeline_name.i = getelementptr inbounds %struct.dma_fence_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %get_timeline_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_timeline_name.i, align 4
  %call.i = tail call ptr %7(ptr noundef %finished.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge, label %cond.true.i

entry.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_amdgpu_sched_run_job.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fence.i, align 8
  %finished7.i = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1
  %ops8.i = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops8.i, align 4
  %get_timeline_name9.i = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %get_timeline_name9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_timeline_name9.i, align 4
  %call13.i = tail call ptr %13(ptr noundef %finished7.i) #8
  br label %trace_event_get_offsets_amdgpu_sched_run_job.exit

trace_event_get_offsets_amdgpu_sched_run_job.exit: ; preds = %cond.true.i, %entry.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge
  %cond.i = phi ptr [ %call13.i, %cond.true.i ], [ @.str.34, %entry.trace_event_get_offsets_amdgpu_sched_run_job.exit_crit_edge ]
  %call14.i = tail call i32 @strlen(ptr noundef %cond.i) #11
  %add.i = shl i32 %call14.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 36
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %14 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr i8, ptr %15, i32 688
  %tobool19.not.i = icmp eq ptr %name.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr @.str.34, ptr %name.i
  %call31.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add32.i = add i32 %call31.i, 1
  %add34.i = add i32 %call14.i, 37
  %shl35.i = shl i32 %add32.i, 16
  %or37.i = or i32 %shl35.i, %add34.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %16 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %perf_events, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !360) #8
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, %18
  %25 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %26 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %27, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_amdgpu_sched_run_job.exit.if.end_crit_edge

trace_event_get_offsets_amdgpu_sched_run_job.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_amdgpu_sched_run_job.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_amdgpu_sched_run_job.exit
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %25, align 4
  %tobool.not.i101.not = icmp eq ptr %29, null
  br i1 %tobool.not.i101.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_amdgpu_sched_run_job.exit.if.end_crit_edge
  %add38.i = add i32 %call14.i, 52
  %add12 = add i32 %add38.i, %add32.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #8
  %33 = ptrtoint ptr %32 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %36 = ptrtoint ptr %35 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx2.i, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i, ptr %__data_loc_timeline, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or37.i, ptr %__data_loc_ring, align 4
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 5
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %id, align 8
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %sched_job_id, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 36
  %46 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fence.i, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %47, i32 0, i32 1
  %ops = getelementptr inbounds %struct.drm_sched_fence, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %get_timeline_name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_timeline_name, align 4
  %call23 = call ptr %51(ptr noundef %finished) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fence.i, align 8
  %finished27 = getelementptr inbounds %struct.drm_sched_fence, ptr %53, i32 0, i32 1
  %ops28 = getelementptr inbounds %struct.drm_sched_fence, ptr %53, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops28, align 4
  %get_timeline_name29 = getelementptr inbounds %struct.dma_fence_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %get_timeline_name29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_timeline_name29, align 4
  %call33 = call ptr %57(ptr noundef %finished27) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %call33, %cond.true ], [ @.str.34, %if.end16.cond.end_crit_edge ]
  %call34 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %58 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fence.i, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %59, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %context, align 8
  %conv = trunc i64 %61 to i32
  %context38 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 3
  %62 = ptrtoint ptr %context38 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv, ptr %context38, align 4
  %63 = load ptr, ptr %s_fence.i, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %63, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seqno, align 8
  %conv42 = trunc i64 %65 to i32
  %seqno43 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 4
  %66 = ptrtoint ptr %seqno43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv42, ptr %seqno43, align 8
  %67 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %__data_loc_ring, align 4
  %and45 = and i32 %68, 65535
  %add.ptr46 = getelementptr i8, ptr %call13, i32 %and45
  %69 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sched.i, align 4
  %name = getelementptr i8, ptr %70, i32 688
  %tobool50.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool50.not, ptr @.str.34, ptr %name
  %call62 = call ptr @strcpy(ptr noundef %add.ptr46, ptr noundef nonnull %spec.select) #12
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %71 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_ibs, align 4
  %num_ibs63 = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %call13, i32 0, i32 6
  %73 = ptrtoint ptr %num_ibs63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_ibs63, align 8
  %74 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rctx, align 4
  %76 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %75, ptr noundef %__data, i64 noundef 1, ptr noundef %77, ptr noundef %25, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_grab_id(ptr noundef %__data, ptr nocapture noundef readonly %vm, ptr noundef readonly %ring, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %call.i35 = tail call i32 @strlen(ptr noundef nonnull %name.i) #11
  %add = add i32 %call.i35, 49
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl i32 %call.i35, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ring, align 4
  %pasid = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %4 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pasid, align 4
  %pasid7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %pasid7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pasid7, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %tobool9.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool9.not, ptr @.str.34, ptr %name.i
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %7 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vmid, align 8
  %vmid13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %vmid13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vmid13, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vmhub, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %vm_hub to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %vm_hub, align 8
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %15 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vm_pd_addr, align 8
  %pd_addr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %pd_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %pd_addr, align 8
  %vm_needs_flush = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %18 = ptrtoint ptr %vm_needs_flush to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vm_needs_flush, align 8, !range !373
  %20 = zext i8 %19 to i32
  %needs_flush = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %needs_flush to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %needs_flush, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_grab_id(ptr noundef %__data, ptr nocapture noundef readonly %vm, ptr noundef readonly %ring, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %name.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65580
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 60
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ring, align 4
  %pasid = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %28 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pasid, align 4
  %pasid18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %pasid18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pasid18, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %tobool21.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool21.not, ptr @.str.34, ptr %name.i
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %31 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vmid, align 8
  %vmid25 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %vmid25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %vmid25, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vmhub, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %vm_hub to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vm_hub, align 8
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %39 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vm_pd_addr, align 8
  %pd_addr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %pd_addr to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %pd_addr, align 8
  %vm_needs_flush = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %42 = ptrtoint ptr %vm_needs_flush to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vm_needs_flush, align 8, !range !373
  %44 = zext i8 %43 to i32
  %needs_flush = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %needs_flush to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %needs_flush, align 8
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_bo_map(ptr noundef %__data, ptr noundef readonly %bo_va, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %bo_va, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %if.end5.cond.end_crit_edge ]
  %bo7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %bo7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %bo7, align 8
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv = trunc i64 %7 to i32
  %start8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %start8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %start8, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %9 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last, align 8
  %conv9 = trunc i64 %10 to i32
  %last10 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %last10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %last10, align 8
  %offset = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  %offset11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %offset11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %offset11, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags, align 8
  %flags12 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %flags12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %flags12, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_bo_map(ptr noundef %__data, ptr noundef readonly %bo_va, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %bo_va, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %27 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bo, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %28, %cond.true ], [ null, %if.end16.cond.end_crit_edge ]
  %bo18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %bo18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cond, ptr %bo18, align 8
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %30 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start, align 8
  %conv = trunc i64 %31 to i32
  %start19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %start19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %start19, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %33 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last, align 8
  %conv20 = trunc i64 %34 to i32
  %last21 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %last21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv20, ptr %last21, align 8
  %offset = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 6
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset, align 8
  %offset22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %offset22 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %offset22, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %flags, align 8
  %flags23 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %flags23 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %flags23, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_bo_unmap(ptr noundef %__data, ptr noundef readonly %bo_va, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %bo_va, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %if.end5.cond.end_crit_edge ]
  %bo7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %bo7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %bo7, align 8
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv = trunc i64 %7 to i32
  %start8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %start8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %start8, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %9 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last, align 8
  %conv9 = trunc i64 %10 to i32
  %last10 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %last10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %last10, align 8
  %offset = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  %offset11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %offset11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %offset11, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags, align 8
  %flags12 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %flags12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %flags12, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_bo_unmap(ptr noundef %__data, ptr noundef readonly %bo_va, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %bo_va, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %27 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bo, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ %28, %cond.true ], [ null, %if.end16.cond.end_crit_edge ]
  %bo18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %bo18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cond, ptr %bo18, align 8
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %30 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start, align 8
  %conv = trunc i64 %31 to i32
  %start19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %start19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %start19, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %33 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last, align 8
  %conv20 = trunc i64 %34 to i32
  %last21 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %last21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv20, ptr %last21, align 8
  %offset = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 6
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset, align 8
  %offset22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %offset22 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %offset22, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %flags, align 8
  %flags23 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %flags23 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %flags23, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_mapping(ptr noundef %__data, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %soffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %soffset to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %soffset, align 8
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %6 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last, align 8
  %add6 = add i64 %7, 1
  %eoffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %eoffset to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add6, ptr %eoffset, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %flags7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %flags7 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %flags7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_mapping(ptr noundef %__data, ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start, align 8
  %soffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %soffset to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %soffset, align 8
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %30 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %last, align 8
  %add17 = add i64 %31, 1
  %eoffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %eoffset to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add17, ptr %eoffset, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags, align 8
  %flags18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %flags18 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %flags18, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_update_ptes(ptr noundef %__data, ptr nocapture noundef readonly %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mul.i = shl i32 %nptes, 3
  %add = add i32 %mul.i, 72
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl.i = shl i32 %nptes, 19
  %or.i = or i32 %shl.i, 68
  %__data_loc_dst = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 8
  %3 = ptrtoint ptr %__data_loc_dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_dst, align 8
  %start7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %start7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %start, ptr %start7, align 8
  %end8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %end8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %end, ptr %end8, align 8
  %flags9 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %flags, ptr %flags9, align 8
  %incr10 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %incr10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %incr, ptr %incr10, align 8
  %nptes11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %nptes11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nptes, ptr %nptes11, align 8
  %pid12 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 6
  %9 = ptrtoint ptr %pid12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pid, ptr %pid12, align 8
  %vm_ctx13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call3, i32 0, i32 7
  %10 = ptrtoint ptr %vm_ctx13 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %vm_ctx, ptr %vm_ctx13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nptes)
  %cmp51.not = icmp eq i32 %nptes, 0
  br i1 %cmp51.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %pages_addr = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  %dst.addr.052 = phi i64 [ %dst, %for.body.lr.ph ], [ %add18, %cond.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %pages_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages_addr, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i64 @amdgpu_vm_map_gart(ptr noundef nonnull %12, i64 noundef %dst.addr.052) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i64 [ %call16, %cond.true ], [ %dst.addr.052, %for.body.cond.end_crit_edge ]
  %13 = ptrtoint ptr %__data_loc_dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %__data_loc_dst, align 8
  %and = and i32 %14, 65535
  %add.ptr = getelementptr i8, ptr %call3, i32 %and
  %arrayidx = getelementptr i64, ptr %add.ptr, i32 %i.053
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %cond, ptr %arrayidx, align 8
  %add18 = add i64 %dst.addr.052, %incr
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %nptes
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.end5.for.end_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_update_ptes(ptr noundef %__data, ptr nocapture noundef readonly %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %mul.i = shl i32 %nptes, 3
  %shl.i = shl i32 %nptes, 19
  %or.i = or i32 %shl.i, 68
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %mul.i, 83
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dst = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 8
  %27 = ptrtoint ptr %__data_loc_dst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_dst, align 8
  %start18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %start18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %start, ptr %start18, align 8
  %end19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %end19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %end, ptr %end19, align 8
  %flags20 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 3
  %30 = ptrtoint ptr %flags20 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %flags, ptr %flags20, align 8
  %incr21 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %incr21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %incr, ptr %incr21, align 8
  %nptes22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %nptes22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %nptes, ptr %nptes22, align 8
  %pid23 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 6
  %33 = ptrtoint ptr %pid23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %pid, ptr %pid23, align 8
  %vm_ctx24 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %call13, i32 0, i32 7
  %34 = ptrtoint ptr %vm_ctx24 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %vm_ctx, ptr %vm_ctx24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nptes)
  %cmp75.not = icmp eq i32 %nptes, 0
  br i1 %cmp75.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %pages_addr = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  %dst.addr.076 = phi i64 [ %dst, %for.body.lr.ph ], [ %add31, %cond.end.for.body_crit_edge ]
  %35 = ptrtoint ptr %pages_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages_addr, align 4
  %tobool25.not = icmp eq ptr %36, null
  br i1 %tobool25.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i64 @amdgpu_vm_map_gart(ptr noundef nonnull %36, i64 noundef %dst.addr.076) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i64 [ %call27, %cond.true ], [ %dst.addr.076, %for.body.cond.end_crit_edge ]
  %37 = ptrtoint ptr %__data_loc_dst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %__data_loc_dst, align 8
  %and29 = and i32 %38, 65535
  %add.ptr = getelementptr i8, ptr %call13, i32 %and29
  %arrayidx30 = getelementptr i64, ptr %add.ptr, i32 %i.077
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %cond, ptr %arrayidx30, align 8
  %add31 = add i64 %dst.addr.076, %incr
  %inc = add nuw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %nptes
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.end16.for.end_crit_edge
  %40 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rctx, align 4
  %42 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %41, ptr noundef %__data, i64 noundef 1, ptr noundef %43, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_set_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pe7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pe7 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %pe, ptr %pe7, align 8
  %addr8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %addr, ptr %addr8, align 8
  %count9 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %count9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count9, align 8
  %incr10 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %incr10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %incr, ptr %incr10, align 4
  %flags11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %flags11 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %flags, ptr %flags11, align 8
  %immediate13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %immediate13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %immediate13, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_set_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pe18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %pe18 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %pe, ptr %pe18, align 8
  %addr19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %addr19 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %addr, ptr %addr19, align 8
  %count20 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %count20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %count, ptr %count20, align 8
  %incr21 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %incr21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %incr, ptr %incr21, align 4
  %flags22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 5
  %31 = ptrtoint ptr %flags22 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %flags, ptr %flags22, align 8
  %immediate24 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %call14, i32 0, i32 6
  %32 = ptrtoint ptr %immediate24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %immediate24, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 52, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_copy_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pe7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pe7 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %pe, ptr %pe7, align 8
  %src8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %src8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %src, ptr %src8, align 8
  %count9 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %count9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count9, align 8
  %immediate11 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %immediate11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %immediate11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_copy_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pe18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %pe18 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %pe, ptr %pe18, align 8
  %src19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %src19 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %src, ptr %src19, align 8
  %count20 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %count20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %count, ptr %count20, align 8
  %immediate22 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %immediate22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %immediate22, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 36, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_vm_flush(ptr noundef %__data, ptr noundef readonly %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %name.i) #11
  %add = add i32 %call.i30, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ring, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str.34, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %vmid12 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %vmid12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vmid, ptr %vmid12, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vmhub, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %vm_hub to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vm_hub, align 8
  %pd_addr13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %pd_addr13 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %pd_addr, ptr %pd_addr13, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_vm_flush(ptr noundef %__data, ptr noundef readonly %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %name.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ring, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str.34, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %vmid24 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %vmid24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %vmid, ptr %vmid24, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vmhub, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %vm_hub to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %vm_hub, align 8
  %pd_addr25 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %pd_addr25 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %pd_addr, ptr %pd_addr25, align 8
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_pasid(ptr noundef %__data, i32 noundef %pasid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pasid6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_pasid, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pasid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pasid, ptr %pasid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_pasid(ptr noundef %__data, i32 noundef %pasid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pasid17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_pasid, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pasid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pasid, ptr %pasid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_bo_list_set(ptr noundef %__data, ptr noundef %list, ptr noundef %bo) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %list6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list6, align 8
  %bo7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %bo7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bo, ptr %bo7, align 4
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 8
  %conv = zext i32 %6 to i64
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %bo_size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %bo_size, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_bo_list_set(ptr noundef %__data, ptr noundef %list, ptr noundef %bo) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %list17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %list17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %list17, align 8
  %bo18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %bo18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bo, ptr %bo18, align 4
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 8
  %conv = zext i32 %30 to i64
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %bo_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %bo_size, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_cs_bo_status(ptr noundef %__data, i64 noundef %total_bo, i64 noundef %total_size) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %total_bo6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %total_bo6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %total_bo, ptr %total_bo6, align 8
  %total_size7 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %total_size7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %total_size, ptr %total_size7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_cs_bo_status(ptr noundef %__data, i64 noundef %total_bo, i64 noundef %total_size) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %total_bo17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %total_bo17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %total_bo, ptr %total_bo17, align 8
  %total_size18 = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %total_size18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %total_size, ptr %total_size18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_bo_move(ptr noundef %__data, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bo6 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bo6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bo, ptr %bo6, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 8
  %conv = zext i32 %5 to i64
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %bo_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %bo_size, align 8
  %new_placement8 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %new_placement8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_placement, ptr %new_placement8, align 8
  %old_placement9 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %old_placement9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %old_placement, ptr %old_placement9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_bo_move(ptr noundef %__data, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !360) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bo17 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bo17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bo, ptr %bo17, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 8
  %conv = zext i32 %29 to i64
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %bo_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %bo_size, align 8
  %new_placement19 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %new_placement19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %new_placement, ptr %new_placement19, align 8
  %old_placement20 = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %old_placement20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %old_placement, ptr %old_placement20, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_amdgpu_ib_pipe_sync(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !370

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !371

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %3 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %tobool.not.i34 = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool.not.i34, ptr @.str.34, ptr %6
  %call.i35 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add = add i32 %call.i35, 49
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl i32 %call.i35, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_ring, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %8 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sched.i, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %tobool7.not = icmp eq ptr %11, null
  %spec.select = select i1 %tobool7.not, ptr @.str.34, ptr %11
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %id, align 8
  %id13 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %id13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %id13, align 8
  %fence14 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %fence14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fence, ptr %fence14, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %context, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %19 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %20 to i32
  %seqno15 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %seqno15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %seqno15, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_amdgpu_ib_pipe_sync(ptr noundef %__data, ptr nocapture noundef readonly %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !372
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %2 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.34, ptr %5
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65580
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !360) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i58.not = icmp eq ptr %19, null
  br i1 %tobool.not.i58.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 60
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !360) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_ring, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %32 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sched.i, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %tobool19.not = icmp eq ptr %35, null
  %spec.select = select i1 %tobool19.not, ptr @.str.34, ptr %35
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 5
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %id, align 8
  %id25 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %id25 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %id25, align 8
  %fence26 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %fence26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fence, ptr %fence26, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %40 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %context, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %43 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %44 to i32
  %seqno27 = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %seqno27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %seqno27, align 8
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %15, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_device_rreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %did to i64
  %conv4 = zext i32 %reg to i64
  %conv8 = zext i32 %value to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_device_wreg(ptr noundef %__data, i32 noundef %did, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %did to i64
  %conv4 = zext i32 %reg to i64
  %conv8 = zext i32 %value to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_iv(ptr noundef %__data, i32 noundef %ih, ptr noundef %iv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %ih to i64
  %0 = ptrtoint ptr %iv to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_bo_create(ptr noundef %__data, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bo to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_cs(ptr noundef %__data, ptr noundef %p, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %p to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %i to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_cs_ioctl(ptr noundef %__data, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %job to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_sched_run_job(ptr noundef %__data, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %job to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_grab_id(ptr noundef %__data, ptr noundef %vm, ptr noundef %ring, ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %vm to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %ring to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %job to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_bo_map(ptr noundef %__data, ptr noundef %bo_va, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bo_va to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %mapping to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_bo_unmap(ptr noundef %__data, ptr noundef %bo_va, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bo_va to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %mapping to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_mapping(ptr noundef %__data, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %mapping to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_update_ptes(ptr noundef %__data, ptr noundef %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %p to i32
  %conv = zext i32 %0 to i64
  %conv10 = zext i32 %nptes to i64
  %conv23 = zext i32 %pid to i64
  tail call void @bpf_trace_run9(ptr noundef %__data, i64 noundef %conv, i64 noundef %start, i64 noundef %end, i64 noundef %conv10, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i64 noundef %conv23, i64 noundef %vm_ctx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_set_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %count to i64
  %conv10 = zext i32 %incr to i64
  %conv18 = zext i1 %immediate to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %pe, i64 noundef %addr, i64 noundef %conv, i64 noundef %conv10, i64 noundef %flags, i64 noundef %conv18) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_copy_ptes(ptr noundef %__data, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %count to i64
  %conv11 = zext i1 %immediate to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %pe, i64 noundef %src, i64 noundef %conv, i64 noundef %conv11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_vm_flush(ptr noundef %__data, ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ring to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %vmid to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %pd_addr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_pasid(ptr noundef %__data, i32 noundef %pasid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %pasid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_bo_list_set(ptr noundef %__data, ptr noundef %list, ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %list to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %bo to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_cs_bo_status(ptr noundef %__data, i64 noundef %total_bo, i64 noundef %total_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %total_bo, i64 noundef %total_size) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_bo_move(ptr noundef %__data, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bo to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %new_placement to i64
  %conv8 = zext i32 %old_placement to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_amdgpu_ib_pipe_sync(ptr noundef %__data, ptr noundef %sched_job, ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sched_job to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %fence to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_device_rreg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %did = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %did, align 4
  %reg = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %value = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_rreg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
define internal i32 @trace_raw_output_amdgpu_device_wreg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %did = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %did, align 4
  %reg = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %value = getelementptr inbounds %struct.trace_event_raw_amdgpu_device_wreg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_iv(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ih = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ih, align 8
  %client_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client_id, align 4
  %src_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_id, align 8
  %ring_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_id, align 4
  %vmid = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vmid, align 8
  %timestamp = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %timestamp, align 8
  %pasid = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pasid, align 4
  %src_data = getelementptr inbounds %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_data, align 8
  %arrayidx2 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.trace_event_raw_amdgpu_iv, ptr %1, i32 0, i32 10, i32 3
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_bo_create(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %pages = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages, align 4
  %type = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %prefer = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %prefer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prefer, align 4
  %allow = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %allow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %allow, align 4
  %visible = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_create, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %visible to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visible, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_count_emitted(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_cs(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo_list = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_list, align 4
  %ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 4
  %dw = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dw, align 4
  %fences = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fences, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_cs_ioctl(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sched_job_id, align 8
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_timeline, align 8
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %context = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %context, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_ring, align 8
  %and1 = and i32 %11, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %num_ibs = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_ioctl, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ibs, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.44, i64 noundef %3, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9, ptr noundef %add.ptr2, i32 noundef %13) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_sched_run_job(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sched_job_id = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sched_job_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sched_job_id, align 8
  %__data_loc_timeline = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_timeline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_timeline, align 8
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %context = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %context, align 4
  %seqno = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_ring, align 4
  %and1 = and i32 %11, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %num_ibs = getelementptr inbounds %struct.trace_event_raw_amdgpu_sched_run_job, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ibs, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.44, i64 noundef %3, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9, ptr noundef %add.ptr2, i32 noundef %13) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_grab_id(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pasid = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pasid, align 8
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_ring, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %vmid = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmid, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %vm_hub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_hub, align 8
  %pd_addr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pd_addr, align 8
  %needs_flush = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_grab_id, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %needs_flush to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %needs_flush, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.49, i32 noundef %3, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9, i64 noundef %11, i32 noundef %13) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_bo_map(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 8
  %start = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %last = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  %flags1 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_map, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags1, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.55, ptr noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %9, i64 noundef %11) #8
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_bo_unmap(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 8
  %start = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %last = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  %flags1 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_bo_unmap, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags1, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.55, ptr noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %9, i64 noundef %11) #8
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_mapping(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %soffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %soffset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %soffset, align 8
  %eoffset = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %eoffset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %eoffset, align 8
  %flags1 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_mapping, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags1, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.58, i64 noundef %3, i64 noundef %5, i64 noundef %7) #8
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vm_map_gart(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_update_ptes(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 8
  %vm_ctx = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %vm_ctx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vm_ctx, align 8
  %start = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %end = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end, align 8
  %flags1 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags1, align 8
  %incr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %incr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %incr, align 8
  %__data_loc_dst = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %__data_loc_dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__data_loc_dst, align 8
  %and = and i32 %15, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %nptes = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_update_ptes, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %nptes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nptes, align 8
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 32)
  %call4 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %18, i32 noundef 8) #8
  %19 = ptrtoint ptr %nptes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nptes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp6 = icmp ugt i32 %20, 32
  %cond7 = select i1 %cmp6, ptr @.str.68, ptr @.str.69
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.67, i32 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, ptr noundef %call4, ptr noundef nonnull %cond7) #8
  %call8 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_set_ptes(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pe = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pe, align 8
  %addr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %incr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %incr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incr, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags1, align 8
  %count = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  %immediate = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_set_ptes, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %immediate, align 8, !range !373
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.75, i64 noundef %3, i64 noundef %5, i32 noundef %7, i64 noundef %9, i32 noundef %11, i32 noundef %14) #8
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_copy_ptes(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pe = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pe, align 8
  %src = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %src, align 8
  %count = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  %immediate = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_copy_ptes, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %immediate, align 4, !range !373
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.77, i64 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %10) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_vm_flush(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_ring, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %vmid = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmid, align 4
  %vm_hub = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vm_hub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_hub, align 8
  %pd_addr = getelementptr inbounds %struct.trace_event_raw_amdgpu_vm_flush, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pd_addr, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.78, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i64 noundef %9) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_pasid(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pasid = getelementptr inbounds %struct.trace_event_raw_amdgpu_pasid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pasid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.79, i32 noundef %3) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_bo_list_set(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %list = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 8
  %bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_list_set, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bo_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bo_size, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.82, ptr noundef %3, ptr noundef %5, i64 noundef %7) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_cs_bo_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %total_bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %total_bo to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_bo, align 8
  %total_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_cs_bo_status, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total_size, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.85, i64 noundef %3, i64 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_bo_move(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bo = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 8
  %old_placement = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %old_placement to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old_placement, align 4
  %new_placement = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %new_placement to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_placement, align 8
  %bo_size = getelementptr inbounds %struct.trace_event_raw_amdgpu_bo_move, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bo_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bo_size, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.88, ptr noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %9) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_amdgpu_ib_pipe_sync(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_ring, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %id = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %fence = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 8
  %ctx = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ctx, align 8
  %seqno = getelementptr inbounds %struct.trace_event_raw_amdgpu_ib_pipe_sync, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seqno, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.91, ptr noundef %add.ptr, i64 noundef %5, ptr noundef %7, i64 noundef %9, i32 noundef %11) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run9(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!llvm.named.register.sp = !{!360}
!llvm.module.flags = !{!361, !362, !363, !364, !365, !366, !367, !368}
!llvm.ident = !{!369}

!0 = !{ptr @__tracepoint_amdgpu_device_rreg, !1, !"__tracepoint_amdgpu_device_rreg", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 38, i32 1}
!2 = !{ptr @__tracepoint_ptr_amdgpu_device_rreg, !1, !"__tracepoint_ptr_amdgpu_device_rreg", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_amdgpu_device_rreg, !1, !"__SCK__tp_func_amdgpu_device_rreg", i1 false, i1 false}
!4 = !{ptr @__tracepoint_amdgpu_device_wreg, !5, !"__tracepoint_amdgpu_device_wreg", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 57, i32 1}
!6 = !{ptr @__tracepoint_ptr_amdgpu_device_wreg, !5, !"__tracepoint_ptr_amdgpu_device_wreg", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_amdgpu_device_wreg, !5, !"__SCK__tp_func_amdgpu_device_wreg", i1 false, i1 false}
!8 = !{ptr @__tracepoint_amdgpu_iv, !9, !"__tracepoint_amdgpu_iv", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 76, i32 1}
!10 = !{ptr @__tracepoint_ptr_amdgpu_iv, !9, !"__tracepoint_ptr_amdgpu_iv", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_amdgpu_iv, !9, !"__SCK__tp_func_amdgpu_iv", i1 false, i1 false}
!12 = !{ptr @__tracepoint_amdgpu_bo_create, !13, !"__tracepoint_amdgpu_bo_create", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 116, i32 1}
!14 = !{ptr @__tracepoint_ptr_amdgpu_bo_create, !13, !"__tracepoint_ptr_amdgpu_bo_create", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_amdgpu_bo_create, !13, !"__SCK__tp_func_amdgpu_bo_create", i1 false, i1 false}
!16 = !{ptr @__tracepoint_amdgpu_cs, !17, !"__tracepoint_amdgpu_cs", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 142, i32 1}
!18 = !{ptr @__tracepoint_ptr_amdgpu_cs, !17, !"__tracepoint_ptr_amdgpu_cs", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_amdgpu_cs, !17, !"__SCK__tp_func_amdgpu_cs", i1 false, i1 false}
!20 = !{ptr @__tracepoint_amdgpu_cs_ioctl, !21, !"__tracepoint_amdgpu_cs_ioctl", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 164, i32 1}
!22 = !{ptr @__tracepoint_ptr_amdgpu_cs_ioctl, !21, !"__tracepoint_ptr_amdgpu_cs_ioctl", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_amdgpu_cs_ioctl, !21, !"__SCK__tp_func_amdgpu_cs_ioctl", i1 false, i1 false}
!24 = !{ptr @__tracepoint_amdgpu_sched_run_job, !25, !"__tracepoint_amdgpu_sched_run_job", i1 false, i1 false}
!25 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 190, i32 1}
!26 = !{ptr @__tracepoint_ptr_amdgpu_sched_run_job, !25, !"__tracepoint_ptr_amdgpu_sched_run_job", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_amdgpu_sched_run_job, !25, !"__SCK__tp_func_amdgpu_sched_run_job", i1 false, i1 false}
!28 = !{ptr @__tracepoint_amdgpu_vm_grab_id, !29, !"__tracepoint_amdgpu_vm_grab_id", i1 false, i1 false}
!29 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 216, i32 1}
!30 = !{ptr @__tracepoint_ptr_amdgpu_vm_grab_id, !29, !"__tracepoint_ptr_amdgpu_vm_grab_id", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_amdgpu_vm_grab_id, !29, !"__SCK__tp_func_amdgpu_vm_grab_id", i1 false, i1 false}
!32 = !{ptr @__tracepoint_amdgpu_vm_bo_map, !33, !"__tracepoint_amdgpu_vm_bo_map", i1 false, i1 false}
!33 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 243, i32 1}
!34 = !{ptr @__tracepoint_ptr_amdgpu_vm_bo_map, !33, !"__tracepoint_ptr_amdgpu_vm_bo_map", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_amdgpu_vm_bo_map, !33, !"__SCK__tp_func_amdgpu_vm_bo_map", i1 false, i1 false}
!36 = !{ptr @__tracepoint_amdgpu_vm_bo_unmap, !37, !"__tracepoint_amdgpu_vm_bo_unmap", i1 false, i1 false}
!37 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 267, i32 1}
!38 = !{ptr @__tracepoint_ptr_amdgpu_vm_bo_unmap, !37, !"__tracepoint_ptr_amdgpu_vm_bo_unmap", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_amdgpu_vm_bo_unmap, !37, !"__SCK__tp_func_amdgpu_vm_bo_unmap", i1 false, i1 false}
!40 = !{ptr @__tracepoint_amdgpu_vm_bo_update, !41, !"__tracepoint_amdgpu_vm_bo_update", i1 false, i1 false}
!41 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 309, i32 1}
!42 = !{ptr @__tracepoint_ptr_amdgpu_vm_bo_update, !41, !"__tracepoint_ptr_amdgpu_vm_bo_update", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_amdgpu_vm_bo_update, !41, !"__SCK__tp_func_amdgpu_vm_bo_update", i1 false, i1 false}
!44 = !{ptr @__tracepoint_amdgpu_vm_bo_mapping, !45, !"__tracepoint_amdgpu_vm_bo_mapping", i1 false, i1 false}
!45 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 314, i32 1}
!46 = !{ptr @__tracepoint_ptr_amdgpu_vm_bo_mapping, !45, !"__tracepoint_ptr_amdgpu_vm_bo_mapping", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_amdgpu_vm_bo_mapping, !45, !"__SCK__tp_func_amdgpu_vm_bo_mapping", i1 false, i1 false}
!48 = !{ptr @__tracepoint_amdgpu_vm_bo_cs, !49, !"__tracepoint_amdgpu_vm_bo_cs", i1 false, i1 false}
!49 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 319, i32 1}
!50 = !{ptr @__tracepoint_ptr_amdgpu_vm_bo_cs, !49, !"__tracepoint_ptr_amdgpu_vm_bo_cs", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_amdgpu_vm_bo_cs, !49, !"__SCK__tp_func_amdgpu_vm_bo_cs", i1 false, i1 false}
!52 = !{ptr @__tracepoint_amdgpu_vm_update_ptes, !53, !"__tracepoint_amdgpu_vm_update_ptes", i1 false, i1 false}
!53 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 324, i32 1}
!54 = !{ptr @__tracepoint_ptr_amdgpu_vm_update_ptes, !53, !"__tracepoint_ptr_amdgpu_vm_update_ptes", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_amdgpu_vm_update_ptes, !53, !"__SCK__tp_func_amdgpu_vm_update_ptes", i1 false, i1 false}
!56 = !{ptr @__tracepoint_amdgpu_vm_set_ptes, !57, !"__tracepoint_amdgpu_vm_set_ptes", i1 false, i1 false}
!57 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 368, i32 1}
!58 = !{ptr @__tracepoint_ptr_amdgpu_vm_set_ptes, !57, !"__tracepoint_ptr_amdgpu_vm_set_ptes", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_amdgpu_vm_set_ptes, !57, !"__SCK__tp_func_amdgpu_vm_set_ptes", i1 false, i1 false}
!60 = !{ptr @__tracepoint_amdgpu_vm_copy_ptes, !61, !"__tracepoint_amdgpu_vm_copy_ptes", i1 false, i1 false}
!61 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 394, i32 1}
!62 = !{ptr @__tracepoint_ptr_amdgpu_vm_copy_ptes, !61, !"__tracepoint_ptr_amdgpu_vm_copy_ptes", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_amdgpu_vm_copy_ptes, !61, !"__SCK__tp_func_amdgpu_vm_copy_ptes", i1 false, i1 false}
!64 = !{ptr @__tracepoint_amdgpu_vm_flush, !65, !"__tracepoint_amdgpu_vm_flush", i1 false, i1 false}
!65 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 415, i32 1}
!66 = !{ptr @__tracepoint_ptr_amdgpu_vm_flush, !65, !"__tracepoint_ptr_amdgpu_vm_flush", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_amdgpu_vm_flush, !65, !"__SCK__tp_func_amdgpu_vm_flush", i1 false, i1 false}
!68 = !{ptr @__tracepoint_amdgpu_pasid_allocated, !69, !"__tracepoint_amdgpu_pasid_allocated", i1 false, i1 false}
!69 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 449, i32 1}
!70 = !{ptr @__tracepoint_ptr_amdgpu_pasid_allocated, !69, !"__tracepoint_ptr_amdgpu_pasid_allocated", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_amdgpu_pasid_allocated, !69, !"__SCK__tp_func_amdgpu_pasid_allocated", i1 false, i1 false}
!72 = !{ptr @__tracepoint_amdgpu_pasid_freed, !73, !"__tracepoint_amdgpu_pasid_freed", i1 false, i1 false}
!73 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 454, i32 1}
!74 = !{ptr @__tracepoint_ptr_amdgpu_pasid_freed, !73, !"__tracepoint_ptr_amdgpu_pasid_freed", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_amdgpu_pasid_freed, !73, !"__SCK__tp_func_amdgpu_pasid_freed", i1 false, i1 false}
!76 = !{ptr @__tracepoint_amdgpu_bo_list_set, !77, !"__tracepoint_amdgpu_bo_list_set", i1 false, i1 false}
!77 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 459, i32 1}
!78 = !{ptr @__tracepoint_ptr_amdgpu_bo_list_set, !77, !"__tracepoint_ptr_amdgpu_bo_list_set", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_amdgpu_bo_list_set, !77, !"__SCK__tp_func_amdgpu_bo_list_set", i1 false, i1 false}
!80 = !{ptr @__tracepoint_amdgpu_cs_bo_status, !81, !"__tracepoint_amdgpu_cs_bo_status", i1 false, i1 false}
!81 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 479, i32 1}
!82 = !{ptr @__tracepoint_ptr_amdgpu_cs_bo_status, !81, !"__tracepoint_ptr_amdgpu_cs_bo_status", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_amdgpu_cs_bo_status, !81, !"__SCK__tp_func_amdgpu_cs_bo_status", i1 false, i1 false}
!84 = !{ptr @__tracepoint_amdgpu_bo_move, !85, !"__tracepoint_amdgpu_bo_move", i1 false, i1 false}
!85 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 495, i32 1}
!86 = !{ptr @__tracepoint_ptr_amdgpu_bo_move, !85, !"__tracepoint_ptr_amdgpu_bo_move", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_amdgpu_bo_move, !85, !"__SCK__tp_func_amdgpu_bo_move", i1 false, i1 false}
!88 = !{ptr @__tracepoint_amdgpu_ib_pipe_sync, !89, !"__tracepoint_amdgpu_ib_pipe_sync", i1 false, i1 false}
!89 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 516, i32 1}
!90 = !{ptr @__tracepoint_ptr_amdgpu_ib_pipe_sync, !89, !"__tracepoint_ptr_amdgpu_ib_pipe_sync", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_amdgpu_ib_pipe_sync, !89, !"__SCK__tp_func_amdgpu_ib_pipe_sync", i1 false, i1 false}
!92 = !{ptr @event_class_amdgpu_device_rreg, !1, !"event_class_amdgpu_device_rreg", i1 false, i1 false}
!93 = !{ptr @event_amdgpu_device_rreg, !1, !"event_amdgpu_device_rreg", i1 false, i1 false}
!94 = !{ptr @__event_amdgpu_device_rreg, !1, !"__event_amdgpu_device_rreg", i1 false, i1 false}
!95 = !{ptr @event_class_amdgpu_device_wreg, !5, !"event_class_amdgpu_device_wreg", i1 false, i1 false}
!96 = !{ptr @event_amdgpu_device_wreg, !5, !"event_amdgpu_device_wreg", i1 false, i1 false}
!97 = !{ptr @__event_amdgpu_device_wreg, !5, !"__event_amdgpu_device_wreg", i1 false, i1 false}
!98 = !{ptr @event_class_amdgpu_iv, !9, !"event_class_amdgpu_iv", i1 false, i1 false}
!99 = !{ptr @event_amdgpu_iv, !9, !"event_amdgpu_iv", i1 false, i1 false}
!100 = !{ptr @__event_amdgpu_iv, !9, !"__event_amdgpu_iv", i1 false, i1 false}
!101 = !{ptr @event_class_amdgpu_bo_create, !13, !"event_class_amdgpu_bo_create", i1 false, i1 false}
!102 = !{ptr @event_amdgpu_bo_create, !13, !"event_amdgpu_bo_create", i1 false, i1 false}
!103 = !{ptr @__event_amdgpu_bo_create, !13, !"__event_amdgpu_bo_create", i1 false, i1 false}
!104 = !{ptr @event_class_amdgpu_cs, !17, !"event_class_amdgpu_cs", i1 false, i1 false}
!105 = !{ptr @event_amdgpu_cs, !17, !"event_amdgpu_cs", i1 false, i1 false}
!106 = !{ptr @__event_amdgpu_cs, !17, !"__event_amdgpu_cs", i1 false, i1 false}
!107 = !{ptr @event_class_amdgpu_cs_ioctl, !21, !"event_class_amdgpu_cs_ioctl", i1 false, i1 false}
!108 = !{ptr @event_amdgpu_cs_ioctl, !21, !"event_amdgpu_cs_ioctl", i1 false, i1 false}
!109 = !{ptr @__event_amdgpu_cs_ioctl, !21, !"__event_amdgpu_cs_ioctl", i1 false, i1 false}
!110 = !{ptr @event_class_amdgpu_sched_run_job, !25, !"event_class_amdgpu_sched_run_job", i1 false, i1 false}
!111 = !{ptr @event_amdgpu_sched_run_job, !25, !"event_amdgpu_sched_run_job", i1 false, i1 false}
!112 = !{ptr @__event_amdgpu_sched_run_job, !25, !"__event_amdgpu_sched_run_job", i1 false, i1 false}
!113 = !{ptr @event_class_amdgpu_vm_grab_id, !29, !"event_class_amdgpu_vm_grab_id", i1 false, i1 false}
!114 = !{ptr @event_amdgpu_vm_grab_id, !29, !"event_amdgpu_vm_grab_id", i1 false, i1 false}
!115 = !{ptr @__event_amdgpu_vm_grab_id, !29, !"__event_amdgpu_vm_grab_id", i1 false, i1 false}
!116 = !{ptr @event_class_amdgpu_vm_bo_map, !33, !"event_class_amdgpu_vm_bo_map", i1 false, i1 false}
!117 = !{ptr @event_amdgpu_vm_bo_map, !33, !"event_amdgpu_vm_bo_map", i1 false, i1 false}
!118 = !{ptr @__event_amdgpu_vm_bo_map, !33, !"__event_amdgpu_vm_bo_map", i1 false, i1 false}
!119 = !{ptr @event_class_amdgpu_vm_bo_unmap, !37, !"event_class_amdgpu_vm_bo_unmap", i1 false, i1 false}
!120 = !{ptr @event_amdgpu_vm_bo_unmap, !37, !"event_amdgpu_vm_bo_unmap", i1 false, i1 false}
!121 = !{ptr @__event_amdgpu_vm_bo_unmap, !37, !"__event_amdgpu_vm_bo_unmap", i1 false, i1 false}
!122 = !{ptr @event_class_amdgpu_vm_mapping, !123, !"event_class_amdgpu_vm_mapping", i1 false, i1 false}
!123 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 291, i32 1}
!124 = !{ptr @event_amdgpu_vm_bo_update, !41, !"event_amdgpu_vm_bo_update", i1 false, i1 false}
!125 = !{ptr @__event_amdgpu_vm_bo_update, !41, !"__event_amdgpu_vm_bo_update", i1 false, i1 false}
!126 = !{ptr @event_amdgpu_vm_bo_mapping, !45, !"event_amdgpu_vm_bo_mapping", i1 false, i1 false}
!127 = !{ptr @__event_amdgpu_vm_bo_mapping, !45, !"__event_amdgpu_vm_bo_mapping", i1 false, i1 false}
!128 = !{ptr @event_amdgpu_vm_bo_cs, !49, !"event_amdgpu_vm_bo_cs", i1 false, i1 false}
!129 = !{ptr @__event_amdgpu_vm_bo_cs, !49, !"__event_amdgpu_vm_bo_cs", i1 false, i1 false}
!130 = !{ptr @event_class_amdgpu_vm_update_ptes, !53, !"event_class_amdgpu_vm_update_ptes", i1 false, i1 false}
!131 = !{ptr @event_amdgpu_vm_update_ptes, !53, !"event_amdgpu_vm_update_ptes", i1 false, i1 false}
!132 = !{ptr @__event_amdgpu_vm_update_ptes, !53, !"__event_amdgpu_vm_update_ptes", i1 false, i1 false}
!133 = !{ptr @event_class_amdgpu_vm_set_ptes, !57, !"event_class_amdgpu_vm_set_ptes", i1 false, i1 false}
!134 = !{ptr @event_amdgpu_vm_set_ptes, !57, !"event_amdgpu_vm_set_ptes", i1 false, i1 false}
!135 = !{ptr @__event_amdgpu_vm_set_ptes, !57, !"__event_amdgpu_vm_set_ptes", i1 false, i1 false}
!136 = !{ptr @event_class_amdgpu_vm_copy_ptes, !61, !"event_class_amdgpu_vm_copy_ptes", i1 false, i1 false}
!137 = !{ptr @event_amdgpu_vm_copy_ptes, !61, !"event_amdgpu_vm_copy_ptes", i1 false, i1 false}
!138 = !{ptr @__event_amdgpu_vm_copy_ptes, !61, !"__event_amdgpu_vm_copy_ptes", i1 false, i1 false}
!139 = !{ptr @event_class_amdgpu_vm_flush, !65, !"event_class_amdgpu_vm_flush", i1 false, i1 false}
!140 = !{ptr @event_amdgpu_vm_flush, !65, !"event_amdgpu_vm_flush", i1 false, i1 false}
!141 = !{ptr @__event_amdgpu_vm_flush, !65, !"__event_amdgpu_vm_flush", i1 false, i1 false}
!142 = !{ptr @event_class_amdgpu_pasid, !143, !"event_class_amdgpu_pasid", i1 false, i1 false}
!143 = !{!"../include/trace/../../drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h", i32 437, i32 1}
!144 = !{ptr @event_amdgpu_pasid_allocated, !69, !"event_amdgpu_pasid_allocated", i1 false, i1 false}
!145 = !{ptr @__event_amdgpu_pasid_allocated, !69, !"__event_amdgpu_pasid_allocated", i1 false, i1 false}
!146 = !{ptr @event_amdgpu_pasid_freed, !73, !"event_amdgpu_pasid_freed", i1 false, i1 false}
!147 = !{ptr @__event_amdgpu_pasid_freed, !73, !"__event_amdgpu_pasid_freed", i1 false, i1 false}
!148 = !{ptr @event_class_amdgpu_bo_list_set, !77, !"event_class_amdgpu_bo_list_set", i1 false, i1 false}
!149 = !{ptr @event_amdgpu_bo_list_set, !77, !"event_amdgpu_bo_list_set", i1 false, i1 false}
!150 = !{ptr @__event_amdgpu_bo_list_set, !77, !"__event_amdgpu_bo_list_set", i1 false, i1 false}
!151 = !{ptr @event_class_amdgpu_cs_bo_status, !81, !"event_class_amdgpu_cs_bo_status", i1 false, i1 false}
!152 = !{ptr @event_amdgpu_cs_bo_status, !81, !"event_amdgpu_cs_bo_status", i1 false, i1 false}
!153 = !{ptr @__event_amdgpu_cs_bo_status, !81, !"__event_amdgpu_cs_bo_status", i1 false, i1 false}
!154 = !{ptr @event_class_amdgpu_bo_move, !85, !"event_class_amdgpu_bo_move", i1 false, i1 false}
!155 = !{ptr @event_amdgpu_bo_move, !85, !"event_amdgpu_bo_move", i1 false, i1 false}
!156 = !{ptr @__event_amdgpu_bo_move, !85, !"__event_amdgpu_bo_move", i1 false, i1 false}
!157 = !{ptr @event_class_amdgpu_ib_pipe_sync, !89, !"event_class_amdgpu_ib_pipe_sync", i1 false, i1 false}
!158 = !{ptr @event_amdgpu_ib_pipe_sync, !89, !"event_amdgpu_ib_pipe_sync", i1 false, i1 false}
!159 = !{ptr @__event_amdgpu_ib_pipe_sync, !89, !"__event_amdgpu_ib_pipe_sync", i1 false, i1 false}
!160 = !{ptr @__bpf_trace_tp_map_amdgpu_device_rreg, !1, !"__bpf_trace_tp_map_amdgpu_device_rreg", i1 false, i1 false}
!161 = !{ptr @__bpf_trace_tp_map_amdgpu_device_wreg, !5, !"__bpf_trace_tp_map_amdgpu_device_wreg", i1 false, i1 false}
!162 = !{ptr @__bpf_trace_tp_map_amdgpu_iv, !9, !"__bpf_trace_tp_map_amdgpu_iv", i1 false, i1 false}
!163 = !{ptr @__bpf_trace_tp_map_amdgpu_bo_create, !13, !"__bpf_trace_tp_map_amdgpu_bo_create", i1 false, i1 false}
!164 = !{ptr @__bpf_trace_tp_map_amdgpu_cs, !17, !"__bpf_trace_tp_map_amdgpu_cs", i1 false, i1 false}
!165 = !{ptr @__bpf_trace_tp_map_amdgpu_cs_ioctl, !21, !"__bpf_trace_tp_map_amdgpu_cs_ioctl", i1 false, i1 false}
!166 = !{ptr @__bpf_trace_tp_map_amdgpu_sched_run_job, !25, !"__bpf_trace_tp_map_amdgpu_sched_run_job", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_grab_id, !29, !"__bpf_trace_tp_map_amdgpu_vm_grab_id", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_bo_map, !33, !"__bpf_trace_tp_map_amdgpu_vm_bo_map", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_bo_unmap, !37, !"__bpf_trace_tp_map_amdgpu_vm_bo_unmap", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_bo_update, !41, !"__bpf_trace_tp_map_amdgpu_vm_bo_update", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_bo_mapping, !45, !"__bpf_trace_tp_map_amdgpu_vm_bo_mapping", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_bo_cs, !49, !"__bpf_trace_tp_map_amdgpu_vm_bo_cs", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_update_ptes, !53, !"__bpf_trace_tp_map_amdgpu_vm_update_ptes", i1 false, i1 false}
!174 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_set_ptes, !57, !"__bpf_trace_tp_map_amdgpu_vm_set_ptes", i1 false, i1 false}
!175 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_copy_ptes, !61, !"__bpf_trace_tp_map_amdgpu_vm_copy_ptes", i1 false, i1 false}
!176 = !{ptr @__bpf_trace_tp_map_amdgpu_vm_flush, !65, !"__bpf_trace_tp_map_amdgpu_vm_flush", i1 false, i1 false}
!177 = !{ptr @__bpf_trace_tp_map_amdgpu_pasid_allocated, !69, !"__bpf_trace_tp_map_amdgpu_pasid_allocated", i1 false, i1 false}
!178 = !{ptr @__bpf_trace_tp_map_amdgpu_pasid_freed, !73, !"__bpf_trace_tp_map_amdgpu_pasid_freed", i1 false, i1 false}
!179 = !{ptr @__bpf_trace_tp_map_amdgpu_bo_list_set, !77, !"__bpf_trace_tp_map_amdgpu_bo_list_set", i1 false, i1 false}
!180 = !{ptr @__bpf_trace_tp_map_amdgpu_cs_bo_status, !81, !"__bpf_trace_tp_map_amdgpu_cs_bo_status", i1 false, i1 false}
!181 = !{ptr @__bpf_trace_tp_map_amdgpu_bo_move, !85, !"__bpf_trace_tp_map_amdgpu_bo_move", i1 false, i1 false}
!182 = !{ptr @__bpf_trace_tp_map_amdgpu_ib_pipe_sync, !89, !"__bpf_trace_tp_map_amdgpu_ib_pipe_sync", i1 false, i1 false}
!183 = !{ptr @__tpstrtab_amdgpu_device_rreg, !1, !"__tpstrtab_amdgpu_device_rreg", i1 false, i1 false}
!184 = !{ptr @__tpstrtab_amdgpu_device_wreg, !5, !"__tpstrtab_amdgpu_device_wreg", i1 false, i1 false}
!185 = !{ptr @__tpstrtab_amdgpu_iv, !9, !"__tpstrtab_amdgpu_iv", i1 false, i1 false}
!186 = !{ptr @__tpstrtab_amdgpu_bo_create, !13, !"__tpstrtab_amdgpu_bo_create", i1 false, i1 false}
!187 = !{ptr @__tpstrtab_amdgpu_cs, !17, !"__tpstrtab_amdgpu_cs", i1 false, i1 false}
!188 = !{ptr @__tpstrtab_amdgpu_cs_ioctl, !21, !"__tpstrtab_amdgpu_cs_ioctl", i1 false, i1 false}
!189 = !{ptr @__tpstrtab_amdgpu_sched_run_job, !25, !"__tpstrtab_amdgpu_sched_run_job", i1 false, i1 false}
!190 = !{ptr @__tpstrtab_amdgpu_vm_grab_id, !29, !"__tpstrtab_amdgpu_vm_grab_id", i1 false, i1 false}
!191 = !{ptr @__tpstrtab_amdgpu_vm_bo_map, !33, !"__tpstrtab_amdgpu_vm_bo_map", i1 false, i1 false}
!192 = !{ptr @__tpstrtab_amdgpu_vm_bo_unmap, !37, !"__tpstrtab_amdgpu_vm_bo_unmap", i1 false, i1 false}
!193 = !{ptr @__tpstrtab_amdgpu_vm_bo_update, !41, !"__tpstrtab_amdgpu_vm_bo_update", i1 false, i1 false}
!194 = !{ptr @__tpstrtab_amdgpu_vm_bo_mapping, !45, !"__tpstrtab_amdgpu_vm_bo_mapping", i1 false, i1 false}
!195 = !{ptr @__tpstrtab_amdgpu_vm_bo_cs, !49, !"__tpstrtab_amdgpu_vm_bo_cs", i1 false, i1 false}
!196 = !{ptr @__tpstrtab_amdgpu_vm_update_ptes, !53, !"__tpstrtab_amdgpu_vm_update_ptes", i1 false, i1 false}
!197 = !{ptr @__tpstrtab_amdgpu_vm_set_ptes, !57, !"__tpstrtab_amdgpu_vm_set_ptes", i1 false, i1 false}
!198 = !{ptr @__tpstrtab_amdgpu_vm_copy_ptes, !61, !"__tpstrtab_amdgpu_vm_copy_ptes", i1 false, i1 false}
!199 = !{ptr @__tpstrtab_amdgpu_vm_flush, !65, !"__tpstrtab_amdgpu_vm_flush", i1 false, i1 false}
!200 = !{ptr @__tpstrtab_amdgpu_pasid_allocated, !69, !"__tpstrtab_amdgpu_pasid_allocated", i1 false, i1 false}
!201 = !{ptr @__tpstrtab_amdgpu_pasid_freed, !73, !"__tpstrtab_amdgpu_pasid_freed", i1 false, i1 false}
!202 = !{ptr @__tpstrtab_amdgpu_bo_list_set, !77, !"__tpstrtab_amdgpu_bo_list_set", i1 false, i1 false}
!203 = !{ptr @__tpstrtab_amdgpu_cs_bo_status, !81, !"__tpstrtab_amdgpu_cs_bo_status", i1 false, i1 false}
!204 = !{ptr @__tpstrtab_amdgpu_bo_move, !85, !"__tpstrtab_amdgpu_bo_move", i1 false, i1 false}
!205 = !{ptr @__tpstrtab_amdgpu_ib_pipe_sync, !89, !"__tpstrtab_amdgpu_ib_pipe_sync", i1 false, i1 false}
!206 = !{ptr @str__amdgpu__trace_system_name, !207, !"str__amdgpu__trace_system_name", i1 false, i1 false}
!207 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!208 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @trace_event_fields_amdgpu_device_rreg, !1, !"trace_event_fields_amdgpu_device_rreg", i1 false, i1 false}
!214 = !{ptr @trace_event_type_funcs_amdgpu_device_rreg, !1, !"trace_event_type_funcs_amdgpu_device_rreg", i1 false, i1 false}
!215 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @print_fmt_amdgpu_device_rreg, !1, !"print_fmt_amdgpu_device_rreg", i1 false, i1 false}
!217 = !{ptr @trace_event_fields_amdgpu_device_wreg, !5, !"trace_event_fields_amdgpu_device_wreg", i1 false, i1 false}
!218 = !{ptr @trace_event_type_funcs_amdgpu_device_wreg, !5, !"trace_event_type_funcs_amdgpu_device_wreg", i1 false, i1 false}
!219 = !{ptr @print_fmt_amdgpu_device_wreg, !5, !"print_fmt_amdgpu_device_wreg", i1 false, i1 false}
!220 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @trace_event_fields_amdgpu_iv, !9, !"trace_event_fields_amdgpu_iv", i1 false, i1 false}
!233 = !{ptr @trace_event_type_funcs_amdgpu_iv, !9, !"trace_event_type_funcs_amdgpu_iv", i1 false, i1 false}
!234 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @print_fmt_amdgpu_iv, !9, !"print_fmt_amdgpu_iv", i1 false, i1 false}
!236 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.23, !13, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.24, !13, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.25, !13, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.26, !13, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @trace_event_fields_amdgpu_bo_create, !13, !"trace_event_fields_amdgpu_bo_create", i1 false, i1 false}
!245 = !{ptr @trace_event_type_funcs_amdgpu_bo_create, !13, !"trace_event_type_funcs_amdgpu_bo_create", i1 false, i1 false}
!246 = !{ptr @.str.27, !13, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @print_fmt_amdgpu_bo_create, !13, !"print_fmt_amdgpu_bo_create", i1 false, i1 false}
!248 = !{ptr @.str.28, !17, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.29, !17, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.30, !17, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.31, !17, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.32, !17, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @trace_event_fields_amdgpu_cs, !17, !"trace_event_fields_amdgpu_cs", i1 false, i1 false}
!254 = !{ptr @trace_event_type_funcs_amdgpu_cs, !17, !"trace_event_type_funcs_amdgpu_cs", i1 false, i1 false}
!255 = !{ptr @.str.33, !17, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @print_fmt_amdgpu_cs, !17, !"print_fmt_amdgpu_cs", i1 false, i1 false}
!257 = !{ptr @.str.34, !21, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.35, !21, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.36, !21, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.37, !21, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.38, !21, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.39, !21, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.40, !21, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.42, !21, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @trace_event_fields_amdgpu_cs_ioctl, !21, !"trace_event_fields_amdgpu_cs_ioctl", i1 false, i1 false}
!268 = !{ptr @trace_event_type_funcs_amdgpu_cs_ioctl, !21, !"trace_event_type_funcs_amdgpu_cs_ioctl", i1 false, i1 false}
!269 = !{ptr @.str.44, !21, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @print_fmt_amdgpu_cs_ioctl, !21, !"print_fmt_amdgpu_cs_ioctl", i1 false, i1 false}
!271 = !{ptr @trace_event_fields_amdgpu_sched_run_job, !25, !"trace_event_fields_amdgpu_sched_run_job", i1 false, i1 false}
!272 = !{ptr @trace_event_type_funcs_amdgpu_sched_run_job, !25, !"trace_event_type_funcs_amdgpu_sched_run_job", i1 false, i1 false}
!273 = !{ptr @print_fmt_amdgpu_sched_run_job, !25, !"print_fmt_amdgpu_sched_run_job", i1 false, i1 false}
!274 = !{ptr @.str.45, !29, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.46, !29, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.47, !29, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.48, !29, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @trace_event_fields_amdgpu_vm_grab_id, !29, !"trace_event_fields_amdgpu_vm_grab_id", i1 false, i1 false}
!279 = !{ptr @trace_event_type_funcs_amdgpu_vm_grab_id, !29, !"trace_event_type_funcs_amdgpu_vm_grab_id", i1 false, i1 false}
!280 = !{ptr @.str.49, !29, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @print_fmt_amdgpu_vm_grab_id, !29, !"print_fmt_amdgpu_vm_grab_id", i1 false, i1 false}
!282 = !{ptr @.str.50, !33, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.51, !33, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.52, !33, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.53, !33, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.54, !33, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @trace_event_fields_amdgpu_vm_bo_map, !33, !"trace_event_fields_amdgpu_vm_bo_map", i1 false, i1 false}
!288 = !{ptr @trace_event_type_funcs_amdgpu_vm_bo_map, !33, !"trace_event_type_funcs_amdgpu_vm_bo_map", i1 false, i1 false}
!289 = !{ptr @.str.55, !33, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @print_fmt_amdgpu_vm_bo_map, !33, !"print_fmt_amdgpu_vm_bo_map", i1 false, i1 false}
!291 = !{ptr @trace_event_fields_amdgpu_vm_bo_unmap, !37, !"trace_event_fields_amdgpu_vm_bo_unmap", i1 false, i1 false}
!292 = !{ptr @trace_event_type_funcs_amdgpu_vm_bo_unmap, !37, !"trace_event_type_funcs_amdgpu_vm_bo_unmap", i1 false, i1 false}
!293 = !{ptr @print_fmt_amdgpu_vm_bo_unmap, !37, !"print_fmt_amdgpu_vm_bo_unmap", i1 false, i1 false}
!294 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @trace_event_fields_amdgpu_vm_mapping, !123, !"trace_event_fields_amdgpu_vm_mapping", i1 false, i1 false}
!297 = !{ptr @trace_event_type_funcs_amdgpu_vm_mapping, !123, !"trace_event_type_funcs_amdgpu_vm_mapping", i1 false, i1 false}
!298 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @print_fmt_amdgpu_vm_mapping, !123, !"print_fmt_amdgpu_vm_mapping", i1 false, i1 false}
!300 = !{ptr @.str.59, !53, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.60, !53, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.61, !53, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.62, !53, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.63, !53, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.64, !53, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.65, !53, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.66, !53, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @trace_event_fields_amdgpu_vm_update_ptes, !53, !"trace_event_fields_amdgpu_vm_update_ptes", i1 false, i1 false}
!309 = !{ptr @trace_event_type_funcs_amdgpu_vm_update_ptes, !53, !"trace_event_type_funcs_amdgpu_vm_update_ptes", i1 false, i1 false}
!310 = !{ptr @.str.67, !53, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.68, !53, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.69, !53, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @print_fmt_amdgpu_vm_update_ptes, !53, !"print_fmt_amdgpu_vm_update_ptes", i1 false, i1 false}
!314 = !{ptr @.str.70, !57, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.71, !57, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.72, !57, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.73, !57, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.74, !57, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @trace_event_fields_amdgpu_vm_set_ptes, !57, !"trace_event_fields_amdgpu_vm_set_ptes", i1 false, i1 false}
!320 = !{ptr @trace_event_type_funcs_amdgpu_vm_set_ptes, !57, !"trace_event_type_funcs_amdgpu_vm_set_ptes", i1 false, i1 false}
!321 = !{ptr @.str.75, !57, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @print_fmt_amdgpu_vm_set_ptes, !57, !"print_fmt_amdgpu_vm_set_ptes", i1 false, i1 false}
!323 = !{ptr @.str.76, !61, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @trace_event_fields_amdgpu_vm_copy_ptes, !61, !"trace_event_fields_amdgpu_vm_copy_ptes", i1 false, i1 false}
!325 = !{ptr @trace_event_type_funcs_amdgpu_vm_copy_ptes, !61, !"trace_event_type_funcs_amdgpu_vm_copy_ptes", i1 false, i1 false}
!326 = !{ptr @.str.77, !61, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @print_fmt_amdgpu_vm_copy_ptes, !61, !"print_fmt_amdgpu_vm_copy_ptes", i1 false, i1 false}
!328 = !{ptr @trace_event_fields_amdgpu_vm_flush, !65, !"trace_event_fields_amdgpu_vm_flush", i1 false, i1 false}
!329 = !{ptr @trace_event_type_funcs_amdgpu_vm_flush, !65, !"trace_event_type_funcs_amdgpu_vm_flush", i1 false, i1 false}
!330 = !{ptr @.str.78, !65, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @print_fmt_amdgpu_vm_flush, !65, !"print_fmt_amdgpu_vm_flush", i1 false, i1 false}
!332 = !{ptr @trace_event_fields_amdgpu_pasid, !143, !"trace_event_fields_amdgpu_pasid", i1 false, i1 false}
!333 = !{ptr @trace_event_type_funcs_amdgpu_pasid, !143, !"trace_event_type_funcs_amdgpu_pasid", i1 false, i1 false}
!334 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @print_fmt_amdgpu_pasid, !143, !"print_fmt_amdgpu_pasid", i1 false, i1 false}
!336 = !{ptr @.str.80, !77, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.81, !77, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @trace_event_fields_amdgpu_bo_list_set, !77, !"trace_event_fields_amdgpu_bo_list_set", i1 false, i1 false}
!339 = !{ptr @trace_event_type_funcs_amdgpu_bo_list_set, !77, !"trace_event_type_funcs_amdgpu_bo_list_set", i1 false, i1 false}
!340 = !{ptr @.str.82, !77, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @print_fmt_amdgpu_bo_list_set, !77, !"print_fmt_amdgpu_bo_list_set", i1 false, i1 false}
!342 = !{ptr @.str.83, !81, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.84, !81, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @trace_event_fields_amdgpu_cs_bo_status, !81, !"trace_event_fields_amdgpu_cs_bo_status", i1 false, i1 false}
!345 = !{ptr @trace_event_type_funcs_amdgpu_cs_bo_status, !81, !"trace_event_type_funcs_amdgpu_cs_bo_status", i1 false, i1 false}
!346 = !{ptr @.str.85, !81, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @print_fmt_amdgpu_cs_bo_status, !81, !"print_fmt_amdgpu_cs_bo_status", i1 false, i1 false}
!348 = !{ptr @.str.86, !85, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.87, !85, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @trace_event_fields_amdgpu_bo_move, !85, !"trace_event_fields_amdgpu_bo_move", i1 false, i1 false}
!351 = !{ptr @trace_event_type_funcs_amdgpu_bo_move, !85, !"trace_event_type_funcs_amdgpu_bo_move", i1 false, i1 false}
!352 = !{ptr @.str.88, !85, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @print_fmt_amdgpu_bo_move, !85, !"print_fmt_amdgpu_bo_move", i1 false, i1 false}
!354 = !{ptr @.str.89, !89, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.90, !89, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @trace_event_fields_amdgpu_ib_pipe_sync, !89, !"trace_event_fields_amdgpu_ib_pipe_sync", i1 false, i1 false}
!357 = !{ptr @trace_event_type_funcs_amdgpu_ib_pipe_sync, !89, !"trace_event_type_funcs_amdgpu_ib_pipe_sync", i1 false, i1 false}
!358 = !{ptr @.str.91, !89, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @print_fmt_amdgpu_ib_pipe_sync, !89, !"print_fmt_amdgpu_ib_pipe_sync", i1 false, i1 false}
!360 = !{!"sp"}
!361 = !{i32 1, !"wchar_size", i32 2}
!362 = !{i32 1, !"min_enum_size", i32 4}
!363 = !{i32 8, !"branch-target-enforcement", i32 0}
!364 = !{i32 8, !"sign-return-address", i32 0}
!365 = !{i32 8, !"sign-return-address-all", i32 0}
!366 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!367 = !{i32 7, !"uwtable", i32 1}
!368 = !{i32 7, !"frame-pointer", i32 2}
!369 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!370 = !{!"branch_weights", i32 2000, i32 1}
!371 = !{!"branch_weights", i32 1, i32 2000}
!372 = !{!"auto-init"}
!373 = !{i8 0, i8 2}
