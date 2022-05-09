; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_fbcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.79 }
%union.anon.79 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.90, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.97, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.90 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.97 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.102, %struct.anon.103, %struct.anon.108, ptr, %struct.anon.109, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.110, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.122 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.102 = type { ptr, i32, i32, i8 }
%struct.anon.103 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.104] }
%struct.anon.104 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.108 = type { i64, i64 }
%struct.anon.109 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.98 }
%struct.anon.98 = type { ptr, i64 }
%struct.anon.110 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.117, %struct.anon.118, %struct.anon.119, %struct.anon.120 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.111, i8 }
%union.anon.111 = type { %struct.anon.115 }
%struct.anon.115 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.117 = type { i32 }
%struct.anon.118 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.119 = type { i16, i16 }
%struct.anon.120 = type { i16, i16, i16, %struct.anon.121, i16 }
%struct.anon.121 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, %struct.mutex, i8 }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.95, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_channel = type { %struct.anon.105, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.106, i8, ptr, %struct.anon.107, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.105 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.106 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.107 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_nofbaccel323 = internal constant [50 x i8] c"nouveau.parm=nofbaccel:Disable fbcon acceleration\00", section ".modinfo", align 1
@nouveau_nofbaccel = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_nofbaccel = internal constant [18 x i8] c"nouveau.nofbaccel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nofbaccel = internal constant %struct.kernel_param { ptr @__param_str_nofbaccel, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.79 { ptr @nouveau_nofbaccel } }, section "__param", align 4
@__UNIQUE_ID_nofbacceltype324 = internal constant [31 x i8] c"nouveau.parmtype=nofbaccel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fbcon_bpp325 = internal constant [60 x i8] c"nouveau.parm=fbcon_bpp:fbcon bits-per-pixel (default: auto)\00", section ".modinfo", align 1
@__param_str_fbcon_bpp = internal constant [18 x i8] c"nouveau.fbcon_bpp\00", align 1
@nouveau_fbcon_bpp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fbcon_bpp = internal constant %struct.kernel_param { ptr @__param_str_fbcon_bpp, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.79 { ptr @nouveau_fbcon_bpp } }, section "__param", align 4
@__UNIQUE_ID_fbcon_bpptype326 = internal constant [31 x i8] c"nouveau.parmtype=fbcon_bpp:int\00", section ".modinfo", align 1
@nouveau_fbcon_gpu_lockup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: GPU lockup - switching to software fbcon\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nouveau_fbcon_gpu_lockup\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_fbcon.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_fbcon_gpu_lockup._entry_ptr = internal global ptr @nouveau_fbcon_gpu_lockup._entry, section ".printk_index", align 4
@nouveau_fbcon_output_poll_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 514, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: fbcon HPD event deferred until runtime resume\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nouveau_fbcon_output_poll_changed\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nouveau_fbcon_output_poll_changed._entry_ptr = internal global ptr @nouveau_fbcon_output_poll_changed._entry, section ".printk_index", align 4
@nouveau_fbcon_output_poll_changed._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014[drm] fbcon HPD event lost due to RPM failure: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nouveau_fbcon_output_poll_changed._entry_ptr.10 = internal global ptr @nouveau_fbcon_output_poll_changed._entry.8, section ".printk_index", align 4
@nouveau_fbcon_hotplug_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 538, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Handling deferred fbcon HPD events\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nouveau_fbcon_hotplug_resume\00", [35 x i8] zeroinitializer }, align 32
@nouveau_fbcon_hotplug_resume._entry_ptr = internal global ptr @nouveau_fbcon_hotplug_resume._entry, section ".printk_index", align 4
@nouveau_fbcon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&drm->fbcon_work)\00", [60 x i8] zeroinitializer }, align 32
@nouveau_fbcon_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&fbcon->hotplug_lock\00", [43 x i8] zeroinitializer }, align 32
@nouveau_fbcon_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @nouveau_fbcon_create }, [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nouveau_fbcon_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 336, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to allocate framebuffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nouveau_fbcon_create\00", [43 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry_ptr = internal global ptr @nouveau_fbcon_create._entry, section ".printk_index", align 4
@nouveau_fbcon_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to pin fb: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry_ptr.20 = internal global ptr @nouveau_fbcon_create._entry.18, section ".printk_index", align 4
@nouveau_fbcon_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to map fb: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry_ptr.23 = internal global ptr @nouveau_fbcon_create._entry.21, section ".printk_index", align 4
@nouveau_fbcon_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to map fb into chan: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry_ptr.26 = internal global ptr @nouveau_fbcon_create._entry.24, section ".printk_index", align 4
@nouveau_fbcon_sw_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @nouveau_fbcon_open, ptr @nouveau_fbcon_release, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 397, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: allocated %dx%d fb: 0x%llx, bo %p\0A\00", [57 x i8] zeroinitializer }, align 32
@nouveau_fbcon_create._entry_ptr.29 = internal global ptr @nouveau_fbcon_create._entry.27, section ".printk_index", align 4
@nvbo_kmap_obj_iovirtual.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo.h\00", [59 x i8] zeroinitializer }, align 32
@nouveau_fbcon_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @nouveau_fbcon_open, ptr @nouveau_fbcon_release, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @nouveau_fbcon_fillrect, ptr @nouveau_fbcon_copyarea, ptr @nouveau_fbcon_imageblit, ptr null, ptr @nouveau_fbcon_sync, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967283]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"nouveau_nofbaccel\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 56, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"nouveau_fbcon_bpp\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 60, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 441, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 514, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 518, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 538, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 561, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 562, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"nouveau_fbcon_helper_funcs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 445, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 336, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 346, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 352, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 360, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"nouveau_fbcon_sw_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 219, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 396, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [40 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 106, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"nouveau_fbcon_ops\00", align 1
@___asan_gen_.141 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nouveau_fbcon.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 208, i32 28 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_fbcon_bpp325, ptr @__UNIQUE_ID_fbcon_bpptype326, ptr @__UNIQUE_ID_nofbaccel323, ptr @__UNIQUE_ID_nofbacceltype324, ptr @__param_fbcon_bpp, ptr @__param_nofbaccel, ptr @nouveau_fbcon_create._entry, ptr @nouveau_fbcon_create._entry.18, ptr @nouveau_fbcon_create._entry.21, ptr @nouveau_fbcon_create._entry.24, ptr @nouveau_fbcon_create._entry.27, ptr @nouveau_fbcon_create._entry_ptr, ptr @nouveau_fbcon_create._entry_ptr.20, ptr @nouveau_fbcon_create._entry_ptr.23, ptr @nouveau_fbcon_create._entry_ptr.26, ptr @nouveau_fbcon_create._entry_ptr.29, ptr @nouveau_fbcon_gpu_lockup._entry, ptr @nouveau_fbcon_gpu_lockup._entry_ptr, ptr @nouveau_fbcon_hotplug_resume._entry, ptr @nouveau_fbcon_hotplug_resume._entry_ptr, ptr @nouveau_fbcon_output_poll_changed._entry, ptr @nouveau_fbcon_output_poll_changed._entry.8, ptr @nouveau_fbcon_output_poll_changed._entry_ptr, ptr @nouveau_fbcon_output_poll_changed._entry_ptr.10, ptr @nouveau_nofbaccel, ptr @nouveau_fbcon_bpp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @nouveau_fbcon_init.__key, ptr @.str.13, ptr @nouveau_fbcon_init.__key.14, ptr @.str.15, ptr @nouveau_fbcon_helper_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @nouveau_fbcon_sw_ops, ptr @.str.28, ptr @.str.30, ptr @nouveau_fbcon_ops], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_nofbaccel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_gpu_lockup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_output_poll_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_output_poll_changed._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_hotplug_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_sw_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fbcon_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_fbcon_accel_save_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fbdev = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdev, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %saved_flags = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %saved_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved_flags, align 8
  %9 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fbcon, align 4
  %fbdev9 = getelementptr inbounds %struct.drm_fb_helper, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %fbdev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbdev9, align 8
  %flags10 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags10, align 4
  %or = or i32 %14, 2
  store i32 %or, ptr %flags10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_fbcon_accel_restore(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fbdev = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdev, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %saved_flags = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %saved_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saved_flags, align 8
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_gpu_lockup(ptr nocapture noundef %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %drm2 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm2, align 8
  %dev3 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name) #12
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_set_suspend(ptr nocapture noundef readonly %dev, i32 noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fbcon_new_state = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %fbcon_new_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %fbcon_new_state, align 8
  %fbcon_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %fbcon_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_output_poll_changed(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hotplug_lock = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %hotplug_lock, i32 noundef 0) #9
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 5) #9
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end29 [
    i32 1, label %if.end.if.then5_crit_edge
    i32 -13, label %if.end.if.then5_crit_edge51
    i32 0, label %do.body
  ]

if.end.if.then5_crit_edge51:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge51
  %call6 = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %3) #9
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %call.i49 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i49, ptr %last_busy.i, align 8
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call.i50 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %if.end32

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %12 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.do.end23_crit_edge, label %do.body14

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %drm16 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %drm16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drm16, align 8
  %dev17 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 8
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef %name) #12
  br label %do.end23

