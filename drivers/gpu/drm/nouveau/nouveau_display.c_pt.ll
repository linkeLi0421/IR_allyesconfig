; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.97, %struct.anon.98, %struct.anon.100, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.97 = type { i32, i8, i32, i32 }
%struct.anon.98 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { i32 }
%struct.anon.215 = type { %struct.nv04_disp_mthd_v0, %struct.nv04_disp_scanoutpos_v0 }
%struct.nv04_disp_mthd_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nv04_disp_scanoutpos_v0 = type { i8, [7 x i8], [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.104, %struct.anon.105, %struct.anon.106, ptr, %struct.anon.107, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.108, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.120 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.104 = type { ptr, i32, i32, i8 }
%struct.anon.105 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.99] }
%struct.anon.99 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.106 = type { i64, i64 }
%struct.anon.107 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.96 }
%struct.anon.96 = type { ptr, i64 }
%struct.anon.108 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.109, i8 }
%union.anon.109 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.115 = type { i32 }
%struct.anon.116 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.117 = type { i16, i16 }
%struct.anon.118 = type { i16, i16, i16, %struct.anon.119, i16 }
%struct.anon.119 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.130, %struct.anon.131, %struct.anon.133, %union.anon.134 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.130 = type { i32, i32 }
%struct.anon.131 = type { i32, %struct.anon.132, i8 }
%struct.anon.132 = type { i32, i32, i32 }
%struct.anon.133 = type { i32, i32 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i8 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.214 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unsuitable framebuffer: format: %p4cc; pitches: 0x%x\0A 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported modifier: 0x%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@nouveau_framebuffer_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@nouveau_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @nouveau_user_framebuffer_create, ptr null, ptr @nouveau_fbcon_output_poll_changed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nouveau_modeset = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmsDisp\00", [24 x i8] zeroinitializer }, align 32
@nouveau_display_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&drm->hpd_work)\00", [62 x i8] zeroinitializer }, align 32
@nouveau_display_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&drm->hpd_lock\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"offset=%u stride=%u h=%u tile_mode=0x%02x bw=%u bh=%u gob_size=%u bl_size=%llu size=%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dithering mode\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dithering depth\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"underscan\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan hborder\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan vborder\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vibrant hue\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"color vibrance\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"static 2x2\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dynamic 2x2\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"temporal\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6 bpc\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8 bpc\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 842094158, i64 1448695129, i64 1498831189]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 325, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 334, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"nouveau_framebuffer_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 131, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"nouveau_mode_config_funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 398, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 707, i32 45 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 734, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 735, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 289, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 636, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 637, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 638, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 641, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 644, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 651, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 655, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 418, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 419, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 420, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 421, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 422, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 423, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 429, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 430, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [45 x i8] c"../drivers/gpu/drm/nouveau/nouveau_display.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 503, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @nouveau_framebuffer_funcs, ptr @nouveau_mode_config_funcs, ptr @.str.2, ptr @nouveau_display_create.__key, ptr @.str.3, ptr @nouveau_display_create.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_framebuffer_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_display_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_display_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_vblank_enable(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 2
  %call1 = tail call i32 @nvif_notify_get(ptr noundef %vblank) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_display_vblank_disable(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 2
  %call1 = tail call i32 @nvif_notify_put(ptr noundef %vblank) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_display_scanoutpos(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef writeonly %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readnone %mode) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.anon.215, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args.i) #5
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 48)
  %head.i = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %args.i, i32 0, i32 2
  %index.i = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %1 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index.i, align 8
  %conv.i = trunc i32 %2 to i8
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %head.i, align 2
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display.i.i, align 4
  %vblank3.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %vblank3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vblank3.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %disp5.i = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 4
  %call655.i = call i32 @nvif_object_mthd(ptr noundef %disp5.i, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call655.i)
  %tobool.not56.i = icmp eq i32 %call655.i, 0
  br i1 %tobool.not56.i, label %if.end.lr.ph.i, label %entry.nouveau_display_scanoutpos_head.exit_crit_edge

entry.nouveau_display_scanoutpos_head.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_display_scanoutpos_head.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %vline.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 6
  %linedur_ns.i = getelementptr %struct.drm_vblank_crtc, ptr %11, i32 %13, i32 12
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false8.i.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %retry.057.i = phi i32 [ 20, %if.end.lr.ph.i ], [ %dec.i, %cond.false8.i.i.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %vline.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vline.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool10.not.i = icmp ne i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.057.i)
  %tobool13.not.i = icmp eq i32 %retry.057.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond.i, label %do.end.i, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  %16 = ptrtoint ptr %linedur_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %linedur_ns.i, align 8
  %sub.i.i = add i32 %17, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %18(i32 noundef %div.i.i) #5
  %dec.i = add nsw i32 %retry.057.i, -1
  %call6.i = call i32 @nvif_object_mthd(ptr noundef %disp5.i, i32 noundef 0, ptr noundef nonnull %args.i, i32 noundef 48) #5
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %cond.false8.i.i.if.end.i_crit_edge, label %cond.false8.i.i.nouveau_display_scanoutpos_head.exit_crit_edge

cond.false8.i.i.nouveau_display_scanoutpos_head.exit_crit_edge: ; preds = %cond.false8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_display_scanoutpos_head.exit

cond.false8.i.i.if.end.i_crit_edge:               ; preds = %cond.false8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i
  %hline.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %hline.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hline.i, align 2
  %conv18.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv18.i, ptr %hpos, align 4
  %vblanks.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %vblanks.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vblanks.i, align 8
  %vblanke.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %vblanke.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vblanke.i, align 2
  %conv22.i = zext i16 %25 to i32
  %vtotal.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vtotal.i, align 4
  %conv27.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %23)
  %cmp.not.i.i = icmp ult i16 %25, %23
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %23)
  %cmp3.not.i.i = icmp ult i16 %15, %23
  %narrow.i = select i1 %cmp3.not.i.i, i16 0, i16 %27
  %sub5.i.i = zext i16 %narrow.i to i32
  %add.neg.i.i = xor i32 %conv22.i, -1
  %spec.select18.i.i = select i1 %cmp.not.i.i, i32 %add.neg.i.i, i32 0
  %line.sink.i.i = add nsw i32 %spec.select18.i.i, %conv27.i
  %spec.select.i.i = sub nsw i32 %line.sink.i.i, %sub5.i.i
  %28 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i.i, ptr %vpos, align 4
  %tobool29.not.i = icmp eq ptr %stime, null
  br i1 %tobool29.not.i, label %do.end.i.if.end34.i_crit_edge, label %if.then30.i

do.end.i.if.end34.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %time.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %time.i, align 8
  %31 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %stime, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %do.end.i.if.end34.i_crit_edge
  %tobool35.not.i = icmp eq ptr %etime, null
  br i1 %tobool35.not.i, label %if.end34.i.nouveau_display_scanoutpos_head.exit_crit_edge, label %if.then36.i

if.end34.i.nouveau_display_scanoutpos_head.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_display_scanoutpos_head.exit

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39.i = getelementptr inbounds %struct.anon.215, ptr %args.i, i32 0, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx39.i, align 8
  %34 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %etime, align 8
  br label %nouveau_display_scanoutpos_head.exit

