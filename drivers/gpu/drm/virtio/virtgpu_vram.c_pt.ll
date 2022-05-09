; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_vram.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_vram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.virtio_gpu_object = type { %struct.drm_gem_shmem_object, i32, i8, i8, i8, i8, i32, i32, i32, %struct.uuid_t }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
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
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.virtio_gpu_object_vram = type { %struct.virtio_gpu_object, i32, i32, %struct.drm_mm_node }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.virtio_gpu_object_params = type { i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@virtio_gpu_vram_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @virtio_gpu_vram_free, ptr @virtio_gpu_gem_object_open, ptr @virtio_gpu_gem_object_close, ptr null, ptr @virtgpu_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_gpu_vram_mmap, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/virtio/virtgpu_vram.c\00", [58 x i8] zeroinitializer }, align 32
@virtio_gpu_vram_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"virtio_gpu_vram_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 128, i32 42 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 44, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"virtio_gpu_vram_vm_ops\00", align 1
@___asan_gen_.8 = private constant [41 x i8] c"../drivers/gpu/drm/virtio/virtgpu_vram.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 42 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @virtio_gpu_vram_funcs, ptr @.str, ptr @virtio_gpu_vram_vm_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_vram_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_vram_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtio_gpu_vram_map_dma_buf(ptr nocapture noundef readonly %bo, ptr noundef %dev, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object, ptr %bo, i32 0, i32 7
  %5 = ptrtoint ptr %blob_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blob_flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call zeroext i1 @is_virtio_device(ptr noundef %dev) #5
  br i1 %call6, label %lor.lhs.false, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %if.then5
  %has_resource_assign_uuid = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %has_resource_assign_uuid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_resource_assign_uuid, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.end10
  %start = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %bo, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %conv = trunc i64 %10 to i32
  %size = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %bo, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  %conv16 = trunc i64 %12 to i32
  %call17 = tail call i32 @dma_map_resource(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv16, i32 noundef %dir, i32 noundef 32) #5
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp.i.not = icmp eq i32 %call17, -1
  br i1 %cmp.i.not, label %if.end14.out_crit_edge, label %if.end21

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !16

do.body19.i.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

sg_set_page.exit:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size, align 8
  %conv24 = trunc i64 %18 to i32
  %and.i.i = and i32 %16, 3
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i.i, ptr %14, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv24, ptr %length.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call17, ptr %dma_address, align 4
  %25 = load i64, ptr %size, align 8
  %conv28 = trunc i64 %25 to i32
  %26 = load ptr, ptr %call7.i.i, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv28, ptr %dma_length, align 4
  br label %cleanup

out:                                              ; preds = %if.end14.out_crit_edge, %if.end10.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then5.out_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ -12, %if.end14.out_crit_edge ], [ -5, %lor.lhs.false.out_crit_edge ], [ -5, %if.then5.out_crit_edge ]
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %28 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %sg_set_page.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %out ], [ %call7.i.i, %sg_set_page.exit ], [ %call7.i.i, %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_virtio_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_vram_unmap_dma_buf(ptr noundef %dev, ptr noundef %sgt, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  tail call void @dma_unmap_resource(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef %dir, i32 noundef 32) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #5
  tail call void @kfree(ptr noundef %sgt) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @virtio_gpu_is_vram(ptr nocapture noundef readonly %bo) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 11
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %cmp = icmp eq ptr %1, @virtio_gpu_vram_funcs
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_vram_create(ptr noundef %vgdev, ptr noundef %params, ptr nocapture noundef writeonly %bo_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 736) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @virtio_gpu_vram_funcs, ptr %funcs, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 8
  %add = add i32 %3, 4095
  %and = and i32 %add, -4096
  store i32 %and, ptr %params, align 8
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %5, ptr noundef nonnull %call7.i.i, i32 noundef %and) #5
  %call5 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %hw_res_handle = getelementptr inbounds %struct.virtio_gpu_object, ptr %call7.i.i, i32 0, i32 1
  %call10 = tail call i32 @virtio_gpu_resource_id_get(ptr noundef %vgdev, ptr noundef %hw_res_handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  tail call void @virtio_gpu_cmd_resource_create_blob(ptr noundef %vgdev, ptr noundef nonnull %call7.i.i, ptr noundef %params, ptr noundef null, i32 noundef 0) #5
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %blob_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blob_flags, align 8
  %and15 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end23_crit_edge, label %if.then17

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %if.end13
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %has_host_visible.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %has_host_visible.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_host_visible.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then17.if.then21_crit_edge, label %if.end.i

if.then17.if.then21_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end.i:                                         ; preds = %if.then17
  %host_visible_lock.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %11, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock.i) #5
  %host_visible_mm.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %11, i32 0, i32 23
  %vram_node.i = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %call7.i.i, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %conv.i = zext i32 %15 to i64
  %call.i.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %host_visible_mm.i, ptr noundef %vram_node.i, i64 noundef %conv.i, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.then21_crit_edge

if.end.i.if.then21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @virtio_gpu_array_alloc(i32 noundef 1) #5
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.err_remove_node.i_crit_edge, label %if.end11.i

if.end7.i.err_remove_node.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_node.i

if.end11.i:                                       ; preds = %if.end7.i
  tail call void @virtio_gpu_array_add_obj(ptr noundef nonnull %call8.i, ptr noundef nonnull %call7.i.i) #5
  %start.i = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start.i, align 8
  %host_visible_region.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %11, i32 0, i32 22
  %18 = ptrtoint ptr %host_visible_region.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %host_visible_region.i, align 8
  %sub.i = sub i64 %17, %19
  %call15.i = tail call i32 @virtio_gpu_cmd_map(ptr noundef %11, ptr noundef nonnull %call8.i, i64 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end11.i.if.end23_crit_edge, label %if.then17.i

if.end11.i.if.end23_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %call8.i) #5
  br label %err_remove_node.i

err_remove_node.i:                                ; preds = %if.then17.i, %if.end7.i.err_remove_node.i_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %if.then17.i ], [ -12, %if.end7.i.err_remove_node.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock.i) #5
  tail call void @drm_mm_remove_node(ptr noundef %vram_node.i) #5
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock.i) #5
  br label %if.then21