do.end23:                                         ; preds = %do.body14, %do.body.do.end23_crit_edge
  %hotplug_waiting = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %hotplug_waiting to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hotplug_waiting, align 8
  %dev24 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev24, align 8
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev25, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end23.if.end32_crit_edge, label %do.end11.i.i.i.i

do.end23.if.end32_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end11.i.i.i.i:                                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %if.end32

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call.i) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.end11.i.i.i.i, %do.end23.if.end32_crit_edge, %if.then5
  tail call void @mutex_unlock(ptr noundef %hotplug_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_hotplug_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_hotplug_resume(ptr noundef %fbcon) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fbcon, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %fbcon, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %hotplug_lock = getelementptr inbounds %struct.nouveau_fbdev, ptr %fbcon, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %hotplug_lock, i32 noundef 0) #9
  %hotplug_waiting = getelementptr inbounds %struct.nouveau_fbdev, ptr %fbcon, i32 0, i32 11
  %4 = ptrtoint ptr %hotplug_waiting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hotplug_waiting, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %hotplug_waiting to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hotplug_waiting, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %7 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then2.do.end15_crit_edge, label %do.body6

if.then2.do.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.body6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %drm8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm8, align 8
  %dev9 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %name) #12
  br label %do.end15

do.end15:                                         ; preds = %do.body6, %if.then2.do.end15_crit_edge
  %call17 = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %fbcon) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %hotplug_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_fbcon_init(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %2 = load i32, ptr @nouveau_fbcon_bpp, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %3 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %class = getelementptr i8, ptr %6, i32 -96
  %7 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %class, align 8
  %shr.mask = and i32 %8, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 196608
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 848) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fbcon6 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %fbcon6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %fbcon6, align 4
  %fbcon_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23
  tail call void @__init_work(ptr noundef %fbcon_work, i32 noundef 0) #9
  %11 = ptrtoint ptr %fbcon_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %fbcon_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @nouveau_fbcon_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 23, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nouveau_fbcon_set_suspend_work, ptr %func, align 4
  %hotplug_lock = getelementptr inbounds %struct.nouveau_fbdev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %hotplug_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @nouveau_fbcon_init.__key.14) #9
  tail call void @drm_fb_helper_prepare(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nouveau_fbcon_helper_funcs) #9
  %call16 = tail call i32 @drm_fb_helper_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end5.free_crit_edge