nouveau_display_scanoutpos_head.exit:             ; preds = %if.then36.i, %if.end34.i.nouveau_display_scanoutpos_head.exit_crit_edge, %cond.false8.i.i.nouveau_display_scanoutpos_head.exit_crit_edge, %entry.nouveau_display_scanoutpos_head.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool10.not.i, %if.then36.i ], [ %tobool10.not.i, %if.end34.i.nouveau_display_scanoutpos_head.exit_crit_edge ], [ false, %entry.nouveau_display_scanoutpos_head.exit_crit_edge ], [ false, %cond.false8.i.i.nouveau_display_scanoutpos_head.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i) #5
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_framebuffer_get_layout(ptr nocapture noundef readonly %fb, ptr noundef %tile_mode, ptr noundef writeonly %kind) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 8
  %6 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %modifier, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %display.i.i, align 4
  %tobool.not.i = icmp eq ptr %tile_mode, null
  %tobool1.not.i = icmp eq ptr %kind, null
  %spec.select.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %spec.select.i, label %do.body5.i, label %do.end10.i, !prof !69

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #5, !srcloc !70
  unreachable

do.end10.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i = icmp eq i64 %7, 0
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %tile_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tile_mode, align 4
  %15 = ptrtoint ptr %kind to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %kind, align 1
  br label %if.end

if.else.i:                                        ; preds = %do.end10.i
  %and.i = and i64 %7, 1044480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp12.i = icmp eq i64 %and.i, 0
  %extract.t35.i = trunc i64 %7 to i32
  %extract37.i = lshr i64 %7, 12
  %extract.t38.i = trunc i64 %extract37.i to i8
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %format_modifiers.i = getelementptr inbounds %struct.nouveau_display, ptr %13, i32 0, i32 13
  %16 = ptrtoint ptr %format_modifiers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format_modifiers.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %and14.i = and i64 %19, 1044480
  %or.i = or i64 %and14.i, %7
  %extract.t.i = trunc i64 %or.i to i32
  %extract.i = lshr i64 %or.i, 12
  %extract.t36.i = trunc i64 %extract.i to i8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.else.i.if.end15.i_crit_edge
  %modifier.addr.0.off0.i = phi i32 [ %extract.t.i, %if.then13.i ], [ %extract.t35.i, %if.else.i.if.end15.i_crit_edge ]
  %modifier.addr.0.off12.i = phi i8 [ %extract.t36.i, %if.then13.i ], [ %extract.t38.i, %if.else.i.if.end15.i_crit_edge ]
  %conv.i = and i32 %modifier.addr.0.off0.i, 15
  %20 = ptrtoint ptr %tile_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %tile_mode, align 4
  %21 = ptrtoint ptr %kind to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %modifier.addr.0.off12.i, ptr %kind, align 1
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 2
  %22 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %23)
  %cmp20.i = icmp ugt i16 %23, 191
  br i1 %cmp20.i, label %if.then22.i, label %if.end15.i.if.end_crit_edge

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %tile_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tile_mode, align 4
  %shl.i = shl i32 %25, 4
  store i32 %shl.i, ptr %tile_mode, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %26 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %obj, align 4
  %mode = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 4
  %30 = ptrtoint ptr %tile_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tile_mode, align 4
  %kind2 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 15
  %31 = ptrtoint ptr %kind2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %kind2, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %conv = trunc i32 %bf.lshr to i8
  %32 = ptrtoint ptr %kind to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %kind, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22.i, %if.end15.i.if.end_crit_edge, %if.then11.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_framebuffer_new(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef %gem, ptr nocapture noundef writeonly %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp ult i8 %3, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %land.lhs.true.if.end_crit_edge [
    i32 1448695129, label %land.lhs.true.land.lhs.true17_crit_edge
    i32 1498831189, label %land.lhs.true.land.lhs.true17_crit_edge167
    i32 842094158, label %land.lhs.true.land.lhs.true17_crit_edge168
    i32 825382478, label %land.lhs.true.land.lhs.true17_crit_edge169
  ]

land.lhs.true.land.lhs.true17_crit_edge169:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

land.lhs.true.land.lhs.true17_crit_edge168:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

land.lhs.true.land.lhs.true17_crit_edge167:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge167, %land.lhs.true.land.lhs.true17_crit_edge168, %land.lhs.true.land.lhs.true17_crit_edge169
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %7 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pitches, align 4
  %9 = and i32 %8, -65473
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %lor.lhs.false23, label %land.lhs.true17.if.then_crit_edge

land.lhs.true17.if.then_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false23:                                  ; preds = %land.lhs.true17
  %arrayidx25 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp32.not = icmp eq i32 %8, %11
  %or.cond142 = select i1 %tobool26.not, i1 true, i1 %cmp32.not
  br i1 %or.cond142, label %lor.lhs.false23.if.end_crit_edge, label %lor.lhs.false23.if.then_crit_edge

lor.lhs.false23.if.then_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false23.if.end_crit_edge:                 ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false23.if.then_crit_edge, %land.lhs.true17.if.then_crit_edge
  %arrayidx38 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx38, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %pixel_format, i32 noundef %8, i32 noundef %13) #5
  br label %cleanup87

if.end:                                           ; preds = %lor.lhs.false23.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %flags = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and39 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end.if.else_crit_edge, label %if.then41

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.thread:                                    ; preds = %entry
  %flags150 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 4
  %16 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags150, align 8
  %and39151 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39151)
  %tobool40.not152 = icmp eq i32 %and39151, 0
  br i1 %tobool40.not152, label %if.end.thread.if.else_crit_edge, label %do.body.i

if.end.thread.if.else_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %18 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %modifier, align 8
  br label %if.then45

do.body.i:                                        ; preds = %if.end.thread
  %modifier153 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %20 = ptrtoint ptr %modifier153 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %modifier153, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %display.i.i, align 4
  %format_modifiers.i = getelementptr inbounds %struct.nouveau_display, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %format_modifiers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %format_modifiers.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.body6.i, label %do.body.i.for.cond.i_crit_edge, !prof !69

do.body.i.for.cond.i_crit_edge:                   ; preds = %do.body.i
  br label %for.cond.i

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !71
  unreachable

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.body.i.for.cond.i_crit_edge
  %mod.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %do.body.i.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %29, i32 %mod.0.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927935, i64 %31)
  %cmp14.not.i = icmp eq i64 %31, 72057594037927935
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %21)
  %cmp18.not.i = icmp eq i64 %31, %21
  %or.cond.i = or i1 %cmp14.not.i, %cmp18.not.i
  %inc.i = add i32 %mod.0.i, 1
  br i1 %or.cond.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %cmp14.not.fr.i = freeze i1 %cmp14.not.i
  %32 = add i64 %21, -216172782113783830
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %32)
  %switch.i = icmp ult i64 %32, -6
  %33 = and i1 %switch.i, %cmp14.not.fr.i
  br i1 %33, label %for.end.i.if.then45_crit_edge, label %if.end43.i

for.end.i.if.then45_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.end43.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp.i.i = icmp eq i64 %21, 0
  br i1 %cmp.i.i, label %if.end43.i.if.end51_crit_edge, label %if.else.i.i

if.end43.i.if.end51_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.else.i.i:                                      ; preds = %if.end43.i
  %and.i.i = and i64 %21, 1044480
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp12.i.i = icmp eq i64 %and.i.i, 0
  %extract.t35.i.i = trunc i64 %21 to i32
  %extract37.i.i = lshr i64 %21, 12
  %extract.t38.i.i = trunc i64 %extract37.i.i to i8
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.else.i.i.if.end15.i.i_crit_edge