if.then21:                                        ; preds = %err_remove_node.i, %if.end.i.if.then21_crit_edge, %if.then17.if.then21_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.end.i.if.then21_crit_edge ], [ -22, %if.then17.if.then21_crit_edge ], [ %ret.0.i, %err_remove_node.i ]
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %dev_private.i49 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i49, align 4
  %created.i = getelementptr inbounds %struct.virtio_gpu_object, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %created.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %created.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i50 = icmp eq i8 %25, 0
  br i1 %tobool.not.i50, label %if.then21.cleanup_crit_edge, label %if.then.i

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then21
  %host_visible_lock.i51 = getelementptr inbounds %struct.virtio_gpu_device, ptr %23, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock.i51) #5
  %flags.i.i = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %call7.i.i, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i, align 8
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock.i51) #5
  br i1 %tobool.i.not.i, label %if.then.i.if.end.i52_crit_edge, label %if.then6.i

if.then.i.if.end.i52_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i52

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @virtio_gpu_cmd_unmap(ptr noundef %23, ptr noundef nonnull %call7.i.i) #5
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then6.i, %if.then.i.if.end.i52_crit_edge
  tail call void @virtio_gpu_cmd_unref_resource(ptr noundef %23, ptr noundef nonnull %call7.i.i) #5
  tail call void @virtio_gpu_notify(ptr noundef %23) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end11.i.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %28 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %bo_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.i52, %if.then21.cleanup_crit_edge, %if.then12, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call10, %if.then12 ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then21.cleanup_crit_edge ], [ %retval.0.i.ph, %if.end.i52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_resource_id_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_resource_create_blob(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_vram_free(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %created = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 3
  %4 = ptrtoint ptr %created to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %created, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %host_visible_lock = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %host_visible_lock) #5
  %flags.i = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %obj, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  tail call void @_raw_spin_unlock(ptr noundef %host_visible_lock) #5
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @virtio_gpu_cmd_unmap(ptr noundef %3, ptr noundef %obj) #5
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call void @virtio_gpu_cmd_unref_resource(ptr noundef %3, ptr noundef %obj) #5
  tail call void @virtio_gpu_notify(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_gem_object_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_gem_object_close(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtgpu_gem_prime_export(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_vram_mmap(ptr nocapture noundef readonly %obj, ptr noundef %vma) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  %blob_flags = getelementptr inbounds %struct.virtio_gpu_object, ptr %obj, i32 0, i32 7
  %8 = ptrtoint ptr %blob_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blob_flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %do.body4

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

do.body4:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 44) #5
  %map_state = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %obj, i32 0, i32 1
  %10 = ptrtoint ptr %map_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end9, label %do.body4.do.end17_crit_edge

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end9:                                          ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %resp_wq = getelementptr inbounds %struct.virtio_gpu_device, ptr %3, i32 0, i32 10
  %call85 = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %13 = ptrtoint ptr %map_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not86 = icmp eq i32 %14, 0
  br i1 %cmp11.not86, label %if.end9.cleanup_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @schedule() #5
  %call = call i32 @prepare_to_wait_event(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %15 = ptrtoint ptr %map_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %map_state, align 8
  %cmp11.not = icmp eq i32 %16, 0
  br i1 %cmp11.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @finish_wait(ptr noundef %resp_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %17 = ptrtoint ptr %map_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %map_state, align 8
  br label %do.end17

do.end17:                                         ; preds = %for.end, %do.body4.do.end17_crit_edge
  %18 = phi i32 [ %11, %do.body4.do.end17_crit_edge ], [ %.pr, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp19.not = icmp eq i32 %18, 1
  br i1 %cmp19.not, label %if.end21, label %do.end17.cleanup52_crit_edge

do.end17.cleanup52_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end21:                                         ; preds = %do.end17
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start.i, align 8
  %conv.i = trunc i64 %20 to i32
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %21 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_pgoff, align 4
  %sub23 = sub i32 %22, %conv.i
  store i32 %sub23, ptr %vm_pgoff, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %23 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_flags, align 4
  %or = or i32 %24, 268697600
  store i32 %or, ptr %vm_flags, align 4
  %call25 = call i32 @vm_get_page_prot(i32 noundef %or) #5
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %25 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call25, ptr %vm_page_prot, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %26 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @virtio_gpu_vram_vm_ops, ptr %vm_ops, align 4
  %map_info = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %obj, i32 0, i32 2
  %27 = ptrtoint ptr %map_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %map_info, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.end21.if.end42_crit_edge [
    i32 3, label %if.then29
    i32 2, label %if.then36
  ]

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %and31 = and i32 %call25, -61
  %or32 = or i32 %and31, 4
  br label %if.end42.sink.split

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %and38 = and i32 %call25, -61
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then36, %if.then29
  %and38.sink = phi i32 [ %and38, %if.then36 ], [ %or32, %if.then29 ]
  %30 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and38.sink, ptr %vm_page_prot, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end21.if.end42_crit_edge
  %conv = zext i32 %sub to i64
  %size = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %obj, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv)
  %cmp43.not = icmp eq i64 %32, %conv
  br i1 %cmp43.not, label %if.end46, label %if.end42.cleanup52_crit_edge

if.end42.cleanup52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vma, align 4
  %start = getelementptr inbounds %struct.virtio_gpu_object_vram, ptr %obj, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start, align 8
  %shr = lshr i64 %36, 12
  %conv49 = trunc i64 %shr to i32
  %37 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_page_prot, align 4
  %call.i = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %34, i32 noundef %conv49, i32 noundef %sub, i32 noundef %38) #5
  br label %cleanup52

cleanup52:                                        ; preds = %if.end46, %if.end42.cleanup52_crit_edge, %do.end17.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end46 ], [ -22, %entry.cleanup52_crit_edge ], [ -22, %do.end17.cleanup52_crit_edge ], [ -22, %if.end42.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_array_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_add_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_map(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_unref_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @virtio_gpu_vram_funcs, !1, !"virtio_gpu_vram_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_vram.c", i32 128, i32 42}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_vram.c", i32 44, i32 2}
!4 = !{ptr @virtio_gpu_vram_vm_ops, !5, !"virtio_gpu_vram_vm_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_vram.c", i32 27, i32 42}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153370932, i64 2153371424, i64 2153370969, i64 2153371025, i64 2153371059, i64 2153371083, i64 2153371124, i64 2153371145, i64 2153371173, i64 2153371207}
