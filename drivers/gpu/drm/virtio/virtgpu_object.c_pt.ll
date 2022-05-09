; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.virtio_gpu_display_one = type { %struct.virtio_gpu_rect, i32, i32 }
%struct.virtio_gpu_rect = type { i32, i32, i32, i32 }
%struct.virtio_gpu_update_cursor = type { %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_cursor_pos, i32, i32, i32, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.virtio_gpu_cursor_pos = type { i32, i32, i32, i32 }
%struct.virtio_gpu_queue = type { ptr, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.virtio_gpu_object_shmem = type { %struct.virtio_gpu_object, ptr, i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.virtio_gpu_object_vram = type { %struct.virtio_gpu_object, i32, i32, %struct.drm_mm_node }
%struct.virtio_gpu_object_params = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtio_gpu_mem_entry = type { i64, i32, i32 }

@__param_str_virglhack = internal constant [21 x i8] c"virtio_gpu.virglhack\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@virtio_gpu_virglrenderer_workaround = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_virglhack = internal constant %struct.kernel_param { ptr @__param_str_virglhack, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @virtio_gpu_virglrenderer_workaround } }, section "__param", align 4
@__UNIQUE_ID_virglhacktype321 = internal constant [34 x i8] c"virtio_gpu.parmtype=virglhack:int\00", section ".modinfo", align 1
@virtio_gpu_resource_id_get.seqno = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@virtio_gpu_shmem_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @virtio_gpu_free_object, ptr @virtio_gpu_gem_object_open, ptr @virtio_gpu_gem_object_close, ptr @drm_gem_shmem_object_print_info, ptr @virtgpu_gem_prime_export, ptr @drm_gem_shmem_object_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @drm_gem_shmem_object_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @drm_gem_shmem_object_mmap, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate ent list\0A\00", [35 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [36 x i8] c"virtio_gpu_virglrenderer_workaround\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 31, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 45, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"virtio_gpu_shmem_funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 115, i32 42 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [43 x i8] c"../drivers/gpu/drm/virtio/virtgpu_object.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 189, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_virglhacktype321, ptr @__param_virglhack, ptr @virtio_gpu_virglrenderer_workaround, ptr @virtio_gpu_resource_id_get.seqno, ptr @virtio_gpu_shmem_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_virglrenderer_workaround to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_resource_id_get.seqno to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_shmem_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_resource_id_get(ptr noundef %vgdev, ptr nocapture noundef writeonly %resid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @virtio_gpu_resource_id_get.seqno, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull @virtio_gpu_resource_id_get.seqno, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @virtio_gpu_resource_id_get.seqno, ptr nonnull @virtio_gpu_resource_id_get.seqno, i32 1, ptr nonnull elementtype(i32) @virtio_gpu_resource_id_get.seqno) #8, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %resource_ida = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 9
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %resource_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.else.return_crit_edge, label %if.else.return.sink.split_crit_edge

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return.sink.split:                                ; preds = %if.else.return.sink.split_crit_edge, %if.then
  %asmresult.i.i.i.i.sink = phi i32 [ %asmresult.i.i.i.i, %if.then ], [ %call.i, %if.else.return.sink.split_crit_edge ]
  %add = add i32 %asmresult.i.i.i.i.sink, 1
  %2 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %resid, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_cleanup_object(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.virtio_gpu_resource_id_put.exit_crit_edge

entry.virtio_gpu_resource_id_put.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtio_gpu_resource_id_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 1
  %5 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_res_handle, align 8
  %resource_ida.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 9
  %sub.i = add i32 %6, -1
  tail call void @ida_free(ptr noundef %resource_ida.i, i32 noundef %sub.i) #8
  br label %virtio_gpu_resource_id_put.exit

virtio_gpu_resource_id_put.exit:                  ; preds = %if.then.i, %entry.virtio_gpu_resource_id_put.exit_crit_edge
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 11
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %cmp.i = icmp eq ptr %8, @virtio_gpu_shmem_funcs
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %virtio_gpu_resource_id_put.exit
  %pages = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %bo, i32 0, i32 1
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then.if.end12_crit_edge, label %if.then2

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then2:                                         ; preds = %if.then
  %mapped = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %bo, i32 0, i32 2
  %11 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.then2.if.end_crit_edge, label %if.then4

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %vdev = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdev, align 8
  %parent = getelementptr inbounds %struct.virtio_device, ptr %14, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %19 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #8
  %21 = ptrtoint ptr %mapped to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mapped, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2.if.end_crit_edge
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 8
  tail call void @sg_free_table(ptr noundef %23) #8
  %24 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pages, align 8
  tail call void @drm_gem_shmem_unpin(ptr noundef %bo) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then.if.end12_crit_edge
  tail call void @drm_gem_shmem_free(ptr noundef %bo) #8
  br label %if.end31

if.else:                                          ; preds = %virtio_gpu_resource_id_put.exit
  %call14 = tail call zeroext i1 @virtio_gpu_is_vram(ptr noundef %bo) #8
  br i1 %call14, label %if.then15, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then15:                                        ; preds = %if.else
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock) #8
  %flags.i = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %bo, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then15.if.end22_crit_edge, label %if.then20

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %vram_node = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %bo, i32 0, i32 3
  tail call void @drm_mm_remove_node(ptr noundef %vram_node) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then15.if.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock) #8
  tail call void @drm_gem_free_mmap_offset(ptr noundef %bo) #8
  tail call void @drm_gem_object_release(ptr noundef %bo) #8
  tail call void @kfree(ptr noundef %bo) #8
  br label %if.end31

if.end31:                                         ; preds = %if.end22, %if.else.if.end31_crit_edge, %if.end12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @virtio_gpu_is_shmem(ptr nocapture noundef readonly %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 11
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %cmp = icmp eq ptr %1, @virtio_gpu_shmem_funcs
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_gpu_is_vram(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_gpu_create_object(ptr nocapture noundef readnone %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 624) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @virtio_gpu_shmem_funcs, ptr %funcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_object_create(ptr noundef %vgdev, ptr noundef %params, ptr nocapture noundef writeonly %bo_ptr, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bo_ptr, align 4
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 8
  %add = add i32 %2, 4095
  %div91 = and i32 %add, -4096
  store i32 %div91, ptr %params, align 8
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %3 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddev, align 4
  %call = tail call ptr @drm_gem_shmem_create(ptr noundef %4, i32 noundef %div91) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 1
  %6 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @virtio_gpu_resource_id_get.seqno, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull @virtio_gpu_resource_id_get.seqno, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @virtio_gpu_resource_id_get.seqno, ptr nonnull @virtio_gpu_resource_id_get.seqno, i32 1, ptr nonnull elementtype(i32) @virtio_gpu_resource_id_get.seqno) #8, !srcloc !22
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  br label %if.end8

if.else.i:                                        ; preds = %if.end
  %resource_ida.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 9
  %call.i.i = tail call i32 @ida_alloc_range(ptr noundef %resource_ida.i, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i92 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i92, label %if.else.i.err_free_gem_crit_edge, label %if.else.i.if.end8_crit_edge

if.else.i.if.end8_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else.i.err_free_gem_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gem

if.end8:                                          ; preds = %if.else.i.if.end8_crit_edge, %if.then.i
  %asmresult.i.i.i.i.sink.i = phi i32 [ %asmresult.i.i.i.i.i, %if.then.i ], [ %call.i.i, %if.else.i.if.end8_crit_edge ]
  %add.i = add i32 %asmresult.i.i.i.i.sink.i, 1
  %8 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %hw_res_handle, align 4
  %dumb = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %dumb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dumb, align 4, !range !24
  %dumb9 = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %dumb9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dumb9, align 4
  %tobool10.not = icmp eq ptr %fence, null
  br i1 %tobool10.not, label %if.end8.if.end22_crit_edge, label %if.then11

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then11:                                        ; preds = %if.end8
  %call12 = tail call ptr @virtio_gpu_array_alloc(i32 noundef 1) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.err_put_id_crit_edge, label %if.end15

if.then11.err_put_id_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_id

if.end15:                                         ; preds = %if.then11
  tail call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call12, ptr noundef %call) #8
  %call18 = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end15.if.end22_crit_edge, label %err_put_objs

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.end15.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %objs.0 = phi ptr [ %call12, %if.end15.if.end22_crit_edge ], [ null, %if.end8.if.end22_crit_edge ]
  %vdev.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 2
  %12 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev.i, align 8
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %15, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.not.i.i = icmp eq i64 %and.i.i.i.i, 0
  %call1.i = tail call i32 @drm_gem_shmem_pin(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i93 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i93, label %if.end22.if.then25_crit_edge, label %if.end.i

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.end.i:                                         ; preds = %if.end22
  %call3.i = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %call) #8
  %pages.i = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3.i, ptr %pages.i, align 8
  %tobool.not.i94 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i94, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_shmem_unpin(ptr noundef %call) #8
  br label %if.then25

if.end7.i:                                        ; preds = %if.end.i
  br i1 %tobool13.i.i.not.i.i, label %if.else.i95, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdev.i, align 8
  %parent.i = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %call12.i = tail call i32 @dma_map_sgtable(ptr noundef %20, ptr noundef nonnull %call3.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then9.i.if.then25_crit_edge

if.then9.i.if.then25_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.end15.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 8
  %nents17.i = getelementptr inbounds %struct.sg_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %nents17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents17.i, align 4
  %mapped.i = getelementptr inbounds %struct.virtio_gpu_object_shmem, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %mapped.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mapped.i, align 4
  br label %if.end19.i

if.else.i95:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %call3.i, i32 0, i32 2
  %26 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %orig_nents.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i95, %if.end15.i
  %storemerge.i = phi i32 [ %27, %if.else.i95 ], [ %24, %if.end15.i ]
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge.i, i32 16) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %if.end19.i.if.then22.i_crit_edge, label %kvmalloc_array.exit.i, !prof !25

if.end19.i.if.then22.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

kvmalloc_array.exit.i:                            ; preds = %if.end19.i
  %30 = extractvalue { i32, i1 } %28, 0
  %call.i.i.i96 = tail call noalias ptr @kvmalloc_node(i32 noundef %30, i32 noundef 3264, i32 noundef -1) #12
  %tobool21.not.i = icmp eq ptr %call.i.i.i96, null
  br i1 %tobool21.not.i, label %kvmalloc_array.exit.i.if.then22.i_crit_edge, label %if.end23.i

kvmalloc_array.exit.i.if.then22.i_crit_edge:      ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.then22.i:                                      ; preds = %kvmalloc_array.exit.i.if.then22.i_crit_edge, %if.end19.i.if.then22.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %if.then25

if.end23.i:                                       ; preds = %kvmalloc_array.exit.i
  %31 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages.i, align 8
  br i1 %tobool13.i.i.not.i.i, label %if.else33.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i
  %nents28103.i = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %nents28103.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents28103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp29104.not.i = icmp eq i32 %34, 0
  br i1 %cmp29104.not.i, label %if.then25.i.if.end27_crit_edge, label %for.body.preheader.i

if.then25.i.if.end27_crit_edge:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.body.preheader.i:                             ; preds = %if.then25.i
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %si.0106.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.0105.i = phi ptr [ %call32.i, %for.body.i.for.body.i_crit_edge ], [ %36, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0105.i, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %arrayidx.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.0106.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0105.i, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %length.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.0106.i, i32 1
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %length.i, align 8
  %padding.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.0106.i, i32 2
  %45 = ptrtoint ptr %padding.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %padding.i, align 4
  %inc.i = add nuw i32 %si.0106.i, 1
  %call32.i = tail call ptr @sg_next(ptr noundef %sg.0105.i) #8
  %46 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages.i, align 8
  %nents28.i = getelementptr inbounds %struct.sg_table, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %nents28.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nents28.i, align 4
  %cmp29.i = icmp ult i32 %inc.i, %49
  br i1 %cmp29.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end27_crit_edge

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else33.i:                                      ; preds = %if.end23.i
  %orig_nents38107.i = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 2
  %50 = ptrtoint ptr %orig_nents38107.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %orig_nents38107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp39108.not.i = icmp eq i32 %51, 0
  br i1 %cmp39108.not.i, label %if.else33.i.if.end27_crit_edge, label %for.body41.preheader.i

if.else33.i.if.end27_crit_edge:                   ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.body41.preheader.i:                           ; preds = %if.else33.i
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %32, align 4
  br label %for.body41.i

for.body41.i:                                     ; preds = %sg_phys.exit.i.for.body41.i_crit_edge, %for.body41.preheader.i
  %si.1110.i = phi i32 [ %inc52.i, %sg_phys.exit.i.for.body41.i_crit_edge ], [ 0, %for.body41.preheader.i ]
  %sg.1109.i = phi ptr [ %call53.i, %sg_phys.exit.i.for.body41.i_crit_edge ], [ %53, %for.body41.preheader.i ]
  %54 = ptrtoint ptr %sg.1109.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg.1109.i, align 4
  %and.i.i.i99.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i99.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i99.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_phys.exit.i, label %do.body2.i.i.i, !prof !26

do.body2.i.i.i:                                   ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

sg_phys.exit.i:                                   ; preds = %for.body41.i
  %and.i.i.i = and i32 %55, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %56 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %57
  %shl.i.i = shl i32 %add.i.i, 12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1109.i, i32 0, i32 1
  %58 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset.i.i, align 4
  %add1.i.i = add i32 %shl.i.i, %59
  %conv43.i = zext i32 %add1.i.i to i64
  %60 = tail call i64 @llvm.bswap.i64(i64 %conv43.i) #8
  %arrayidx44.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.1110.i
  %61 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx44.i, align 8
  %length46.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1109.i, i32 0, i32 2
  %62 = ptrtoint ptr %length46.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length46.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %length48.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.1110.i, i32 1
  %65 = ptrtoint ptr %length48.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %length48.i, align 8
  %padding50.i = getelementptr %struct.virtio_gpu_mem_entry, ptr %call.i.i.i96, i32 %si.1110.i, i32 2
  %66 = ptrtoint ptr %padding50.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %padding50.i, align 4
  %inc52.i = add nuw i32 %si.1110.i, 1
  %call53.i = tail call ptr @sg_next(ptr noundef %sg.1109.i) #8
  %67 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pages.i, align 8
  %orig_nents38.i = getelementptr inbounds %struct.sg_table, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %orig_nents38.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %orig_nents38.i, align 4
  %cmp39.i = icmp ult i32 %inc52.i, %70
  br i1 %cmp39.i, label %sg_phys.exit.i.for.body41.i_crit_edge, label %sg_phys.exit.i.if.end27_crit_edge

sg_phys.exit.i.if.end27_crit_edge:                ; preds = %sg_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

sg_phys.exit.i.for.body41.i_crit_edge:            ; preds = %sg_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i

if.then25:                                        ; preds = %if.then22.i, %if.then9.i.if.then25_crit_edge, %if.then5.i, %if.end22.if.then25_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then22.i ], [ -22, %if.then5.i ], [ -22, %if.end22.if.then25_crit_edge ], [ %call12.i, %if.then9.i.if.then25_crit_edge ]
  tail call void @virtio_gpu_array_put_free(ptr noundef %objs.0) #8
  %created.i = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 3
  %71 = ptrtoint ptr %created.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %created.i, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i97 = icmp eq i8 %72, 0
  br i1 %tobool.not.i97, label %if.end.i99, label %if.then.i98

if.then.i98:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 2
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_private.i, align 4
  tail call void @virtio_gpu_cmd_unref_resource(ptr noundef %76, ptr noundef %call) #8
  tail call void @virtio_gpu_notify(ptr noundef %76) #8
  br label %cleanup

if.end.i99:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_gpu_cleanup_object(ptr noundef %call) #8
  br label %cleanup

if.end27:                                         ; preds = %sg_phys.exit.i.if.end27_crit_edge, %if.else33.i.if.end27_crit_edge, %for.body.i.if.end27_crit_edge, %if.then25.i.if.end27_crit_edge
  %blob = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 3
  %77 = ptrtoint ptr %blob to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %blob, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool28.not = icmp eq i8 %78, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %blob_mem = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 15
  %79 = ptrtoint ptr %blob_mem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blob_mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp30 = icmp eq i32 %80, 1
  br i1 %cmp30, label %if.then31, label %if.then29.if.end32_crit_edge

if.then29.if.end32_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %guest_blob = getelementptr inbounds %struct.virtio_gpu_object, ptr %call, i32 0, i32 5
  %81 = ptrtoint ptr %guest_blob to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %guest_blob, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29.if.end32_crit_edge
  tail call void @virtio_gpu_cmd_resource_create_blob(ptr noundef %vgdev, ptr noundef %call, ptr noundef %params, ptr noundef nonnull %call.i.i.i96, i32 noundef %storemerge.i) #8
  br label %if.end37

if.else:                                          ; preds = %if.end27
  %virgl = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 2
  %82 = ptrtoint ptr %virgl to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %virgl, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool33.not = icmp eq i8 %83, 0
  br i1 %tobool33.not, label %if.else35, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_gpu_cmd_resource_create_3d(ptr noundef %vgdev, ptr noundef %call, ptr noundef %params, ptr noundef %objs.0, ptr noundef %fence) #8
  tail call void @virtio_gpu_object_attach(ptr noundef %vgdev, ptr noundef %call, ptr noundef nonnull %call.i.i.i96, i32 noundef %storemerge.i) #8
  br label %if.end37

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_gpu_cmd_create_resource(ptr noundef %vgdev, ptr noundef %call, ptr noundef %params, ptr noundef %objs.0, ptr noundef %fence) #8
  tail call void @virtio_gpu_object_attach(ptr noundef %vgdev, ptr noundef %call, ptr noundef nonnull %call.i.i.i96, i32 noundef %storemerge.i) #8
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then34, %if.end32
  %84 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call, ptr %bo_ptr, align 4
  br label %cleanup

err_put_objs:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %call12) #8
  br label %err_put_id

err_put_id:                                       ; preds = %err_put_objs, %if.then11.err_put_id_crit_edge
  %ret.0 = phi i32 [ %call18, %err_put_objs ], [ -12, %if.then11.err_put_id_crit_edge ]
  %85 = load i32, ptr @virtio_gpu_virglrenderer_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i100 = icmp eq i32 %85, 0
  br i1 %tobool.not.i100, label %if.then.i102, label %err_put_id.err_free_gem_crit_edge

err_put_id.err_free_gem_crit_edge:                ; preds = %err_put_id
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gem

if.then.i102:                                     ; preds = %err_put_id
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %hw_res_handle to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hw_res_handle, align 8
  %resource_ida.i101 = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 9
  %sub.i = add i32 %87, -1
  tail call void @ida_free(ptr noundef %resource_ida.i101, i32 noundef %sub.i) #8
  br label %err_free_gem

err_free_gem:                                     ; preds = %if.then.i102, %err_put_id.err_free_gem_crit_edge, %if.else.i.err_free_gem_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_put_id.err_free_gem_crit_edge ], [ %ret.0, %if.then.i102 ], [ %call.i.i, %if.else.i.err_free_gem_crit_edge ]
  tail call void @drm_gem_shmem_free(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_gem, %if.end37, %if.end.i99, %if.then.i98, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.1, %err_free_gem ], [ 0, %if.end37 ], [ %retval.0.i, %if.then.i98 ], [ %retval.0.i, %if.end.i99 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_array_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_array_lock_resv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %created to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %created, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  tail call void @virtio_gpu_cmd_unref_resource(ptr noundef %5, ptr noundef %obj) #8
  tail call void @virtio_gpu_notify(ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_gpu_cleanup_object(ptr noundef %obj)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_resource_create_blob(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_resource_create_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_object_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_create_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_gem_object_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_gem_object_close(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %p, i32 noundef %indent, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_shmem_print_info(ptr noundef %obj, ptr noundef %p, i32 noundef %indent) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_export(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_pin(ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_gem_shmem_pin(ptr noundef %obj) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_shmem_unpin(ptr noundef %obj) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %obj) #8
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_vmap(ptr noundef %obj, ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_gem_shmem_vmap(ptr noundef %obj, ptr noundef %map) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %obj, ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_shmem_vunmap(ptr noundef %obj, ptr noundef %map) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_mmap(ptr noundef %obj, ptr noundef %vma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_gem_shmem_mmap(ptr noundef %obj, ptr noundef %vma) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_unref_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__param_virglhack, !1, !"__param_virglhack", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_object.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_virglhacktype321, !1, !"__UNIQUE_ID_virglhacktype321", i1 false, i1 false}
!3 = !{ptr @virtio_gpu_resource_id_get.seqno, !4, !"seqno", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/virtio/virtgpu_object.c", i32 45, i32 19}
!5 = !{ptr @__param_str_virglhack, !1, !"__param_str_virglhack", i1 false, i1 false}
!6 = !{ptr @virtio_gpu_virglrenderer_workaround, !7, !"virtio_gpu_virglrenderer_workaround", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/virtio/virtgpu_object.c", i32 31, i32 12}
!8 = !{ptr @virtio_gpu_shmem_funcs, !9, !"virtio_gpu_shmem_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_object.c", i32 115, i32 42}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_object.c", i32 189, i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148599835}
!22 = !{i64 2148515144, i64 2148515176, i64 2148515205, i64 2148515239, i64 2148515270, i64 2148515293}
!23 = !{i64 2148600064}
!24 = !{i8 0, i8 2}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2153784566, i64 2153785058, i64 2153784603, i64 2153784659, i64 2153784693, i64 2153784717, i64 2153784758, i64 2153784779, i64 2153784807, i64 2153784841}