if.else.i.i.if.end15.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %29, align 8
  %and14.i.i = and i64 %35, 1044480
  %or.i.i = or i64 %and14.i.i, %21
  %extract.t.i.i = trunc i64 %or.i.i to i32
  %extract.i.i = lshr i64 %or.i.i, 12
  %extract.t36.i.i = trunc i64 %extract.i.i to i8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.else.i.i.if.end15.i.i_crit_edge
  %modifier.addr.0.off0.i.i = phi i32 [ %extract.t.i.i, %if.then13.i.i ], [ %extract.t35.i.i, %if.else.i.i.if.end15.i.i_crit_edge ]
  %modifier.addr.0.off12.i.i = phi i8 [ %extract.t36.i.i, %if.then13.i.i ], [ %extract.t38.i.i, %if.else.i.i.if.end15.i.i_crit_edge ]
  %conv.i.i = and i32 %modifier.addr.0.off0.i.i, 15
  %chipset.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %36 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %chipset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 191, i16 %37)
  %cmp20.i.i = icmp ugt i16 %37, 191
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %spec.select = select i1 %cmp20.i.i, i32 %shl.i.i, i32 %conv.i.i
  br label %if.end51

if.then45:                                        ; preds = %for.end.i.if.then45_crit_edge, %if.then41
  %38 = phi i64 [ %19, %if.then41 ], [ %21, %for.end.i.if.then45_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i64 noundef %38) #5
  br label %cleanup87

if.else:                                          ; preds = %if.end.thread.if.else_crit_edge, %if.end.if.else_crit_edge
  %mode = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 16
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 4
  %kind49 = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 15
  %41 = ptrtoint ptr %kind49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load = load i32, ptr %kind49, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %conv50 = trunc i32 %bf.lshr to i8
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end15.i.i, %if.end43.i.if.end51_crit_edge
  %tile_mode.1 = phi i32 [ %40, %if.else ], [ 0, %if.end43.i.if.end51_crit_edge ], [ %spec.select, %if.end15.i.i ]
  %kind.1 = phi i8 [ %conv50, %if.else ], [ 0, %if.end43.i.if.end51_crit_edge ], [ %modifier.addr.0.off12.i.i, %if.end15.i.i ]
  %call52 = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #5
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call52, i32 0, i32 2
  %42 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp54162.not = icmp eq i8 %43, 0
  br i1 %cmp54162.not, label %if.end51.for.end_crit_edge, label %for.body.lr.ph

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end51
  %conv53161 = zext i8 %43 to i32
  %height56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %tobool.not.i143 = icmp ne ptr %call52, null
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %call52, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %kind.1)
  %tobool58.not = icmp eq i8 %kind.1, 0
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %and.i = and i32 %tile_mode.1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  %shr.i = lshr i32 %tile_mode.1, 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv53166 = phi i32 [ %conv53161, %for.body.lr.ph ], [ %conv53, %for.inc.for.body_crit_edge ]
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %44 = ptrtoint ptr %height56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height56, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0163, i32 %conv53166)
  %cmp.not.i = icmp ult i32 %i.0163, %conv53166
  %or.cond160 = select i1 %tobool.not.i143, i1 %cmp.not.i, i1 false
  br i1 %or.cond160, label %if.end.i, label %for.body.drm_format_info_plane_height.exit_crit_edge

for.body.drm_format_info_plane_height.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_info_plane_height.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0163)
  %cmp2.i = icmp eq i32 %i.0163, 0
  br i1 %cmp2.i, label %if.end.i.drm_format_info_plane_height.exit_crit_edge, label %if.end5.i

if.end.i.drm_format_info_plane_height.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_info_plane_height.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vsub.i, align 1
  %conv6.i = zext i8 %47 to i32
  %div.i = sdiv i32 %45, %conv6.i
  br label %drm_format_info_plane_height.exit

drm_format_info_plane_height.exit:                ; preds = %if.end5.i, %if.end.i.drm_format_info_plane_height.exit_crit_edge, %for.body.drm_format_info_plane_height.exit_crit_edge
  %retval.0.i144 = phi i32 [ %div.i, %if.end5.i ], [ 0, %for.body.drm_format_info_plane_height.exit_crit_edge ], [ %45, %if.end.i.drm_format_info_plane_height.exit_crit_edge ]
  br i1 %tobool58.not, label %if.else67, label %if.then59

if.then59:                                        ; preds = %drm_format_info_plane_height.exit
  %arrayidx60 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 %i.0163
  %48 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 %i.0163
  %50 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx62, align 4
  %52 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %53)
  %cmp.i146 = icmp ult i8 %53, 6
  br i1 %cmp.i146, label %do.body3.i, label %do.end8.i, !prof !69

do.body3.i:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #5, !srcloc !72
  unreachable

do.end8.i:                                        ; preds = %if.then59
  %54 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %55)
  %cmp13.i = icmp ult i16 %55, 192
  %brmerge = select i1 %cmp13.i, i1 true, i1 %tobool16.not.i
  %tile_mode.1.mux = select i1 %cmp13.i, i32 %tile_mode.1, i32 %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tile_mode.1.mux)
  %tobool21.not.i = icmp ult i32 %tile_mode.1.mux, 16
  %or.cond = select i1 %brmerge, i1 %tobool21.not.i, i1 false
  br i1 %or.cond, label %nouveau_get_height_in_blocks.exit.i, label %do.end8.i.cleanup87_crit_edge

do.end8.i.cleanup87_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup87

nouveau_get_height_in_blocks.exit.i:              ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %cmp29.i = icmp ult i8 %53, 7
  %..i = select i1 %cmp29.i, i32 256, i32 512
  %sub.i.i = add i32 %51, 63
  %shr.i.i = lshr i32 %sub.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %53)
  %cmp14.i.i = icmp eq i8 %53, 6
  %..i.i = select i1 %cmp14.i.i, i32 2, i32 3
  %add.i.i = add nuw nsw i32 %tile_mode.1.mux, %..i.i
  %shl.i.i147 = shl nuw nsw i32 1, %add.i.i
  %add18.i.i = add i32 %retval.0.i144, -1
  %sub.i65.i = add i32 %add18.i.i, %shl.i.i147
  %shr.i66.i = lshr i32 %sub.i65.i, %add.i.i
  %mul.i = mul i32 %shr.i66.i, %shr.i.i
  %mul34.i = shl i32 %mul.i, %tile_mode.1.mux
  %mul35.i = mul i32 %mul34.i, %..i
  %conv36.i = zext i32 %mul35.i to i64
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %49, i32 noundef %51, i32 noundef %retval.0.i144, i32 noundef %tile_mode.1.mux, i32 noundef %shr.i.i, i32 noundef %shr.i66.i, i32 noundef %..i, i64 noundef %conv36.i, i32 noundef %57) #5
  %conv37.i = zext i32 %49 to i64
  %add.i = add nuw nsw i64 %conv36.i, %conv37.i
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i, align 8
  %conv41.i = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv41.i)
  %cmp42.i = icmp ugt i64 %add.i, %conv41.i
  br i1 %cmp42.i, label %nouveau_get_height_in_blocks.exit.i.cleanup87_crit_edge, label %nouveau_get_height_in_blocks.exit.i.for.inc_crit_edge

nouveau_get_height_in_blocks.exit.i.for.inc_crit_edge: ; preds = %nouveau_get_height_in_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

nouveau_get_height_in_blocks.exit.i.cleanup87_crit_edge: ; preds = %nouveau_get_height_in_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup87