if.end5.free_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end19:                                         ; preds = %if.end5
  %15 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %2, label %if.then24 [
    i32 8, label %if.end19.if.end36_crit_edge
    i32 16, label %if.end19.if.end36_crit_edge88
    i32 32, label %if.end19.if.end36_crit_edge89
  ]

if.end19.if.end36_crit_edge89:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end19.if.end36_crit_edge88:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then24:                                        ; preds = %if.end19
  %ram_size = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 6
  %16 = ptrtoint ptr %ram_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554433, i64 %17)
  %cmp25 = icmp ult i64 %17, 33554433
  br i1 %cmp25, label %if.then24.if.end36_crit_edge, label %if.else

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108865, i64 %17)
  %cmp31 = icmp ult i64 %17, 67108865
  %. = select i1 %cmp31, i32 16, i32 32
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then24.if.end36_crit_edge, %if.end19.if.end36_crit_edge, %if.end19.if.end36_crit_edge88, %if.end19.if.end36_crit_edge89
  %preferred_bpp.0 = phi i32 [ %2, %if.end19.if.end36_crit_edge ], [ 8, %if.then24.if.end36_crit_edge ], [ %., %if.else ], [ %2, %if.end19.if.end36_crit_edge88 ], [ %2, %if.end19.if.end36_crit_edge89 ]
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %22 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %21, 16
  %and2.i.i.i = and i32 %and.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.rhs.i:                                        ; preds = %if.end36
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %24 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.then38_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.then38_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %27, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.then38_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end39_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end39_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

drm_drv_uses_atomic_modeset.exit.if.then38_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.if.then38_crit_edge, %lor.rhs.i.if.then38_crit_edge
  tail call void @drm_helper_disable_unused_functions(ptr noundef %dev) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %drm_drv_uses_atomic_modeset.exit.if.end39_crit_edge, %if.end36.if.end39_crit_edge
  %call41 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %call7.i.i, i32 noundef %preferred_bpp.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %fini

if.end44:                                         ; preds = %if.end39
  %fbdev = getelementptr inbounds %struct.drm_fb_helper, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fbdev, align 8
  %tobool46.not = icmp eq ptr %29, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %29, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %buf_align, align 4
  br label %cleanup

fini:                                             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %call7.i.i) #9
  br label %free

