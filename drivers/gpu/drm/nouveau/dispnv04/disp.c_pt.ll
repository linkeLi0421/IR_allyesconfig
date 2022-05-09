; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.anon.90 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.120, %struct.anon.121, %struct.anon.126, ptr, %struct.anon.127, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.128, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.134 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.120 = type { ptr, i32, i32, i8 }
%struct.anon.121 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.122] }
%struct.anon.122 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.126 = type { i64, i64 }
%struct.anon.127 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.92 }
%struct.anon.92 = type { ptr, i64 }
%struct.anon.128 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.129, %struct.anon.130, %struct.anon.131, %struct.anon.132 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.93, i8 }
%union.anon.93 = type { %struct.anon.97 }
%struct.anon.97 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.129 = type { i32 }
%struct.anon.130 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.131 = type { i16, i16 }
%struct.anon.132 = type { i16, i16, i16, %struct.anon.133, i16 }
%struct.anon.133 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, %struct.mutex, i8 }
%struct.anon.213 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.186, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.186 = type { %struct.notifier_block }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nouveau_channel = type { %struct.anon.123, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.124, i8, ptr, %struct.anon.125, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.123 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.124 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.125 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.191, i32, i32 }
%union.anon.191 = type { %struct.anon.193 }
%struct.anon.193 = type { i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmsFlip\00", [24 x i8] zeroinitializer }, align 32
@nv04_display_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: DCB type %d not known\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv04_display_create\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv04/disp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_display_create._entry_ptr = internal global ptr @nv04_display_create._entry, section ".printk_index", align 4
@nv04_display_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %s has no encoders, removing\0A\00", [62 x i8] zeroinitializer }, align 32
@nv04_display_create._entry_ptr.8 = internal global ptr @nv04_display_create._entry.6, section ".printk_index", align 4
@nv04_display_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 139, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Could not pin framebuffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv04_display_init\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv04_display_init._entry_ptr = internal global ptr @nv04_display_init._entry, section ".printk_index", align 4
@nv04_display_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 152, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Could not pin/map cursor.\0A\00", [33 x i8] zeroinitializer }, align 32
@nv04_display_init._entry_ptr.14 = internal global ptr @nv04_display_init._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 242, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 275, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 286, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 139, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/disp.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 152, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @nv04_display_create._entry, ptr @nv04_display_create._entry.6, ptr @nv04_display_create._entry_ptr, ptr @nv04_display_create._entry_ptr.8, ptr @nv04_display_init._entry, ptr @nv04_display_init._entry.12, ptr @nv04_display_init._entry_ptr, ptr @nv04_display_init._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_display_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_display_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_display_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_display_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv04_encoder_get_connector(ptr noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #5
  %2 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !33
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !33
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %conn_iter) #5
  %call28 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool.not9 = icmp eq ptr %call28, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call211 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call28, %entry.while.body_crit_edge ]
  %nv_connector.010 = phi ptr [ %spec.select, %while.body.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %encoder3 = getelementptr inbounds %struct.drm_connector, ptr %call211, i32 0, i32 41
  %5 = ptrtoint ptr %encoder3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder3, align 4
  %cmp = icmp eq ptr %6, %encoder
  %spec.select = select i1 %cmp, ptr %call211, ptr %nv_connector.010
  %call2 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %nv_connector.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #5
  ret ptr %nv_connector.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_display_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device1 = getelementptr inbounds %struct.anon.213, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 8
  %i2c2 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c2, align 4
  %call4 = tail call noalias ptr @vzalloc(i32 noundef 267640) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup163_crit_edge, label %if.end

entry.cleanup163_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup163

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %call8 = tail call i32 @nvif_object_map(ptr noundef %device, ptr noundef null, i32 noundef 0) #5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %11, align 8
  %13 = load ptr, ptr %dev_private.i, align 4
  %display.i239 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %display.i239 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %display.i239, align 4
  %dtor = getelementptr inbounds %struct.nouveau_display, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dtor to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nv04_display_destroy, ptr %dtor, align 4
  %17 = load ptr, ptr %dev_private.i, align 4
  %display.i241 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %display.i241 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %display.i241, align 4
  %init = getelementptr inbounds %struct.nouveau_display, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nv04_display_init, ptr %init, align 8
  %21 = load ptr, ptr %dev_private.i, align 4
  %display.i243 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %display.i243 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %display.i243, align 4
  %fini = getelementptr inbounds %struct.nouveau_display, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %fini to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nv04_display_fini, ptr %fini, align 4
  %driver_features = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %driver_features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_features, align 4
  %and = and i32 %26, -17
  store i32 %and, ptr %driver_features, align 4
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel, align 4
  %tobool14.not = icmp eq ptr %28, null
  br i1 %tobool14.not, label %if.end.if.end18_crit_edge, label %if.then15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %nvsw = getelementptr inbounds %struct.nouveau_channel, ptr %28, i32 0, i32 9
  %flip = getelementptr inbounds %struct.nv04_display, ptr %call4, i32 0, i32 5
  %call17 = tail call i32 @nvif_notify_ctor(ptr noundef %nvsw, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_flip_complete, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %flip) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  tail call void @nouveau_hw_save_vga_fonts(ptr noundef %dev, i1 noundef zeroext true) #5
  %call19 = tail call i32 @nv04_crtc_create(ptr noundef %dev, i32 noundef 0) #5
  %29 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %32, i32 -102
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device.i, align 2
  %35 = and i16 %34, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 1, i32 4
  %36 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp.i = icmp ugt i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %35)
  %cmp5.not.i = icmp ne i16 %35, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %35)
  %cmp8.not.i = icmp ne i16 %35, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %35)
  %cmp11.not.i = icmp ne i16 %35, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %35)
  %cmp14.not.i = icmp ne i16 %35, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 @nv04_crtc_create(ptr noundef %dev, i32 noundef 1) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %entries = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %38 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp246 = icmp sgt i32 %39, 0
  br i1 %cmp246, label %for.body.lr.ph, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %drm41 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0247
  %call25 = tail call ptr @nouveau_connector_create(ptr noundef %dev, ptr noundef %arrayidx) #5
  %cmp.i245 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %for.body.cleanup_crit_edge, label %if.end28

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %for.body
  %type = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0247, i32 3
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %do.body [
    i32 0, label %sw.bb
    i32 3, label %if.end28.sw.bb30_crit_edge
    i32 2, label %if.end28.sw.bb30_crit_edge264
    i32 1, label %sw.bb32
  ]