if.else67:                                        ; preds = %drm_format_info_plane_height.exit
  %arrayidx69 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 %i.0163
  %60 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx69, align 4
  %mul = mul i32 %61, %retval.0.i144
  %arrayidx71 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 %i.0163
  %62 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx71, align 4
  %add = add i32 %mul, %63
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %65)
  %cmp73 = icmp ugt i32 %add, %65
  br i1 %cmp73, label %if.else67.cleanup87_crit_edge, label %if.else67.for.inc_crit_edge

if.else67.for.inc_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else67.cleanup87_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup87

for.inc:                                          ; preds = %if.else67.for.inc_crit_edge, %nouveau_get_height_in_blocks.exit.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0163, 1
  %66 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_planes, align 1
  %conv53 = zext i8 %67 to i32
  %cmp54 = icmp ult i32 %inc, %conv53
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end51.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 144) #8
  %69 = ptrtoint ptr %pfb to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %pfb, align 4
  %tobool79.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool79.not, label %for.end.cleanup87_crit_edge, label %if.end81

for.end.cleanup87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup87

if.end81:                                         ; preds = %for.end
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #5
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %70 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %gem, ptr %obj, align 4
  %call83 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nouveau_framebuffer_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end81.cleanup87_crit_edge, label %if.then85

if.end81.cleanup87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup87

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup87

cleanup87:                                        ; preds = %if.then85, %if.end81.cleanup87_crit_edge, %for.end.cleanup87_crit_edge, %if.else67.cleanup87_crit_edge, %nouveau_get_height_in_blocks.exit.i.cleanup87_crit_edge, %do.end8.i.cleanup87_crit_edge, %if.then45, %if.then
  %retval.3 = phi i32 [ -22, %if.then ], [ -22, %if.then45 ], [ -12, %for.end.cleanup87_crit_edge ], [ %call83, %if.then85 ], [ 0, %if.end81.cleanup87_crit_edge ], [ -34, %nouveau_get_height_in_blocks.exit.i.cleanup87_crit_edge ], [ -34, %if.else67.cleanup87_crit_edge ], [ -22, %do.end8.i.cleanup87_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_user_framebuffer_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  %fb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb) #5
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fb, align 4, !annotation !73
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %1 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handles, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @nouveau_framebuffer_new(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef nonnull %call, ptr noundef nonnull %fb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.then.i

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #5
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %6 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then3 ], [ %6, %drm_gem_object_put.exit ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_display_hpd_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %hpd_lock = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %hpd_lock, i32 noundef 0) #5
  %hpd_pending = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hpd_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hpd_pending, align 8
  tail call void @mutex_unlock(ptr noundef %hpd_lock) #5
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %hpd_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_init(ptr noundef %dev, i1 noundef zeroext %resume, i1 noundef zeroext %runtime) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #5
  %4 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !73
  %5 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !73
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #5
  %call222 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool.not23 = icmp eq ptr %call222, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call224 = phi ptr [ %call2, %if.end.while.body_crit_edge ], [ %call222, %entry.while.body_crit_edge ]
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call224, i32 0, i32 10
  %7 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 10
  br i1 %cmp.not.i, label %if.end.i, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %while.body
  %call.i = call ptr @find_encoder(ptr noundef nonnull %call224, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %nouveau_connector_is_mst.exit

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

nouveau_connector_is_mst.exit:                    ; preds = %if.end.i
  %encoder_type.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp4.i = icmp eq i32 %10, 7
  br i1 %cmp4.i, label %nouveau_connector_is_mst.exit.if.end_crit_edge, label %nouveau_connector_is_mst.exit.if.else_crit_edge

nouveau_connector_is_mst.exit.if.else_crit_edge:  ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

nouveau_connector_is_mst.exit.if.end_crit_edge:   ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %nouveau_connector_is_mst.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %while.body.if.else_crit_edge
  %hpd = getelementptr inbounds %struct.nouveau_connector, ptr %call224, i32 0, i32 4
  %call5 = call i32 @nvif_notify_get(ptr noundef %hpd) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %nouveau_connector_is_mst.exit.if.end_crit_edge
  %call2 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #5
  %init = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 8
  %call8 = call i32 %12(ptr noundef %dev, i1 noundef zeroext %resume, i1 noundef zeroext %runtime) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_kms_helper_poll_enable(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %while.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #5
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_display_fini(ptr noundef %dev, i1 noundef zeroext %suspend, i1 noundef zeroext %runtime) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #5
  %4 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !73
  %5 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !73
  br i1 %suspend, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %10, 16
  %and2.i.i.i = and i32 %and.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

lor.rhs.i:                                        ; preds = %if.then
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %16, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then4_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then4_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then4:                                         ; preds = %drm_drv_uses_atomic_modeset.exit.if.then4_crit_edge, %if.then.if.then4_crit_edge
  tail call void @drm_atomic_helper_shutdown(ptr noundef %dev) #5
  br label %if.end6

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %call5 = tail call i32 @drm_helper_force_disable_all(ptr noundef %dev) #5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %entry.if.end6_crit_edge
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #5
  %call734 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool8.not35 = icmp eq ptr %call734, null
  br i1 %tobool8.not35, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end6.while.body_crit_edge
  %call736 = phi ptr [ %call7, %if.end14.while.body_crit_edge ], [ %call734, %if.end6.while.body_crit_edge ]
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call736, i32 0, i32 10
  %17 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connector_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 10
  br i1 %cmp.not.i, label %if.end.i, label %while.body.if.else11_crit_edge

while.body.if.else11_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else11

if.end.i:                                         ; preds = %while.body
  %call.i = call ptr @find_encoder(ptr noundef nonnull %call736, i32 noundef -1) #5
  %tobool.not.i31 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i31, label %if.end.i.if.else11_crit_edge, label %nouveau_connector_is_mst.exit

if.end.i.if.else11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else11

nouveau_connector_is_mst.exit:                    ; preds = %if.end.i
  %encoder_type.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp4.i = icmp eq i32 %20, 7
  br i1 %cmp4.i, label %nouveau_connector_is_mst.exit.if.end14_crit_edge, label %nouveau_connector_is_mst.exit.if.else11_crit_edge

nouveau_connector_is_mst.exit.if.else11_crit_edge: ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else11

nouveau_connector_is_mst.exit.if.end14_crit_edge: ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else11:                                        ; preds = %nouveau_connector_is_mst.exit.if.else11_crit_edge, %if.end.i.if.else11_crit_edge, %while.body.if.else11_crit_edge
  %hpd = getelementptr inbounds %struct.nouveau_connector, ptr %call736, i32 0, i32 4
  %call13 = call i32 @nvif_notify_put(ptr noundef %hpd) #5
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %nouveau_connector_is_mst.exit.if.end14_crit_edge
  %call7 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.end6.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #5
  br i1 %runtime, label %while.end.if.end18_crit_edge, label %if.then16

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20
  %call17 = call zeroext i1 @cancel_work_sync(ptr noundef %hpd_work) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %while.end.if.end18_crit_edge
  call void @drm_kms_helper_poll_disable(ptr noundef %dev) #5
  %fini = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fini, align 4
  call void %22(ptr noundef %dev, i1 noundef zeroext %runtime, i1 noundef zeroext %suspend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_force_disable_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.214, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #8
  %display = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %display, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %dev) #5
  %call5 = tail call i32 @drm_mode_create_scaling_mode_property(ptr noundef %dev) #5
  %call6 = tail call i32 @drm_mode_create_dvi_i_properties(ptr noundef %dev) #5
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nouveau_mode_config_funcs, ptr %funcs, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource_addr, align 4
  %call7 = tail call i32 %12(ptr noundef %5, i32 noundef 1) #5
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 28
  %13 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %fb_base, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %14 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %15 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %min_height, align 4
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp = icmp ult i8 %17, 2
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %18 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %max_width, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %cmp22 = icmp ult i8 %17, 6
  br i1 %cmp22, label %if.then24, label %if.else29

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %max_width26 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %19 = ptrtoint ptr %max_width26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %max_width26, align 4
  br label %if.end49

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %cmp35 = icmp eq i8 %17, 6
  %max_width39 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  br i1 %cmp35, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %max_width39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %max_width39, align 4
  br label %if.end49

if.else42:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %max_width39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16384, ptr %max_width39, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else42, %if.then37, %if.then24, %if.then14
  %.sink177 = phi i32 [ 4096, %if.then24 ], [ 16384, %if.else42 ], [ 8192, %if.then37 ], [ 2048, %if.then14 ]
  %max_height28 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %22 = ptrtoint ptr %max_height28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink177, ptr %max_height28, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 91
  %23 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 92
  %24 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %prefer_shadow, align 4
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %25 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %26)
  %cmp56 = icmp ugt i16 %26, 16
  %.sink = zext i1 %cmp56 to i8
  %27 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 96
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %27, align 1
  tail call void @drm_kms_helper_poll_init(ptr noundef %dev) #5
  tail call void @drm_kms_helper_poll_disable(ptr noundef %dev) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_modeset to i32))
  %29 = load i32, ptr @nouveau_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp64.not = icmp eq i32 %29, 2
  br i1 %cmp64.not, label %if.end49.if.end89_crit_edge, label %land.lhs.true