free:                                             ; preds = %fini, %if.end5.free_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end5.free_crit_edge ], [ %call41, %fini ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %31 = ptrtoint ptr %fbcon6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fbcon6, align 4
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then47, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_fbcon_set_suspend_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_new_state = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %fbcon_new_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fbcon_new_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.then8

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %work, i32 -4452
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  tail call void @console_lock() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i, align 4
  %fbcon.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %fbcon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbcon.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.then12_crit_edge, label %land.lhs.true.i

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.i:                                  ; preds = %if.then
  %fbdev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %fbdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fbdev.i, align 8
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then12_crit_edge, label %if.then.i

land.lhs.true.i.if.then12_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %saved_flags.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_flags.i, align 8
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags.i, align 4
  br label %if.then12

if.then8:                                         ; preds = %entry
  tail call void @console_lock() #9
  %fbcon = getelementptr i8, ptr %work, i32 -1168
  %17 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbcon, align 4
  tail call void @drm_fb_helper_set_suspend(ptr noundef %18, i1 noundef zeroext true) #9
  %dev9 = getelementptr i8, ptr %work, i32 -4452
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 8
  %dev_private.i.i31 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i31, align 4
  %fbcon.i32 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %fbcon.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fbcon.i32, align 4
  %tobool.not.i33 = icmp eq ptr %24, null
  br i1 %tobool.not.i33, label %if.then8.if.end10.thread_crit_edge, label %land.lhs.true.i36

if.then8.if.end10.thread_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.thread

land.lhs.true.i36:                                ; preds = %if.then8
  %fbdev.i34 = getelementptr inbounds %struct.drm_fb_helper, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %fbdev.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fbdev.i34, align 8
  %tobool2.not.i35 = icmp eq ptr %26, null
  br i1 %tobool2.not.i35, label %land.lhs.true.i36.if.end10.thread_crit_edge, label %if.then.i39

land.lhs.true.i36.if.end10.thread_crit_edge:      ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.thread

if.then.i39:                                      ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i37 = getelementptr inbounds %struct.fb_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i37, align 4
  %saved_flags.i38 = getelementptr inbounds %struct.nouveau_fbdev, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %saved_flags.i38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %saved_flags.i38, align 8
  %30 = ptrtoint ptr %fbcon.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fbcon.i32, align 4
  %fbdev9.i = getelementptr inbounds %struct.drm_fb_helper, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %fbdev9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fbdev9.i, align 8
  %flags10.i = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags10.i, align 4
  %or.i = or i32 %35, 2
  store i32 %or.i, ptr %flags10.i, align 4
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.then.i39, %land.lhs.true.i36.if.end10.thread_crit_edge, %if.then8.if.end10.thread_crit_edge
  tail call void @console_unlock() #9
  br label %if.end19

if.then12:                                        ; preds = %if.then.i, %land.lhs.true.i.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %fbcon44 = getelementptr i8, ptr %work, i32 -1168
  %36 = ptrtoint ptr %fbcon44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fbcon44, align 4
  tail call void @drm_fb_helper_set_suspend(ptr noundef %37, i1 noundef zeroext false) #9
  tail call void @console_unlock() #9
  %38 = ptrtoint ptr %fbcon44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fbcon44, align 4
  %tobool.not.i40 = icmp eq ptr %39, null
  br i1 %tobool.not.i40, label %if.then12.nouveau_fbcon_hotplug_resume.exit_crit_edge, label %if.end.i

if.then12.nouveau_fbcon_hotplug_resume.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_fbcon_hotplug_resume.exit

if.end.i:                                         ; preds = %if.then12
  %dev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i41 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev_private.i.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i.i41, align 4
  %hotplug_lock.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %39, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %hotplug_lock.i, i32 noundef 0) #9
  %hotplug_waiting.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %39, i32 0, i32 11
  %44 = ptrtoint ptr %hotplug_waiting.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hotplug_waiting.i, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool1.not.i = icmp eq i8 %45, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then2.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then2.i:                                       ; preds = %if.end.i
  %46 = ptrtoint ptr %hotplug_waiting.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %hotplug_waiting.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %47 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then2.i.do.end15.i_crit_edge, label %do.body6.i

if.then2.i.do.end15.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

do.body6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %drm8.i = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %drm8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %drm8.i, align 8
  %dev9.i = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev9.i, align 8
  %dev10.i = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev10.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.11, ptr noundef %name.i) #12
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.body6.i, %if.then2.i.do.end15.i_crit_edge
  %call17.i = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %39) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end15.i, %if.end.i.if.end18.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %hotplug_lock.i) #9
  br label %nouveau_fbcon_hotplug_resume.exit

nouveau_fbcon_hotplug_resume.exit:                ; preds = %if.end18.i, %if.then12.nouveau_fbcon_hotplug_resume.exit_crit_edge
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev15, align 4
  %call.i42 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i42, ptr %last_busy.i, align 8
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev17, align 4
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 4) #9
  br label %if.end19

if.end19:                                         ; preds = %nouveau_fbcon_hotplug_resume.exit, %if.end10.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_disable_unused_functions(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_fini(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %channel.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.nouveau_fbcon_accel_fini.exit_crit_edge, label %if.then.i

land.lhs.true.i.nouveau_fbcon_accel_fini.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_fbcon_accel_fini.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @console_lock() #9
  %fbdev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %fbdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbdev.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %9, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void @console_unlock() #9
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel.i, align 4
  %call8.i = tail call i32 @nouveau_channel_idle(ptr noundef %11) #9
  %twod.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 8
  tail call void @nvif_object_dtor(ptr noundef %twod.i) #9
  %blit.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 7
  tail call void @nvif_object_dtor(ptr noundef %blit.i) #9
  %gdi.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 6
  tail call void @nvif_object_dtor(ptr noundef %gdi.i) #9
  %patt.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 5
  tail call void @nvif_object_dtor(ptr noundef %patt.i) #9
  %rop.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 4
  tail call void @nvif_object_dtor(ptr noundef %rop.i) #9
  %clip.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 3
  tail call void @nvif_object_dtor(ptr noundef %clip.i) #9
  %surf2d.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 2
  tail call void @nvif_object_dtor(ptr noundef %surf2d.i) #9
  br label %nouveau_fbcon_accel_fini.exit

nouveau_fbcon_accel_fini.exit:                    ; preds = %if.end.i, %land.lhs.true.i.nouveau_fbcon_accel_fini.exit_crit_edge
  %12 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fbcon, align 4
  %fb1.i = getelementptr inbounds %struct.drm_fb_helper, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb1.i, align 4
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef %13) #9
  tail call void @drm_fb_helper_fini(ptr noundef %13) #9
  %tobool.not.i10 = icmp eq ptr %15, null
  br i1 %tobool.not.i10, label %nouveau_fbcon_accel_fini.exit.nouveau_fbcon_destroy.exit_crit_edge, label %land.lhs.true.i11

nouveau_fbcon_accel_fini.exit.nouveau_fbcon_destroy.exit_crit_edge: ; preds = %nouveau_fbcon_accel_fini.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_fbcon_destroy.exit

land.lhs.true.i11:                                ; preds = %nouveau_fbcon_accel_fini.exit
  %obj.i = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %obj.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %land.lhs.true.i11.nouveau_fbcon_destroy.exit_crit_edge, label %if.then.i12

land.lhs.true.i11.nouveau_fbcon_destroy.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_fbcon_destroy.exit

if.then.i12:                                      ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  %vma.i = getelementptr inbounds %struct.nouveau_fbdev, ptr %13, i32 0, i32 9
  tail call void @nouveau_vma_del(ptr noundef %vma.i) #9
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %17) #9
  %call7.i = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %17) #9
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i.i) #9
  br label %nouveau_fbcon_destroy.exit