if.end28.sw.bb30_crit_edge264:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

if.end28.sw.bb30_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 @nv04_dac_create(ptr noundef %call25, ptr noundef %arrayidx) #5
  br label %cleanup

sw.bb30:                                          ; preds = %if.end28.sw.bb30_crit_edge, %if.end28.sw.bb30_crit_edge264
  %call31 = tail call i32 @nv04_dfp_create(ptr noundef %call25, ptr noundef %arrayidx) #5
  br label %cleanup

sw.bb32:                                          ; preds = %if.end28
  %location = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0247, i32 8
  %43 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp33 = icmp eq i8 %44, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 @nv17_tv_create(ptr noundef %call25, ptr noundef %arrayidx) #5
  br label %cleanup

if.else:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @nv04_tv_create(ptr noundef %call25, ptr noundef %arrayidx) #5
  br label %cleanup

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %drm41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drm41, align 8
  %dev42 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev42, align 8
  %dev43 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else, %if.then35, %sw.bb30, %sw.bb, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0247, 1
  %51 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entries, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end23.for.end_crit_edge
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %53 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %connector_list, align 4
  %cmp59.not251 = icmp eq ptr %54, %connector_list
  br i1 %cmp59.not251, label %for.end.for.end85_crit_edge, label %for.body61.lr.ph

for.end.for.end85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.body61.lr.ph:                                 ; preds = %for.end
  %drm70 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name73 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body61

for.body61:                                       ; preds = %for.inc79.for.body61_crit_edge, %for.body61.lr.ph
  %.pn.in252 = phi ptr [ %54, %for.body61.lr.ph ], [ %.pn254, %for.inc79.for.body61_crit_edge ]
  %55 = ptrtoint ptr %.pn.in252 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn254 = load ptr, ptr %.pn.in252, align 8
  %possible_encoders = getelementptr i8, ptr %.pn.in252, i32 800
  %56 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %possible_encoders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool62.not = icmp eq i32 %57, 0
  br i1 %tobool62.not, label %do.body64, label %for.body61.for.inc79_crit_edge