if.end49.if.end89_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end49
  %entries = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %30 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool66.not = icmp eq i32 %31, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end89_crit_edge, label %if.then67

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then67:                                        ; preds = %land.lhs.true
  %disp70 = getelementptr inbounds %struct.nouveau_display, ptr %call7.i.i, i32 0, i32 4
  %call71 = tail call i32 @nvif_disp_ctor(ptr noundef %device1, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %disp70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.then67.disp_create_err_crit_edge

if.then67.disp_create_err_crit_edge:              ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %disp_create_err

if.then74:                                        ; preds = %if.then67
  %32 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %display.i.i, align 4
  %oclass.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oclass.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %37)
  %cmp.i = icmp slt i32 %37, 20592
  call void @__sanitizer_cov_trace_const_cmp4(i32 36976, i32 %37)
  %cmp5.i = icmp slt i32 %37, 36976
  %..i = select i1 %cmp5.i, i32 1, i32 2
  %gen.0.i = select i1 %cmp.i, i32 0, i32 %..i
  %38 = lshr i32 7, %gen.0.i
  %39 = shl nuw nsw i32 %38, 1
  %spec.select.1.i = and i32 %39, 2
  %40 = lshr i32 1, %gen.0.i
  %41 = lshr i32 6, %gen.0.i
  %42 = and i32 %41, 1
  %reass.add.i = shl nuw nsw i32 %42, 1
  %43 = lshr i32 4, %gen.0.i
  %44 = and i32 %43, 1
  %spec.select.2.i = add nuw nsw i32 %44, %40
  %spec.select.4.i = add nuw nsw i32 %spec.select.2.i, %spec.select.1.i
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %reass.add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.5.i)
  %tobool13.not.i = icmp eq i32 %spec.select.5.i, 0
  br i1 %tobool13.not.i, label %if.then74.if.end35.i_crit_edge, label %if.then14.i

if.then74.if.end35.i_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then14.i:                                      ; preds = %if.then74
  %call15.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %spec.select.5.i) #5
  %dithering_mode.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 5
  %45 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call15.i, ptr %dithering_mode.i, align 8
  %tobool18.not203.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not203.i, label %if.then14.i.if.end35.i_crit_edge, label %if.end32.i

if.then14.i.if.end35.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.end32.i:                                       ; preds = %if.then14.i
  %shl25.i = shl nuw nsw i32 1, %gen.0.i
  %call31.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %call15.i, i64 noundef 34, ptr noundef nonnull @.str.14) #5
  %46 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool18.not.i, label %if.end32.i.if.end35.i_crit_edge, label %if.end32.1.i

if.end32.i.if.end35.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.end32.1.i:                                     ; preds = %if.end32.i
  %call31.1.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr.i, i64 noundef 0, ptr noundef nonnull @.str.15) #5
  %47 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.1.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.1.i = icmp eq ptr %.pr.1.i, null
  br i1 %tobool18.not.1.i, label %if.end32.1.i.if.end35.i_crit_edge, label %land.rhs.2.i

if.end32.1.i.if.end35.i_crit_edge:                ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

land.rhs.2.i:                                     ; preds = %if.end32.1.i
  br i1 %cmp.i, label %if.end32.2.i, label %land.rhs.2.i.land.rhs.3.i_crit_edge

land.rhs.2.i.land.rhs.3.i_crit_edge:              ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.3.i

if.end32.2.i:                                     ; preds = %land.rhs.2.i
  %call31.2.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr.1.i, i64 noundef 1, ptr noundef nonnull @.str.16) #5
  %48 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.2.pr.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.2.i = icmp eq ptr %.pr.2.pr.i, null
  br i1 %tobool18.not.2.i, label %if.end32.2.i.if.end35.i_crit_edge, label %if.end32.2.i.land.rhs.3.i_crit_edge

if.end32.2.i.land.rhs.3.i_crit_edge:              ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.3.i

if.end32.2.i.if.end35.i_crit_edge:                ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

land.rhs.3.i:                                     ; preds = %if.end32.2.i.land.rhs.3.i_crit_edge, %land.rhs.2.i.land.rhs.3.i_crit_edge
  %.pr.2215.i = phi ptr [ %.pr.2.pr.i, %if.end32.2.i.land.rhs.3.i_crit_edge ], [ %.pr.1.i, %land.rhs.2.i.land.rhs.3.i_crit_edge ]
  %and26.3.i = and i32 %shl25.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.3.i)
  %tobool27.not.3.i = icmp eq i32 %and26.3.i, 0
  br i1 %tobool27.not.3.i, label %if.end32.3.i, label %if.end32.3.thread.i

if.end32.3.i:                                     ; preds = %land.rhs.3.i
  %49 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.3.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.3.i = icmp eq ptr %.pr.3.i, null
  br i1 %tobool18.not.3.i, label %if.end32.3.i.if.end35.i_crit_edge, label %if.end32.3.i.land.rhs.5.i_crit_edge

if.end32.3.i.land.rhs.5.i_crit_edge:              ; preds = %if.end32.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.5.i

if.end32.3.i.if.end35.i_crit_edge:                ; preds = %if.end32.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.end32.3.thread.i:                              ; preds = %land.rhs.3.i
  %call31.3.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr.2215.i, i64 noundef 25, ptr noundef nonnull @.str.17) #5
  %50 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.3216.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.3217.i = icmp eq ptr %.pr.3216.i, null
  br i1 %tobool18.not.3217.i, label %if.end32.3.thread.i.if.end35.i_crit_edge, label %if.end32.4.i