nouveau_fbcon_destroy.exit:                       ; preds = %if.then.i12, %land.lhs.true.i11.nouveau_fbcon_destroy.exit_crit_edge, %nouveau_fbcon_accel_fini.exit.nouveau_fbcon_destroy.exit_crit_edge
  %18 = ptrtoint ptr %fbcon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fbcon, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %fbcon to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fbcon, align 4
  br label %cleanup

cleanup:                                          ; preds = %nouveau_fbcon_destroy.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_set_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_create(ptr noundef %helper, ptr noundef %sizes) #2 align 64 {
entry:
  %rect.i = alloca %struct.fb_fillrect, align 4
  %fb = alloca ptr, align 4
  %nvbo = alloca ptr, align 4
  %mode_cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb) #9
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fb, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvbo) #9
  %5 = ptrtoint ptr %nvbo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %nvbo, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd) #9
  %6 = call ptr @memset(ptr %mode_cmd, i32 0, i32 104)
  %surface_width = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %7 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %surface_width, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %surface_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %10 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %surface_height, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 8
  %surface_bpp = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %13 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %surface_bpp, align 4
  %shr = lshr i32 %14, 3
  %mul = mul i32 %shr, %8
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %add = add i32 %mul, 255
  %div204 = and i32 %add, -256
  %15 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div204, ptr %pitches, align 4
  %surface_depth = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %16 = ptrtoint ptr %surface_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %surface_depth, align 4
  %call12 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %14, i32 noundef %17) #9
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call12, ptr %pixel_format, align 4
  %mul17 = mul i32 %11, %div204
  %conv = zext i32 %mul17 to i64
  %call18 = call i32 @nouveau_gem_new(ptr noundef %client, i64 noundef %conv, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %nvbo) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm21 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %drm21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drm21, align 8
  %dev22 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 8
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nvbo, align 4
  %call26 = call i32 @nouveau_framebuffer_new(ptr noundef %1, ptr noundef nonnull %mode_cmd, ptr noundef %26, ptr noundef nonnull %fb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end.out_unref_crit_edge

if.end.out_unref_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unref

if.end29:                                         ; preds = %if.end
  %27 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nvbo, align 4
  %call30 = call i32 @nouveau_bo_pin(ptr noundef %28, i32 noundef 2, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end46, label %do.body33

do.body33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %drm39 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm39, align 8
  %dev40 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev40, align 8
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev41, align 4
  %name42 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.19, ptr noundef %name42, i32 noundef %call30) #12
  br label %out_unref

if.end46:                                         ; preds = %if.end29
  %35 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nvbo, align 4
  %call47 = call i32 @nouveau_bo_map(ptr noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end63, label %do.body50

do.body50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %drm56 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %drm56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drm56, align 8
  %dev57 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev57, align 8
  %dev58 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev58, align 4
  %name59 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.22, ptr noundef %name59, i32 noundef %call47) #12
  br label %out_unpin

if.end63:                                         ; preds = %if.end46
  %43 = load i32, ptr @nouveau_nofbaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool64.not = icmp eq i32 %43, 0
  br i1 %tobool64.not, label %cond.end, label %if.end63.if.end87_crit_edge

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

cond.end:                                         ; preds = %if.end63
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 13
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %channel, align 4
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %cond.end.if.end87_crit_edge, label %land.lhs.true

cond.end.if.end87_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %cond.end
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %46 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %47)
  %cmp = icmp ugt i8 %47, 5
  br i1 %cmp, label %if.then69, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then69:                                        ; preds = %land.lhs.true
  %48 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nvbo, align 4
  %vmm = getelementptr inbounds %struct.nouveau_channel, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vmm, align 8
  %vma = getelementptr inbounds %struct.nouveau_fbdev, ptr %helper, i32 0, i32 9
  %call70 = call i32 @nouveau_vma_new(ptr noundef %49, ptr noundef %51, ptr noundef %vma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.if.end87_crit_edge, label %do.body73

if.then69.if.end87_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.body73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %drm79 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %drm79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %drm79, align 8
  %dev80 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev80, align 8
  %dev81 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev81, align 4
  %name82 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.25, ptr noundef %name82, i32 noundef %call70) #12
  br label %if.end87