for.body61.for.inc79_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

do.body64:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #7
  %connector.0253 = getelementptr i8, ptr %.pn.in252, i32 -16
  %58 = ptrtoint ptr %drm70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drm70, align 8
  %dev71 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev71, align 8
  %dev72 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev72, align 4
  %name75 = getelementptr i8, ptr %.pn.in252, i32 36
  %64 = ptrtoint ptr %name75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name75, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.7, ptr noundef %name73, ptr noundef %65) #9
  %funcs = getelementptr i8, ptr %.pn.in252, i32 336
  %66 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %destroy, align 4
  tail call void %69(ptr noundef %connector.0253) #5
  br label %for.inc79

for.inc79:                                        ; preds = %do.body64, %for.body61.for.inc79_crit_edge
  %cmp59.not = icmp eq ptr %.pn254, %connector_list
  br i1 %cmp59.not, label %for.inc79.for.end85_crit_edge, label %for.inc79.for.body61_crit_edge

for.inc79.for.body61_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body61

for.inc79.for.end85_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.end85:                                        ; preds = %for.inc79.for.end85_crit_edge, %for.end.for.end85_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %70 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn234255 = load ptr, ptr %encoder_list, align 4
  %cmp95.not256 = icmp eq ptr %.pn234255, %encoder_list
  br i1 %cmp95.not256, label %for.end85.for.end113_crit_edge, label %for.end85.for.body98_crit_edge

for.end85.for.body98_crit_edge:                   ; preds = %for.end85
  br label %for.body98

for.end85.for.end113_crit_edge:                   ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.end85.for.body98_crit_edge
  %.pn234257 = phi ptr [ %.pn234, %for.body98.for.body98_crit_edge ], [ %.pn234255, %for.end85.for.body98_crit_edge ]
  %dcb101 = getelementptr i8, ptr %.pn234257, i32 80
  %71 = ptrtoint ptr %dcb101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dcb101, align 4
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %i2c_index, align 4
  %conv102 = zext i8 %74 to i32
  %call103 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %7, i32 noundef %conv102) #5
  %tobool104.not = icmp eq ptr %call103, null
  %i2c105 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call103, i32 0, i32 5
  %spec.select = select i1 %tobool104.not, ptr null, ptr %i2c105
  %i2c106 = getelementptr i8, ptr %.pn234257, i32 92
  %75 = ptrtoint ptr %i2c106 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %spec.select, ptr %i2c106, align 4
  %76 = ptrtoint ptr %.pn234257 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn234 = load ptr, ptr %.pn234257, align 4
  %cmp95.not = icmp eq ptr %.pn234, %encoder_list
  br i1 %cmp95.not, label %for.body98.for.end113_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98

for.body98.for.end113_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end113

for.end113:                                       ; preds = %for.body98.for.end113_crit_edge, %for.end85.for.end113_crit_edge
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %77 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn235258 = load ptr, ptr %crtc_list, align 4
  %cmp123.not259 = icmp eq ptr %.pn235258, %crtc_list
  br i1 %cmp123.not259, label %for.end113.for.cond142.preheader_crit_edge, label %for.end113.for.body126_crit_edge

for.end113.for.body126_crit_edge:                 ; preds = %for.end113
  br label %for.body126

for.end113.for.cond142.preheader_crit_edge:       ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond142.preheader

for.cond142.preheader:                            ; preds = %for.body126.for.cond142.preheader_crit_edge, %for.end113.for.cond142.preheader_crit_edge
  %78 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn236261 = load ptr, ptr %encoder_list, align 4
  %cmp148.not262 = icmp eq ptr %.pn236261, %encoder_list
  br i1 %cmp148.not262, label %for.cond142.preheader.for.end162_crit_edge, label %for.cond142.preheader.for.body151_crit_edge

for.cond142.preheader.for.body151_crit_edge:      ; preds = %for.cond142.preheader
  br label %for.body151

for.cond142.preheader.for.end162_crit_edge:       ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end162