if.end32.3.thread.i.if.end35.i_crit_edge:         ; preds = %if.end32.3.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.end32.4.i:                                     ; preds = %if.end32.3.thread.i
  %call31.4.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr.3216.i, i64 noundef 17, ptr noundef nonnull @.str.18) #5
  %51 = ptrtoint ptr %dithering_mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.4.pr.i = load ptr, ptr %dithering_mode.i, align 8
  %tobool18.not.4.i = icmp eq ptr %.pr.4.pr.i, null
  br i1 %tobool18.not.4.i, label %if.end32.4.i.if.end35.i_crit_edge, label %if.end32.4.i.land.rhs.5.i_crit_edge

if.end32.4.i.land.rhs.5.i_crit_edge:              ; preds = %if.end32.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.5.i

if.end32.4.i.if.end35.i_crit_edge:                ; preds = %if.end32.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

land.rhs.5.i:                                     ; preds = %if.end32.4.i.land.rhs.5.i_crit_edge, %if.end32.3.i.land.rhs.5.i_crit_edge
  %.pr.4223.i = phi ptr [ %.pr.4.pr.i, %if.end32.4.i.land.rhs.5.i_crit_edge ], [ %.pr.3.i, %if.end32.3.i.land.rhs.5.i_crit_edge ]
  br i1 %cmp5.i, label %land.rhs.5.i.if.end35.i_crit_edge, label %if.then28.5.i

land.rhs.5.i.if.end35.i_crit_edge:                ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then28.5.i:                                    ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.5.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr.4223.i, i64 noundef 33, ptr noundef nonnull @.str.19) #5
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.5.i, %land.rhs.5.i.if.end35.i_crit_edge, %if.end32.4.i.if.end35.i_crit_edge, %if.end32.3.thread.i.if.end35.i_crit_edge, %if.end32.3.i.if.end35.i_crit_edge, %if.end32.2.i.if.end35.i_crit_edge, %if.end32.1.i.if.end35.i_crit_edge, %if.end32.i.if.end35.i_crit_edge, %if.then14.i.if.end35.i_crit_edge, %if.then74.if.end35.i_crit_edge
  %spec.select197.2.i = mul nuw nsw i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool53.not.i = icmp eq i32 %42, 0
  br i1 %tobool53.not.i, label %if.end35.i.if.end125.i_crit_edge, label %if.then54.i

if.end35.i.if.end125.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

if.then54.i:                                      ; preds = %if.end35.i
  %call55.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull @.str.8, i32 noundef %spec.select197.2.i) #5
  %dithering_depth.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 6
  %52 = ptrtoint ptr %dithering_depth.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call55.i, ptr %dithering_depth.i, align 4
  %tobool58.not207.i = icmp eq ptr %call55.i, null
  br i1 %tobool58.not207.i, label %if.then54.i.if.then100.i_crit_edge, label %land.rhs59.lr.ph.i

if.then54.i.if.then100.i_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100.i

land.rhs59.lr.ph.i:                               ; preds = %if.then54.i
  %shl67.i = shl nuw nsw i32 1, %gen.0.i
  %and68.i = and i32 %shl67.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %land.rhs59.lr.ph.i.if.then100.i_crit_edge, label %if.end76.thread.i

land.rhs59.lr.ph.i.if.then100.i_crit_edge:        ; preds = %land.rhs59.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100.i

if.end76.thread.i:                                ; preds = %land.rhs59.lr.ph.i
  %call75.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %call55.i, i64 noundef 3, ptr noundef nonnull @.str.14) #5
  %53 = ptrtoint ptr %dithering_depth.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr199224.i = load ptr, ptr %dithering_depth.i, align 4
  %tobool58.not225.i = icmp eq ptr %.pr199224.i, null
  br i1 %tobool58.not225.i, label %if.end76.thread.i.if.then100.i_crit_edge, label %if.end76.1.i

if.end76.thread.i.if.then100.i_crit_edge:         ; preds = %if.end76.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100.i

if.end76.1.i:                                     ; preds = %if.end76.thread.i
  %call75.1.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr199224.i, i64 noundef 0, ptr noundef nonnull @.str.20) #5
  %54 = ptrtoint ptr %dithering_depth.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr199.1.pr.i = load ptr, ptr %dithering_depth.i, align 4
  %tobool58.not.1.i = icmp eq ptr %.pr199.1.pr.i, null
  br i1 %tobool58.not.1.i, label %if.end76.1.i.if.then100.i_crit_edge, label %if.end76.2.i

if.end76.1.i.if.then100.i_crit_edge:              ; preds = %if.end76.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100.i

if.end76.2.i:                                     ; preds = %if.end76.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call75.2.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr199.1.pr.i, i64 noundef 2, ptr noundef nonnull @.str.21) #5
  br label %if.then100.i

if.then100.i:                                     ; preds = %if.end76.2.i, %if.end76.1.i.if.then100.i_crit_edge, %if.end76.thread.i.if.then100.i_crit_edge, %land.rhs59.lr.ph.i.if.then100.i_crit_edge, %if.then54.i.if.then100.i_crit_edge
  %call101.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %spec.select197.2.i) #5
  %underscan_property.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 7
  %55 = ptrtoint ptr %underscan_property.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call101.i, ptr %underscan_property.i, align 8
  %tobool104.not211.i = icmp eq ptr %call101.i, null
  br i1 %tobool104.not211.i, label %if.then100.i.if.end125.i_crit_edge, label %land.rhs105.lr.ph.i

if.then100.i.if.end125.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

land.rhs105.lr.ph.i:                              ; preds = %if.then100.i
  %shl113.i = shl nuw nsw i32 1, %gen.0.i
  %and114.i = and i32 %shl113.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %land.rhs105.lr.ph.i.if.end125.i_crit_edge, label %if.end122.thread.i

land.rhs105.lr.ph.i.if.end125.i_crit_edge:        ; preds = %land.rhs105.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

if.end122.thread.i:                               ; preds = %land.rhs105.lr.ph.i
  %call121.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %call101.i, i64 noundef 2, ptr noundef nonnull @.str.14) #5
  %56 = ptrtoint ptr %underscan_property.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr200236.i = load ptr, ptr %underscan_property.i, align 8
  %tobool104.not237.i = icmp eq ptr %.pr200236.i, null
  br i1 %tobool104.not237.i, label %if.end122.thread.i.if.end125.i_crit_edge, label %if.end122.1.i

if.end122.thread.i.if.end125.i_crit_edge:         ; preds = %if.end122.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

if.end122.1.i:                                    ; preds = %if.end122.thread.i
  %call121.1.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr200236.i, i64 noundef 0, ptr noundef nonnull @.str.15) #5
  %57 = ptrtoint ptr %underscan_property.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr200.1.pr.i = load ptr, ptr %underscan_property.i, align 8
  %tobool104.not.1.i = icmp eq ptr %.pr200.1.pr.i, null
  br i1 %tobool104.not.1.i, label %if.end122.1.i.if.end125.i_crit_edge, label %if.end122.2.i

if.end122.1.i.if.end125.i_crit_edge:              ; preds = %if.end122.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

if.end122.2.i:                                    ; preds = %if.end122.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call121.2.i = tail call i32 @drm_property_add_enum(ptr noundef nonnull %.pr200.1.pr.i, i64 noundef 1, ptr noundef nonnull @.str.16) #5
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.end122.2.i, %if.end122.1.i.if.end125.i_crit_edge, %if.end122.thread.i.if.end125.i_crit_edge, %land.rhs105.lr.ph.i.if.end125.i_crit_edge, %if.then100.i.if.end125.i_crit_edge, %if.end35.i.if.end125.i_crit_edge
  %call128.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 128) #5
  %underscan_hborder_property.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 8
  %58 = ptrtoint ptr %underscan_hborder_property.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call128.i, ptr %underscan_hborder_property.i, align 4
  %call129.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 128) #5
  %underscan_vborder_property.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 9
  %59 = ptrtoint ptr %underscan_vborder_property.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call129.i, ptr %underscan_vborder_property.i, align 8
  br i1 %cmp.i, label %if.end125.i.nouveau_display_create_properties.exit_crit_edge, label %if.end133.i