if.end87:                                         ; preds = %do.body73, %if.then69.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %cond.end.if.end87_crit_edge, %if.end63.if.end87_crit_edge
  %chan.0 = phi ptr [ null, %do.body73 ], [ %45, %if.then69.if.end87_crit_edge ], [ %45, %land.lhs.true.if.end87_crit_edge ], [ null, %cond.end.if.end87_crit_edge ], [ null, %if.end63.if.end87_crit_edge ]
  %call88 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %helper) #9
  %cmp.i = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end87
  %58 = ptrtoint ptr %call88 to i32
  %tobool137.not = icmp eq ptr %chan.0, null
  br i1 %tobool137.not, label %if.then90.if.end140_crit_edge, label %if.then138

if.then90.if.end140_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end92:                                         ; preds = %if.end87
  %59 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fb, align 4
  %fb94 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 2
  %61 = ptrtoint ptr %fb94 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %fb94, align 4
  %tobool95.not = icmp eq ptr %chan.0, null
  %spec.select = select i1 %tobool95.not, i32 2, i32 1792
  %62 = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select, ptr %62, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 20
  %64 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @nouveau_fbcon_sw_ops, ptr %fbops, align 4
  %65 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nvbo, align 4
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %resource, align 4
  %offset = getelementptr inbounds %struct.ttm_resource, ptr %68, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %smem_start, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %66, i32 0, i32 5
  %72 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size, align 8
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %smem_len, align 4
  %call103 = call fastcc ptr @nvbo_kmap_obj_iovirtual(ptr noundef %66)
  %75 = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 25
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call103, ptr %75, align 4
  %77 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nvbo, align 4
  %size106 = getelementptr inbounds %struct.drm_gem_object, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %size106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size106, align 8
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call88, i32 0, i32 26
  %81 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %screen_size, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call88, ptr noundef %helper, ptr noundef %sizes) #9
  br i1 %tobool95.not, label %if.end92.if.end110_crit_edge, label %if.then109

if.end92.if.end110_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then109:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nouveau_fbcon_accel_init(ptr noundef %1)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end92.if.end110_crit_edge
  %fbdev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 5
  %82 = ptrtoint ptr %fbdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fbdev.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rect.i) #9
  %84 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 1
  %85 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 2
  %86 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 3
  %87 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 4
  %88 = getelementptr inbounds %struct.fb_fillrect, ptr %rect.i, i32 0, i32 5
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %84, align 4
  %90 = ptrtoint ptr %rect.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %rect.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6, i32 2
  %91 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %xres_virtual.i, align 4
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %85, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6, i32 3
  %94 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %yres_virtual.i, align 4
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %86, align 4
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %87, align 4
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %88, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 20
  %99 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fbops.i, align 4
  %fb_fillrect.i = getelementptr inbounds %struct.fb_ops, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %fb_fillrect.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fb_fillrect.i, align 4
  call void %102(ptr noundef %83, ptr noundef nonnull %rect.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rect.i) #9
  %drm117 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %drm117 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %drm117, align 8
  %dev118 = getelementptr inbounds %struct.nouveau_drm, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev118, align 8
  %dev119 = getelementptr inbounds %struct.drm_device, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev119, align 4
  %name120 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %109 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fb, align 4
  %width122 = getelementptr inbounds %struct.drm_framebuffer, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %width122 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %width122, align 8
  %height123 = getelementptr inbounds %struct.drm_framebuffer, ptr %110, i32 0, i32 10
  %113 = ptrtoint ptr %height123 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %height123, align 4
  %115 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nvbo, align 4
  %offset124 = getelementptr inbounds %struct.nouveau_bo, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %offset124 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %offset124, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.28, ptr noundef %name120, i32 noundef %112, i32 noundef %114, i64 noundef %118, ptr noundef %116) #12
  br label %cleanup

if.then138:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %vma139 = getelementptr inbounds %struct.nouveau_fbdev, ptr %helper, i32 0, i32 9
  call void @nouveau_vma_del(ptr noundef %vma139) #9
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then90.if.end140_crit_edge
  %119 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nvbo, align 4
  call void @nouveau_bo_unmap(ptr noundef %120) #9
  br label %out_unpin

out_unpin:                                        ; preds = %if.end140, %do.body50
  %ret.0 = phi i32 [ %call47, %do.body50 ], [ %58, %if.end140 ]
  %121 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nvbo, align 4
  %call141 = call i32 @nouveau_bo_unpin(ptr noundef %122) #9
  br label %out_unref

out_unref:                                        ; preds = %out_unpin, %do.body33, %if.end.out_unref_crit_edge
  %ret.1 = phi i32 [ %call26, %if.end.out_unref_crit_edge ], [ %call30, %do.body33 ], [ %ret.0, %out_unpin ]
  %123 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %nvbo, align 4
  store ptr null, ptr %nvbo, align 4
  %tobool5.not.i = icmp eq ptr %124, null
  br i1 %tobool5.not.i, label %out_unref.cleanup_crit_edge, label %if.then6.i