for.body126:                                      ; preds = %for.body126.for.body126_crit_edge, %for.end113.for.body126_crit_edge
  %.pn235260 = phi ptr [ %.pn235, %for.body126.for.body126_crit_edge ], [ %.pn235258, %for.end113.for.body126_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn235260, i32 -8
  %save = getelementptr i8, ptr %.pn235260, i32 1140
  %79 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %save, align 4
  tail call void %80(ptr noundef %crtc.0) #5
  %81 = ptrtoint ptr %.pn235260 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn235 = load ptr, ptr %.pn235260, align 4
  %cmp123.not = icmp eq ptr %.pn235, %crtc_list
  br i1 %cmp123.not, label %for.body126.for.cond142.preheader_crit_edge, label %for.body126.for.body126_crit_edge

for.body126.for.body126_crit_edge:                ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body126

for.body126.for.cond142.preheader_crit_edge:      ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond142.preheader

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.cond142.preheader.for.body151_crit_edge
  %.pn236263 = phi ptr [ %.pn236, %for.body151.for.body151_crit_edge ], [ %.pn236261, %for.cond142.preheader.for.body151_crit_edge ]
  %nv_encoder.0 = getelementptr i8, ptr %.pn236263, i32 -4
  %enc_save = getelementptr i8, ptr %.pn236263, i32 400
  %82 = ptrtoint ptr %enc_save to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %enc_save, align 4
  tail call void %83(ptr noundef %nv_encoder.0) #5
  %84 = ptrtoint ptr %.pn236263 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn236 = load ptr, ptr %.pn236263, align 4
  %cmp148.not = icmp eq ptr %.pn236, %encoder_list
  br i1 %cmp148.not, label %for.body151.for.end162_crit_edge, label %for.body151.for.body151_crit_edge

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body151

for.body151.for.end162_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end162

for.end162:                                       ; preds = %for.body151.for.end162_crit_edge, %for.cond142.preheader.for.end162_crit_edge
  tail call void @nouveau_overlay_init(ptr noundef %dev) #5
  br label %cleanup163

cleanup163:                                       ; preds = %for.end162, %entry.cleanup163_crit_edge
  %retval.0 = phi i32 [ 0, %for.end162 ], [ -12, %entry.cleanup163_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_display_destroy(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn53 = load ptr, ptr %encoder_list, align 4
  %cmp.not54 = icmp eq ptr %.pn53, %encoder_list
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn53, %entry.for.body_crit_edge ]
  %encoder.0 = getelementptr i8, ptr %.pn55, i32 -4
  %enc_restore = getelementptr i8, ptr %.pn55, i32 404
  %7 = ptrtoint ptr %enc_restore to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enc_restore, align 4
  tail call void %8(ptr noundef %encoder.0) #5
  %9 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %10 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn5256 = load ptr, ptr %crtc_list, align 4
  %cmp24.not57 = icmp eq ptr %.pn5256, %crtc_list
  br i1 %cmp24.not57, label %for.end.for.end35_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %.pn5258 = phi ptr [ %.pn52, %for.body26.for.body26_crit_edge ], [ %.pn5256, %for.end.for.body26_crit_edge ]
  %nv_crtc.0 = getelementptr i8, ptr %.pn5258, i32 -8
  %restore = getelementptr i8, ptr %.pn5258, i32 1144
  %11 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %restore, align 8
  tail call void %12(ptr noundef %nv_crtc.0) #5
  %13 = ptrtoint ptr %.pn5258 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn52 = load ptr, ptr %.pn5258, align 4
  %cmp24.not = icmp eq ptr %.pn52, %crtc_list
  br i1 %cmp24.not, label %for.body26.for.end35_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.body26.for.end35_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.end35:                                        ; preds = %for.body26.for.end35_crit_edge, %for.end.for.end35_crit_edge
  tail call void @nouveau_hw_save_vga_fonts(ptr noundef %dev, i1 noundef zeroext false) #5
  %flip = getelementptr inbounds %struct.nv04_display, ptr %5, i32 0, i32 5
  %call36 = tail call i32 @nvif_notify_dtor(ptr noundef %flip) #5
  %14 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %display.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 8
  tail call void @vfree(ptr noundef %5) #5
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  tail call void @nvif_object_unmap(ptr noundef %device) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_display_init(ptr noundef %dev, i1 noundef zeroext %resume, i1 noundef zeroext %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn266 = load ptr, ptr %crtc_list, align 4
  %cmp.not267 = icmp eq ptr %.pn266, %crtc_list
  br i1 %cmp.not267, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn268 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn266, %entry.for.body_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn268, i32 -8
  %save = getelementptr i8, ptr %.pn268, i32 1140
  %7 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %save, align 4
  tail call void %8(ptr noundef %crtc.0) #5
  %9 = ptrtoint ptr %.pn268 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn268, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %10 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn256269 = load ptr, ptr %encoder_list, align 4
  %cmp22.not270 = icmp eq ptr %.pn256269, %encoder_list
  br i1 %cmp22.not270, label %for.end.for.end35_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn256271 = phi ptr [ %.pn256, %for.body24.for.body24_crit_edge ], [ %.pn256269, %for.end.for.body24_crit_edge ]
  %encoder.0 = getelementptr i8, ptr %.pn256271, i32 -4
  %enc_save = getelementptr i8, ptr %.pn256271, i32 400
  %11 = ptrtoint ptr %enc_save to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enc_save, align 4
  tail call void %12(ptr noundef %encoder.0) #5
  %13 = ptrtoint ptr %.pn256271 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn256 = load ptr, ptr %.pn256271, align 4
  %cmp22.not = icmp eq ptr %.pn256, %encoder_list
  br i1 %cmp22.not, label %for.body24.for.end35_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.body24.for.end35_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.end35:                                        ; preds = %for.body24.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %flip = getelementptr inbounds %struct.nv04_display, ptr %5, i32 0, i32 5
  %call36 = tail call i32 @nvif_notify_get(ptr noundef %flip) #5
  br i1 %resume, label %for.cond43.preheader, label %for.end35.cleanup197_crit_edge

for.end35.cleanup197_crit_edge:                   ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup197

for.cond43.preheader:                             ; preds = %for.end35
  %14 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn257272 = load ptr, ptr %crtc_list, align 4
  %cmp47.not273 = icmp eq ptr %.pn257272, %crtc_list
  br i1 %cmp47.not273, label %for.cond43.preheader.for.cond82.preheader_crit_edge, label %for.body49.lr.ph

for.cond43.preheader.for.cond82.preheader_crit_edge: ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond82.preheader

for.body49.lr.ph:                                 ; preds = %for.cond43.preheader
  %drm62 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body49

for.cond82.preheader:                             ; preds = %cleanup.for.cond82.preheader_crit_edge, %for.cond43.preheader.for.cond82.preheader_crit_edge
  %15 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn258275 = load ptr, ptr %crtc_list, align 4
  %cmp86.not276 = icmp eq ptr %.pn258275, %crtc_list
  br i1 %cmp86.not276, label %for.cond82.preheader.for.cond138.preheader_crit_edge, label %for.body88.lr.ph

for.cond82.preheader.for.cond138.preheader_crit_edge: ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond138.preheader

for.body88.lr.ph:                                 ; preds = %for.cond82.preheader
  %drm114 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %name117 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  br label %for.body88

for.body49:                                       ; preds = %cleanup.for.body49_crit_edge, %for.body49.lr.ph
  %.pn257274 = phi ptr [ %.pn257272, %for.body49.lr.ph ], [ %.pn257, %cleanup.for.body49_crit_edge ]
  %primary = getelementptr i8, ptr %.pn257274, i32 140
  %16 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %primary, align 4
  %fb50 = getelementptr inbounds %struct.drm_plane, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %fb50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb50, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool51.not, label %for.body49.cleanup_crit_edge, label %lor.lhs.false

for.body49.cleanup_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body49
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %obj, align 4
  %tobool52.not = icmp eq ptr %21, null
  br i1 %tobool52.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end54

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false
  %call58 = tail call i32 @nouveau_bo_pin(ptr noundef nonnull %21, i32 noundef 2, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end54.cleanup_crit_edge, label %do.body

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %drm62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drm62, align 8
  %dev63 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev63, align 8
  %dev64 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end54.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body49.cleanup_crit_edge
  %28 = ptrtoint ptr %.pn257274 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn257 = load ptr, ptr %.pn257274, align 4
  %cmp47.not = icmp eq ptr %.pn257, %crtc_list
  br i1 %cmp47.not, label %cleanup.for.cond82.preheader_crit_edge, label %cleanup.for.body49_crit_edge

cleanup.for.body49_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49

cleanup.for.cond82.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond82.preheader

for.cond138.preheader:                            ; preds = %cleanup122.for.cond138.preheader_crit_edge, %for.cond82.preheader.for.cond138.preheader_crit_edge
  %29 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn259280 = load ptr, ptr %crtc_list, align 4
  %cmp142.not281 = icmp eq ptr %.pn259280, %crtc_list
  br i1 %cmp142.not281, label %for.cond138.preheader.for.end153_crit_edge, label %for.cond138.preheader.for.body144_crit_edge

for.cond138.preheader.for.body144_crit_edge:      ; preds = %for.cond138.preheader
  br label %for.body144

for.cond138.preheader.for.end153_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end153

for.body88:                                       ; preds = %cleanup122.for.body88_crit_edge, %for.body88.lr.ph
  %.pn258277 = phi ptr [ %.pn258275, %for.body88.lr.ph ], [ %.pn258, %cleanup122.for.body88_crit_edge ]
  %cursor = getelementptr i8, ptr %.pn258277, i32 1112
  %30 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cursor, align 8
  %tobool92.not = icmp eq ptr %31, null
  br i1 %tobool92.not, label %for.body88.cleanup122_crit_edge, label %if.end94

for.body88.cleanup122_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup122

if.end94:                                         ; preds = %for.body88
  %call97 = tail call i32 @nouveau_bo_pin(ptr noundef nonnull %31, i32 noundef 2, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true, label %if.end94.do.body108_crit_edge

if.end94.do.body108_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

land.lhs.true:                                    ; preds = %if.end94
  %set_offset = getelementptr i8, ptr %.pn258277, i32 1120
  %32 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_offset, align 8
  %tobool100.not = icmp eq ptr %33, null
  br i1 %tobool100.not, label %land.lhs.true.cleanup122_crit_edge, label %if.end105

land.lhs.true.cleanup122_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup122

if.end105:                                        ; preds = %land.lhs.true
  %34 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cursor, align 8
  %call104 = tail call i32 @nouveau_bo_map(ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool106.not = icmp eq i32 %call104, 0
  br i1 %tobool106.not, label %if.end105.cleanup122_crit_edge, label %if.end105.do.body108_crit_edge

if.end105.do.body108_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

if.end105.cleanup122_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup122

do.body108:                                       ; preds = %if.end105.do.body108_crit_edge, %if.end94.do.body108_crit_edge
  %36 = ptrtoint ptr %drm114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drm114, align 8
  %dev115 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev115, align 8
  %dev116 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.13, ptr noundef %name117) #9
  br label %cleanup122

cleanup122:                                       ; preds = %do.body108, %if.end105.cleanup122_crit_edge, %land.lhs.true.cleanup122_crit_edge, %for.body88.cleanup122_crit_edge
  %42 = ptrtoint ptr %.pn258277 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn258 = load ptr, ptr %.pn258277, align 4
  %cmp86.not = icmp eq ptr %.pn258, %crtc_list
  br i1 %cmp86.not, label %cleanup122.for.cond138.preheader_crit_edge, label %cleanup122.for.body88_crit_edge

cleanup122.for.body88_crit_edge:                  ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body88

cleanup122.for.cond138.preheader_crit_edge:       ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond138.preheader

for.body144:                                      ; preds = %for.body144.for.body144_crit_edge, %for.cond138.preheader.for.body144_crit_edge
  %.pn259282 = phi ptr [ %.pn259, %for.body144.for.body144_crit_edge ], [ %.pn259280, %for.cond138.preheader.for.body144_crit_edge ]
  %lut = getelementptr i8, ptr %.pn259282, i32 1136
  %43 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %lut, align 8
  %44 = ptrtoint ptr %.pn259282 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn259 = load ptr, ptr %.pn259282, align 4
  %cmp142.not = icmp eq ptr %.pn259, %crtc_list
  br i1 %cmp142.not, label %for.body144.for.end153_crit_edge, label %for.body144.for.body144_crit_edge

for.body144.for.body144_crit_edge:                ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body144

for.body144.for.end153_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end153

for.end153:                                       ; preds = %for.body144.for.end153_crit_edge, %for.cond138.preheader.for.end153_crit_edge
  br i1 %runtime, label %for.end153.cleanup197_crit_edge, label %if.end156

for.end153.cleanup197_crit_edge:                  ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup197

if.end156:                                        ; preds = %for.end153
  tail call void @drm_helper_resume_force_mode(ptr noundef %dev) #5
  %45 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn260283 = load ptr, ptr %crtc_list, align 4
  %cmp167.not284 = icmp eq ptr %.pn260283, %crtc_list
  br i1 %cmp167.not284, label %if.end156.cleanup197_crit_edge, label %if.end156.for.body169_crit_edge

if.end156.for.body169_crit_edge:                  ; preds = %if.end156
  br label %for.body169

if.end156.cleanup197_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup197

for.body169:                                      ; preds = %cleanup187.for.body169_crit_edge, %if.end156.for.body169_crit_edge
  %.pn260285 = phi ptr [ %.pn260, %cleanup187.for.body169_crit_edge ], [ %.pn260283, %if.end156.for.body169_crit_edge ]
  %crtc.4 = getelementptr i8, ptr %.pn260285, i32 -8
  %cursor172 = getelementptr i8, ptr %.pn260285, i32 1112
  %46 = ptrtoint ptr %cursor172 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cursor172, align 8
  %tobool174.not = icmp eq ptr %47, null
  br i1 %tobool174.not, label %for.body169.cleanup187_crit_edge, label %if.end176

for.body169.cleanup187_crit_edge:                 ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup187

if.end176:                                        ; preds = %for.body169
  %set_offset178 = getelementptr i8, ptr %.pn260285, i32 1120
  %48 = ptrtoint ptr %set_offset178 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_offset178, align 8
  %tobool179.not = icmp eq ptr %49, null
  br i1 %tobool179.not, label %if.end176.if.end185_crit_edge, label %if.then180

if.end176.if.end185_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %47, i32 0, i32 13
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %offset, align 8
  %conv = trunc i64 %51 to i32
  tail call void %49(ptr noundef %crtc.4, i32 noundef %conv) #5
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.end176.if.end185_crit_edge
  %set_pos = getelementptr i8, ptr %.pn260285, i32 1124
  %52 = ptrtoint ptr %set_pos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_pos, align 4
  %cursor_saved_x = getelementptr i8, ptr %.pn260285, i32 1088
  %54 = ptrtoint ptr %cursor_saved_x to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cursor_saved_x, align 8
  %cursor_saved_y = getelementptr i8, ptr %.pn260285, i32 1092
  %56 = ptrtoint ptr %cursor_saved_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cursor_saved_y, align 4
  tail call void %53(ptr noundef %crtc.4, i32 noundef %55, i32 noundef %57) #5
  br label %cleanup187

cleanup187:                                       ; preds = %if.end185, %for.body169.cleanup187_crit_edge
  %58 = ptrtoint ptr %.pn260285 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn260 = load ptr, ptr %.pn260285, align 4
  %cmp167.not = icmp eq ptr %.pn260, %crtc_list
  br i1 %cmp167.not, label %cleanup187.cleanup197_crit_edge, label %cleanup187.for.body169_crit_edge

cleanup187.for.body169_crit_edge:                 ; preds = %cleanup187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body169

cleanup187.cleanup197_crit_edge:                  ; preds = %cleanup187
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup197

cleanup197:                                       ; preds = %cleanup187.cleanup197_crit_edge, %if.end156.cleanup197_crit_edge, %for.end153.cleanup197_crit_edge, %for.end35.cleanup197_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_display_fini(ptr noundef readonly %dev, i1 noundef zeroext %runtime, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %flip = getelementptr inbounds %struct.nv04_display, ptr %5, i32 0, i32 5
  %call3 = tail call i32 @nvif_notify_put(ptr noundef %flip) #5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !34

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 6291776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !36
  br label %NVWriteCRTC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6291776, i32 noundef 0) #5
  br label %NVWriteCRTC.exit

NVWriteCRTC.exit:                                 ; preds = %if.else.i, %do.body.i
  %12 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %15, i32 -102
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device.i, align 2
  %18 = and i16 %17, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3, i32 1, i32 4
  %19 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i = icmp ugt i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp5.not.i = icmp ne i16 %18, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %18)
  %cmp8.not.i = icmp ne i16 %18, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %18)
  %cmp11.not.i = icmp ne i16 %18, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %18)
  %cmp14.not.i = icmp ne i16 %18, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %NVWriteCRTC.exit.if.end_crit_edge

NVWriteCRTC.exit.if.end_crit_edge:                ; preds = %NVWriteCRTC.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %NVWriteCRTC.exit
  %map.i90 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %map.i90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i90, align 8
  %tobool2.not.i91 = icmp eq ptr %22, null
  br i1 %tobool2.not.i91, label %if.else.i95, label %do.body.i93, !prof !34

do.body.i93:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %map.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i90, align 8
  %add.ptr.i92 = getelementptr i8, ptr %24, i32 6299968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #5, !srcloc !36
  br label %if.end

if.else.i95:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %device1.i94 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i94, i32 noundef 4, i64 noundef 6299968, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else.i95, %do.body.i93, %NVWriteCRTC.exit.if.end_crit_edge
  br i1 %runtime, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 20
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hpd_work) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  br i1 %suspend, label %if.end10, label %if.end7.cleanup62_crit_edge

if.end7.cleanup62_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.end10:                                         ; preds = %if.end7
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %25 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn97 = load ptr, ptr %crtc_list, align 4
  %cmp.not98 = icmp eq ptr %.pn97, %crtc_list
  br i1 %cmp.not98, label %if.end10.for.cond34.preheader_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.cond34.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %cleanup.for.cond34.preheader_crit_edge, %if.end10.for.cond34.preheader_crit_edge
  %26 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn87100 = load ptr, ptr %crtc_list, align 4
  %cmp38.not101 = icmp eq ptr %.pn87100, %crtc_list
  br i1 %cmp38.not101, label %for.cond34.preheader.cleanup62_crit_edge, label %for.cond34.preheader.for.body40_crit_edge

for.cond34.preheader.for.body40_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body40

for.cond34.preheader.cleanup62_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn97, %if.end10.for.body_crit_edge ]
  %primary = getelementptr i8, ptr %.pn99, i32 140
  %27 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary, align 4
  %fb13 = getelementptr inbounds %struct.drm_plane, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %fb13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb13, align 4
  %tobool14.not = icmp eq ptr %30, null
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %obj, align 4
  %tobool15.not = icmp eq ptr %32, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %33 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %cleanup.for.cond34.preheader_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.for.cond34.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.body40:                                       ; preds = %if.end54.for.body40_crit_edge, %for.cond34.preheader.for.body40_crit_edge
  %.pn87102 = phi ptr [ %.pn87, %if.end54.for.body40_crit_edge ], [ %.pn87100, %for.cond34.preheader.for.body40_crit_edge ]
  %cursor = getelementptr i8, ptr %.pn87102, i32 1112
  %34 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cursor, align 8
  %tobool43.not = icmp eq ptr %35, null
  br i1 %tobool43.not, label %for.body40.if.end54_crit_edge, label %if.then44