if.end125.i.nouveau_display_create_properties.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_display_create_properties.exit

if.end133.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call134.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 0, i64 noundef 180) #5
  %vibrant_hue_property.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 10
  %60 = ptrtoint ptr %vibrant_hue_property.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call134.i, ptr %vibrant_hue_property.i, align 4
  %call135.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 0, i64 noundef 200) #5
  %color_vibrance_property.i = getelementptr inbounds %struct.nouveau_display, ptr %35, i32 0, i32 11
  %61 = ptrtoint ptr %color_vibrance_property.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call135.i, ptr %color_vibrance_property.i, align 8
  br label %nouveau_display_create_properties.exit

nouveau_display_create_properties.exit:           ; preds = %if.end133.i, %if.end125.i.nouveau_display_create_properties.exit_crit_edge
  %oclass = getelementptr inbounds %struct.nouveau_display, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %62 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %63)
  %cmp77 = icmp slt i32 %63, 20592
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %nouveau_display_create_properties.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call80 = tail call i32 @nv04_display_create(ptr noundef %dev) #5
  br label %if.end86

if.else81:                                        ; preds = %nouveau_display_create_properties.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = tail call i32 @nv50_display_create(ptr noundef %dev) #5
  br label %if.end86

if.end86:                                         ; preds = %if.else81, %if.then79
  %ret.0 = phi i32 [ %call80, %if.then79 ], [ %call82, %if.else81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool87.not = icmp eq i32 %ret.0, 0
  br i1 %tobool87.not, label %if.end86.if.end89_crit_edge, label %if.end86.disp_create_err_crit_edge

if.end86.disp_create_err_crit_edge:               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %disp_create_err

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.end89:                                         ; preds = %if.end86.if.end89_crit_edge, %land.lhs.true.if.end89_crit_edge, %if.end49.if.end89_crit_edge
  tail call void @drm_mode_config_reset(ptr noundef %dev) #5
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %64 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool91.not = icmp eq i32 %65, 0
  br i1 %tobool91.not, label %if.end89.do.body_crit_edge, label %if.then92

if.end89.do.body_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then92:                                        ; preds = %if.end89
  %call95 = tail call i32 @drm_vblank_init(ptr noundef %dev, i32 noundef %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %vblank_err

if.end98:                                         ; preds = %if.then92
  %oclass101 = getelementptr inbounds %struct.nouveau_display, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %66 = ptrtoint ptr %oclass101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %oclass101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20591, i32 %67)
  %cmp102 = icmp sgt i32 %67, 20591
  br i1 %cmp102, label %if.then104, label %if.end98.do.body_crit_edge

if.end98.do.body_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nv50_crc_init(ptr noundef %dev) #5
  br label %do.body

do.body:                                          ; preds = %if.then104, %if.end98.do.body_crit_edge, %if.end89.do.body_crit_edge
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20
  tail call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #5
  %68 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %hpd_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @nouveau_display_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry110 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20, i32 1
  %69 = ptrtoint ptr %entry110 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry110, ptr %entry110, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry110, ptr %prev.i, align 4
  %func112 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20, i32 2
  %71 = ptrtoint ptr %func112 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nouveau_display_hpd_work, ptr %func112, align 4
  %hpd_lock = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %hpd_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @nouveau_display_create.__key.4) #5
  br label %cleanup

vblank_err:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %dtor = getelementptr inbounds %struct.nouveau_display, ptr %call7.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %dtor to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dtor, align 4
  tail call void %73(ptr noundef %dev) #5
  br label %disp_create_err

disp_create_err:                                  ; preds = %vblank_err, %if.end86.disp_create_err_crit_edge, %if.then67.disp_create_err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end86.disp_create_err_crit_edge ], [ %call95, %vblank_err ], [ %call71, %if.then67.disp_create_err_crit_edge ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %dev) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %disp_create_err, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %disp_create_err ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_scaling_mode_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_dvi_i_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_disp_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_display_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_display_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_display_hpd_work(ptr noundef %work) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 -4312
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #5
  %2 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !73
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !73
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  %hpd_lock = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %hpd_lock, i32 noundef 0) #5
  %hpd_pending = getelementptr i8, ptr %work, i32 136
  %7 = ptrtoint ptr %hpd_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hpd_pending, align 8
  store i32 0, ptr %hpd_pending, align 8
  tail call void @mutex_unlock(ptr noundef %hpd_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.noop_crit_edge, label %if.end

entry.noop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %noop

if.end:                                           ; preds = %entry
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #5
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %conn_iter) #5
  %call57680 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool6.not7781 = icmp eq ptr %call57680, null
  br i1 %tobool6.not7781, label %if.end30.critedge, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %tobool18.not = icmp eq ptr %1, null
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end25.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %call57683 = phi ptr [ %call57680, %while.body.lr.ph.lr.ph ], [ %call576, %if.end25.while.body.lr.ph_crit_edge ]
  %changed.0.off0.ph82 = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ %changed.2.off0, %if.end25.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call578 = phi ptr [ %call57683, %while.body.lr.ph ], [ %call5, %cleanup.while.body_crit_edge ]
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 10
  %9 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 10
  br i1 %cmp.not.i, label %if.end.i, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %while.body
  %call.i66 = call ptr @find_encoder(ptr noundef nonnull %call578, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i66, null
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %nouveau_connector_is_mst.exit

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

nouveau_connector_is_mst.exit:                    ; preds = %if.end.i
  %encoder_type.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i66, i32 0, i32 4
  %11 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp4.i = icmp eq i32 %12, 7
  br i1 %cmp4.i, label %nouveau_connector_is_mst.exit.if.end25_crit_edge, label %nouveau_connector_is_mst.exit.if.else_crit_edge

nouveau_connector_is_mst.exit.if.else_crit_edge:  ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

nouveau_connector_is_mst.exit.if.end25_crit_edge: ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else:                                          ; preds = %nouveau_connector_is_mst.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %while.body.if.else_crit_edge
  %index.i = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 9
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %14
  %and = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %epoch_counter = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 39
  %15 = ptrtoint ptr %epoch_counter to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %epoch_counter, align 8
  %status = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 18
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 8
  %call13 = call i32 @drm_helper_probe_detect(ptr noundef nonnull %call578, ptr noundef null, i1 noundef zeroext false) #5
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call13, ptr %status, align 8
  %20 = ptrtoint ptr %epoch_counter to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %epoch_counter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %21)
  %cmp = icmp eq i64 %16, %21
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %status.le = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 18
  br i1 %tobool18.not, label %if.end17.cleanup.thread_crit_edge, label %cond.true

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cond.true:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.true, %if.end17.cleanup.thread_crit_edge
  %cond = phi ptr [ %23, %cond.true ], [ null, %if.end17.cleanup.thread_crit_edge ]
  %base = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 6
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_connector, ptr %call578, i32 0, i32 7
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call20 = call ptr @drm_get_connector_status_name(i32 noundef %18) #5
  %28 = ptrtoint ptr %status.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status.le, align 8
  %call22 = call ptr @drm_get_connector_status_name(i32 noundef %29) #5
  %30 = ptrtoint ptr %epoch_counter to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %epoch_counter, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %25, ptr noundef %27, ptr noundef %call20, ptr noundef %call22, i64 noundef %16, i64 noundef %31) #5
  br label %if.end25

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %call5 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end25:                                         ; preds = %cleanup.thread, %nouveau_connector_is_mst.exit.if.end25_crit_edge
  %changed.2.off0 = phi i1 [ true, %cleanup.thread ], [ %changed.0.off0.ph82, %nouveau_connector_is_mst.exit.if.end25_crit_edge ]
  %call576 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool6.not77 = icmp eq ptr %call576, null
  br i1 %tobool6.not77, label %if.end25.while.end_crit_edge, label %if.end25.while.body.lr.ph_crit_edge