out_unref.cleanup_crit_edge:                      ; preds = %out_unref
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i:                                       ; preds = %out_unref
  call void @__sanitizer_cov_trace_pc() #11
  call void @ttm_bo_put(ptr noundef nonnull %124) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %out_unref.cleanup_crit_edge, %if.end110, %do.body
  %retval.0 = phi i32 [ %call18, %do.body ], [ 0, %if.end110 ], [ %ret.1, %out_unref.cleanup_crit_edge ], [ %ret.1, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvbo) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_framebuffer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvbo_kmap_obj_iovirtual(ptr nocapture noundef readonly %nvbo) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  %bo_kmap_type.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bo_kmap_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_kmap_type.i, align 4
  %2 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmap, align 4
  %tobool.not = icmp ne ptr %3, null
  %4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %land.rhs5, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs5:                                        ; preds = %entry
  %.b43 = load i1, ptr @nvbo_kmap_obj_iovirtual.__already_done, align 1
  br i1 %.b43, label %land.rhs5.if.end32_crit_edge, label %if.then, !prof !90

land.rhs5.if.end32_crit_edge:                     ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nvbo_kmap_obj_iovirtual.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 106, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs5.if.end32_crit_edge, %entry.if.end32_crit_edge
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_fbcon_accel_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %fbcon1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fbcon1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon1, align 4
  %fbdev = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdev, align 8
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp ult i8 %7, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @nv04_fbcon_accel_init(ptr noundef %5) #9
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp10 = icmp eq i8 %7, 6
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @nv50_fbcon_accel_init(ptr noundef %5) #9
  br label %if.end16

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @nvc0_fbcon_accel_init(ptr noundef %5) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ %call13, %if.then12 ], [ %call15, %if.else14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp eq i32 %ret.0, 0
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %fbops = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nouveau_fbcon_ops, ptr %fbops, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %dev1 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_release(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %dev1 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_fillrect(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_copyarea(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_imageblit(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_fbcon_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %11, 15728640
  %12 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i59 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i59 to ptr
  %preempt_count.i60 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i60, align 4
  %and4 = and i32 %15, 983040
  %or = or i32 %and4, %and
  %16 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i61 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i61 to ptr
  %preempt_count.i62 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i62, align 4
  %and6 = and i32 %19, 65280
  %or7 = or i32 %or, %and6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or7)
  %tobool.not = icmp eq i32 %or7, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and8 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true10:                                  ; preds = %land.lhs.true
  %mutex = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 2
  %call12 = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true10.if.end41_crit_edge, label %if.then14

land.lhs.true10.if.end41_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then14:                                        ; preds = %land.lhs.true10
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp16 = icmp ult i8 %23, 6
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @nv04_fbcon_fillrect(ptr noundef %info, ptr noundef %rect) #9
  br label %if.end33

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp23 = icmp eq i8 %23, 6
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @nv50_fbcon_fillrect(ptr noundef %info, ptr noundef %rect) #9
  br label %if.end33

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @nvc0_fbcon_fillrect(ptr noundef %info, ptr noundef %rect) #9
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then25, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %24 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %ret.0, label %if.then40 [
    i32 0, label %if.end33.cleanup_crit_edge
    i32 -19, label %if.end33.if.end41_crit_edge
  ]

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %par, align 4
  %dev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i.i, align 4
  %drm2.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drm2.i, align 8
  %dev3.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3.i, align 8
  %dev4.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %name.i) #12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge, %land.lhs.true10.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  tail call void @drm_fb_helper_cfb_fillrect(ptr noundef %info, ptr noundef %rect) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_fbcon_copyarea(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %11, 15728640
  %12 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i59 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i59 to ptr
  %preempt_count.i60 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i60, align 4
  %and4 = and i32 %15, 983040
  %or = or i32 %and4, %and
  %16 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i61 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i61 to ptr
  %preempt_count.i62 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i62, align 4
  %and6 = and i32 %19, 65280
  %or7 = or i32 %or, %and6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or7)
  %tobool.not = icmp eq i32 %or7, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and8 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true10:                                  ; preds = %land.lhs.true
  %mutex = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 2
  %call12 = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true10.if.end41_crit_edge, label %if.then14

land.lhs.true10.if.end41_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then14:                                        ; preds = %land.lhs.true10
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp16 = icmp ult i8 %23, 6
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @nv04_fbcon_copyarea(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp23 = icmp eq i8 %23, 6
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @nv50_fbcon_copyarea(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @nvc0_fbcon_copyarea(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then25, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %24 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %ret.0, label %if.then40 [
    i32 0, label %if.end33.cleanup_crit_edge
    i32 -19, label %if.end33.if.end41_crit_edge
  ]

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %par, align 4
  %dev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i.i, align 4
  %drm2.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drm2.i, align 8
  %dev3.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3.i, align 8
  %dev4.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %name.i) #12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge, %land.lhs.true10.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  tail call void @drm_fb_helper_cfb_copyarea(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_fbcon_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %11, 15728640
  %12 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i59 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i59 to ptr
  %preempt_count.i60 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i60, align 4
  %and4 = and i32 %15, 983040
  %or = or i32 %and4, %and
  %16 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i61 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i61 to ptr
  %preempt_count.i62 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i62, align 4
  %and6 = and i32 %19, 65280
  %or7 = or i32 %or, %and6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or7)
  %tobool.not = icmp eq i32 %or7, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and8 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true10:                                  ; preds = %land.lhs.true
  %mutex = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 2
  %call12 = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true10.if.end41_crit_edge, label %if.then14

land.lhs.true10.if.end41_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then14:                                        ; preds = %land.lhs.true10
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp16 = icmp ult i8 %23, 6
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @nv04_fbcon_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp23 = icmp eq i8 %23, 6
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @nv50_fbcon_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @nvc0_fbcon_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then25, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %24 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %ret.0, label %if.then40 [
    i32 0, label %if.end33.cleanup_crit_edge
    i32 -19, label %if.end33.if.end41_crit_edge
  ]

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %par, align 4
  %dev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i.i, align 4
  %drm2.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drm2.i, align 8
  %dev3.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3.i, align 8
  %dev4.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %name.i) #12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge, %land.lhs.true10.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  tail call void @drm_fb_helper_cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_sync(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %accel_done = getelementptr inbounds %struct.nouveau_channel, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %accel_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %accel_done, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %13, 15728640
  %14 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i36 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i36 to ptr
  %preempt_count.i37 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i37, align 4
  %and5 = and i32 %17, 983040
  %or = or i32 %and5, %and
  %18 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i38 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i38 to ptr
  %preempt_count.i39 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i39, align 4
  %and7 = and i32 %21, 65280
  %or8 = or i32 %or, %and7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8)
  %tobool9.not = icmp eq i32 %or8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false2
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %lor.lhs.false11, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false10
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and12 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %mutex = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 2
  %call14 = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %7) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool21.not = icmp eq i32 %call18, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %info)
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %accel_done to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %accel_done, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.end.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__UNIQUE_ID_nofbaccel323, !1, !"__UNIQUE_ID_nofbaccel323", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 55, i32 1}
!2 = !{ptr @nouveau_nofbaccel, !3, !"nouveau_nofbaccel", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 56, i32 5}
!4 = !{ptr @__param_nofbaccel, !5, !"__param_nofbaccel", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 57, i32 1}
!6 = !{ptr @__UNIQUE_ID_nofbacceltype324, !5, !"__UNIQUE_ID_nofbacceltype324", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_fbcon_bpp325, !8, !"__UNIQUE_ID_fbcon_bpp325", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 59, i32 1}
!9 = !{ptr @__param_fbcon_bpp, !10, !"__param_fbcon_bpp", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 61, i32 1}
!11 = !{ptr @__UNIQUE_ID_fbcon_bpptype326, !10, !"__UNIQUE_ID_fbcon_bpptype326", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 441, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nouveau_fbcon_gpu_lockup._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @nouveau_fbcon_gpu_lockup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 514, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nouveau_fbcon_output_poll_changed._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nouveau_fbcon_output_poll_changed._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 518, i32 3}
!28 = !{ptr @nouveau_fbcon_output_poll_changed._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nouveau_fbcon_output_poll_changed._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 538, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nouveau_fbcon_hotplug_resume._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nouveau_fbcon_hotplug_resume._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @nouveau_fbcon_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 561, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nouveau_fbcon_init.__key.14, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 562, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nouveau_fbcon_bpp, !42, !"nouveau_fbcon_bpp", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 60, i32 12}
!43 = !{ptr @__param_str_nofbaccel, !5, !"__param_str_nofbaccel", i1 false, i1 false}
!44 = !{ptr @__param_str_fbcon_bpp, !10, !"__param_str_fbcon_bpp", i1 false, i1 false}
!45 = !{ptr @nouveau_fbcon_helper_funcs, !46, !"nouveau_fbcon_helper_funcs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 445, i32 41}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 336, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nouveau_fbcon_create._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @nouveau_fbcon_create._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 346, i32 3}
!54 = !{ptr @nouveau_fbcon_create._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nouveau_fbcon_create._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 352, i32 3}
!58 = !{ptr @nouveau_fbcon_create._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nouveau_fbcon_create._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 360, i32 4}
!62 = !{ptr @nouveau_fbcon_create._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @nouveau_fbcon_create._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 396, i32 2}
!66 = !{ptr @nouveau_fbcon_create._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @nouveau_fbcon_create._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @nouveau_fbcon_sw_ops, !69, !"nouveau_fbcon_sw_ops", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 219, i32 28}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.h", i32 106, i32 2}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nouveau_fbcon_ops, !74, !"nouveau_fbcon_ops", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nouveau_fbcon.c", i32 208, i32 28}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148353839}
!86 = !{i64 839459, i64 839484, i64 839506, i64 839522, i64 839534, i64 839554, i64 839578, i64 839594, i64 839606}
!87 = !{i64 2148354027}
!88 = !{i8 0, i8 2}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 2000, i32 1}