for.body40.if.end54_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then44:                                        ; preds = %for.body40
  %set_offset = getelementptr i8, ptr %.pn87102, i32 1120
  %36 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_offset, align 8
  %tobool46.not = icmp eq ptr %37, null
  br i1 %tobool46.not, label %if.then44.if.end50_crit_edge, label %if.then47

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %35) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then44.if.end50_crit_edge
  %38 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cursor, align 8
  %call53 = tail call i32 @nouveau_bo_unpin(ptr noundef %39) #5
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %for.body40.if.end54_crit_edge
  %40 = ptrtoint ptr %.pn87102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn87 = load ptr, ptr %.pn87102, align 4
  %cmp38.not = icmp eq ptr %.pn87, %crtc_list
  br i1 %cmp38.not, label %if.end54.cleanup62_crit_edge, label %if.end54.for.body40_crit_edge

if.end54.for.body40_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

if.end54.cleanup62_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

cleanup62:                                        ; preds = %if.end54.cleanup62_crit_edge, %for.cond34.preheader.cleanup62_crit_edge, %if.end7.cleanup62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_flip_complete(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_save_vga_fonts(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_crtc_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_connector_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dfp_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_tv_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_tv_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_overlay_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_resume_force_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/disp.c", i32 242, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/disp.c", i32 275, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv04_display_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv04_display_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/disp.c", i32 286, i32 4}
!12 = !{ptr @nv04_display_create._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv04_display_create._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv04/disp.c", i32 139, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv04_display_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv04_display_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/disp.c", i32 152, i32 4}
!22 = !{ptr @nv04_display_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nv04_display_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2157634935}
!36 = !{i64 4493724}