if.end25.while.body.lr.ph_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %cleanup.while.end_crit_edge
  %changed.0.off0.ph.lcssa = phi i1 [ %changed.0.off0.ph82, %cleanup.while.end_crit_edge ], [ %changed.2.off0, %if.end25.while.end_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #5
  call void @mutex_unlock(ptr noundef %mode_config) #5
  br i1 %changed.0.off0.ph.lcssa, label %if.then29, label %while.end.if.end30_crit_edge

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_kms_helper_hotplug_event(ptr noundef %1) #5
  br label %if.end30

if.end30.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #5
  call void @mutex_unlock(ptr noundef %mode_config) #5
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %if.then29, %while.end.if.end30_crit_edge
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 8
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev32, align 4
  %call.i67 = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 12, i32 22
  %36 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i67, ptr %last_busy.i, align 8
  br label %noop

noop:                                             ; preds = %if.end30, %entry.noop_crit_edge
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 8
  %dev34 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev34, align 4
  %call.i68 = call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_display_destroy(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %dev) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %dev) #5
  %dtor = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dtor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtor, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disp3 = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 4
  tail call void @nvif_disp_dtor(ptr noundef %disp3) #5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %display = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %display, align 4
  %hpd_lock = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 21
  tail call void @mutex_destroy(ptr noundef %hpd_lock) #5
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_disp_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_suspend(ptr noundef %dev, i1 noundef zeroext %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %7, 16
  %and2.i.i.i = and i32 %and.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.drm_drv_uses_atomic_modeset.exit_crit_edge

entry.drm_drv_uses_atomic_modeset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.end11_crit_edge, label %land.rhs.i

lor.rhs.i.if.end11_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i = icmp eq ptr %13, null
  br label %drm_drv_uses_atomic_modeset.exit

drm_drv_uses_atomic_modeset.exit:                 ; preds = %land.rhs.i, %entry.drm_drv_uses_atomic_modeset.exit_crit_edge
  %14 = phi i1 [ false, %entry.drm_drv_uses_atomic_modeset.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  %brmerge = or i1 %14, %runtime
  br i1 %brmerge, label %drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge, label %if.then2

drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then2:                                         ; preds = %drm_drv_uses_atomic_modeset.exit
  %call3 = tail call ptr @drm_atomic_helper_suspend(ptr noundef %dev) #5
  %suspend = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %suspend, align 4
  %cmp.i20 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %if.then6, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call3 to i32
  %17 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %suspend, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then2.if.end11_crit_edge, %drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge, %lor.rhs.i.if.end11_crit_edge
  tail call void @nouveau_display_fini(ptr noundef %dev, i1 noundef zeroext true, i1 noundef zeroext %runtime)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %16, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_display_resume(ptr noundef %dev, i1 noundef zeroext %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  %call1 = tail call i32 @nouveau_display_init(ptr noundef %dev, i1 noundef zeroext true, i1 noundef zeroext %runtime)
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %7, 16
  %and2.i.i.i = and i32 %and.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %lor.rhs.i.cleanup_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %13, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %suspend = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @drm_atomic_helper_resume(ptr noundef %dev, ptr noundef nonnull %15) #5
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_dumb_create(ptr noundef %file_priv, ptr nocapture noundef readonly %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #5
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !73
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bpp, align 8
  %div45 = lshr i32 %6, 3
  %mul = mul i32 %div45, %4
  %add = add i32 %mul, 255
  %div146 = and i32 %add, -256
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %7 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div146, ptr %pitch, align 4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 8
  %mul4 = mul i32 %div146, %9
  %conv = zext i32 %mul4 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %add10 = add nuw nsw i64 %conv, 4095
  %div1247 = and i64 %add10, 8589930496
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %div1247, ptr %size, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i, align 4
  %ram_size = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3, i32 1, i32 6
  %13 = ptrtoint ptr %ram_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.not = icmp eq i64 %14, 0
  %. = select i1 %cmp.not, i32 4, i32 2
  %call19 = call i32 @nouveau_gem_new(ptr noundef %cond.i, i64 noundef %div1247, i32 noundef 0, i32 noundef %., i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %nouveau_cli.exit
  %15 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo, align 4
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call23 = call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %16, ptr noundef %handle) #5
  %17 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bo, align 4
  %tobool.not.i48 = icmp eq ptr %18, null
  br i1 %tobool.not.i48, label %if.end21.cleanup_crit_edge, label %if.then.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end21
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #5
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  call void @drm_gem_object_free(ptr noundef nonnull %18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %nouveau_cli.exit.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call23, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call23, %if.then10.i.i.i.i.i.i ], [ %call23, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_property_add_enum(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_detect(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_status_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 325, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 334, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 707, i32 45}
!6 = !{ptr @nouveau_display_create.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 734, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nouveau_display_create.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 735, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"legacy_modifiers", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 185, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 289, i32 2}
!16 = distinct !{null, !17, !"log_block_width", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 235, i32 24}
!18 = !{ptr @nouveau_framebuffer_funcs, !19, !"nouveau_framebuffer_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 131, i32 43}
!20 = !{ptr @nouveau_mode_config_funcs, !21, !"nouveau_mode_config_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 398, i32 43}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 636, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 637, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 638, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 641, i32 37}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 644, i32 37}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 651, i32 37}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 655, i32 37}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 418, i32 28}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 419, i32 27}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 420, i32 26}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 421, i32 33}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 422, i32 34}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 423, i32 32}
!48 = distinct !{null, !49, !"dither_mode", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 417, i32 42}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 429, i32 29}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 430, i32 29}
!54 = distinct !{null, !55, !"dither_depth", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 427, i32 42}
!56 = distinct !{null, !57, !"underscan", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 410, i32 42}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nouveau_display.c", i32 503, i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2158048710, i64 2158049216, i64 2158048747, i64 2158048803, i64 2158048837, i64 2158048861, i64 2158048902, i64 2158048923, i64 2158048951, i64 2158048985}
!71 = !{i64 2158057956, i64 2158058462, i64 2158057993, i64 2158058049, i64 2158058083, i64 2158058107, i64 2158058148, i64 2158058169, i64 2158058197, i64 2158058231}
!72 = !{i64 2158062504, i64 2158063010, i64 2158062541, i64 2158062597, i64 2158062631, i64 2158062655, i64 2158062696, i64 2158062717, i64 2158062745, i64 2158062779}
!73 = !{!"auto-init"}
!74 = !{i64 2148544824}
!75 = !{i64 2148459276, i64 2148459308, i64 2148459337, i64 2148459371, i64 2148459402, i64 2148459425}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2150192975}
