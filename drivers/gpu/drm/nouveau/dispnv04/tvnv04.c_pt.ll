; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ch7006_encoder_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.anon.103 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.104, i8 }
%union.anon.104 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.anon.194 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.167, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.167 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.206 = type { %struct.nvkm_object, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.197, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.198, %struct.anon.205, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.197 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.205 = type { i8 }
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
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.172, i32, i32 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { i16, i16 }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.207, %struct.anon.208, %struct.anon.209, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.207 = type { i32, i8, i32, i32 }
%struct.anon.208 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.209 = type { i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TV encoder\00", [21 x i8] zeroinitializer }, align 32
@nv04_tv_encoder_info = internal global { [2 x %struct.nvkm_i2c_bus_probe], [40 x i8] } { [2 x %struct.nvkm_i2c_bus_probe] [%struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"ch7006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 117, ptr null, ptr @.compoundliteral, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nv04_tv_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv04_tv_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nv04_tv_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv04_tv_dpms, ptr null, ptr @drm_i2c_encoder_mode_fixup, ptr @nv04_tv_prepare, ptr @nv04_tv_commit, ptr @nv04_tv_mode_set, ptr null, ptr @drm_i2c_encoder_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.ch7006_encoder_params, [60 x i8] } { %struct.ch7006_encoder_params { i32 5, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_tv_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Setting dpms mode %d on TV encoder (output %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv04_tv_dpms\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/nouveau/dispnv04/tvnv04.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_tv_dpms._entry_ptr = internal global ptr @nv04_tv_dpms._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nv04_tv_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv04_tv_commit\00", [17 x i8] zeroinitializer }, align 32
@nv04_tv_commit._entry_ptr = internal global ptr @nv04_tv_commit._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 59, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"nv04_tv_encoder_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 37, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"nv04_tv_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 188, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"nv04_tv_helper_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 192, i32 46 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 82, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [45 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 174, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nv04_tv_commit._entry, ptr @nv04_tv_commit._entry_ptr, ptr @nv04_tv_dpms._entry, ptr @nv04_tv_dpms._entry_ptr, ptr @.str, ptr @nv04_tv_encoder_info, ptr @nv04_tv_funcs, ptr @nv04_tv_helper_funcs, ptr @.compoundliteral, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tv_encoder_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tv_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tv_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tv_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_tv_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_tv_identify(ptr nocapture noundef readonly %dev, i32 noundef %i2c_index) local_unnamed_addr #0 align 64 {
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
  %device1 = getelementptr inbounds %struct.anon.194, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 8
  %i2c2 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c2, align 4
  %call3 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %7, i32 noundef %i2c_index) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call3, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_tv_encoder_info, ptr noundef null, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_tv_create(ptr noundef %connector, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device3 = getelementptr inbounds %struct.anon.206, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device3, align 8
  %i2c4 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %i2c4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c4, align 4
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 4
  %10 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_index, align 4
  %conv = zext i8 %11 to i32
  %call5 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %9, i32 noundef %conv) #5
  %12 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_index, align 4
  %conv7 = zext i8 %13 to i32
  %14 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 5
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  %device1.i = getelementptr inbounds %struct.anon.194, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1.i, align 8
  %i2c2.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %i2c2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c2.i, align 4
  %call3.i = tail call ptr @nvkm_i2c_bus_find(ptr noundef %21, i32 noundef %conv7) #5
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %nv04_tv_identify.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nv04_tv_identify.exit:                            ; preds = %entry
  %call4.i = tail call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_tv_encoder_info, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %nv04_tv_identify.exit.cleanup_crit_edge, label %if.end

nv04_tv_identify.exit.cleanup_crit_edge:          ; preds = %nv04_tv_identify.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %nv04_tv_identify.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 416) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nv04_tv_funcs, i32 noundef 4, ptr noundef null) #5
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nv04_tv_helper_funcs, ptr %helper_private.i, align 4
  %enc_save = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %enc_save to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @drm_i2c_encoder_save, ptr %enc_save, align 4
  %enc_restore = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 15
  %25 = ptrtoint ptr %enc_restore to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @drm_i2c_encoder_restore, ptr %enc_restore, align 8
  %heads = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 5
  %26 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %heads, align 1
  %conv15 = zext i8 %27 to i32
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv15, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %possible_clones, align 8
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry1, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 9
  %31 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %or, align 1
  %33 = tail call i8 @llvm.cttz.i8(i8 %32, i1 true), !range !30
  %34 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %iszero = icmp eq i8 %32, 0
  %sub = select i1 %iszero, i32 -1, i32 %34
  %or17 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %or17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %or17, align 8
  %i2c19 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call5, i32 0, i32 5
  %arrayidx = getelementptr [2 x %struct.nvkm_i2c_bus_probe], ptr @nv04_tv_encoder_info, i32 0, i32 %call4.i
  %call21 = tail call i32 @drm_i2c_encoder_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %i2c19, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %fail_cleanup, label %if.end25

if.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slave_funcs.i, align 8
  %create_resources = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %create_resources to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %create_resources, align 4
  %call27 = tail call i32 %39(ptr noundef nonnull %call7.i.i, ptr noundef %connector) #5
  %call28 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

fail_cleanup:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_cleanup, %if.end25, %if.end.cleanup_crit_edge, %nv04_tv_identify.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %fail_cleanup ], [ 0, %if.end25 ], [ %call4.i, %nv04_tv_identify.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_save(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_restore(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tv_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_funcs.i, align 4
  %destroy = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy, align 4
  tail call void %3(ptr noundef %encoder) #5
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #5
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_private, align 4
  tail call void @kfree(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %encoder) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tv_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end13_crit_edge, label %do.body5

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %15 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dcb, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %mode, i32 noundef %18) #9
  br label %do.end13

do.end13:                                         ; preds = %do.body5, %entry.do.end13_crit_edge
  %pllsel = getelementptr inbounds %struct.nv04_mode_state, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pllsel, align 4
  %and = and i32 %20, -983041
  store i32 %and, ptr %pllsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then14, label %do.end13.if.end21_crit_edge

do.end13.if.end21_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then14:                                        ; preds = %do.end13
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %21 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc, align 4
  %index16 = getelementptr inbounds %struct.nouveau_crtc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index16, align 8
  %25 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  %mul6.i = shl i32 %24, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !31

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %28, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 26) #5, !srcloc !33
  br label %if.end.i

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 26) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %30, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !31

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr24.i = getelementptr i8, ptr %30, i32 %add29.i
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %conv26.i = zext i8 %31 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv30.i) #5
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool.not, i32 196608, i32 786432
  %32 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pllsel, align 4
  %or = or i32 %33, %cond
  store i32 %or, ptr %pllsel, align 4
  %34 = or i8 %conv34.i, -128
  %35 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i, align 4
  %device1.i41 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 3
  %map.i42 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = ptrtoint ptr %map.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i42, align 8
  %tobool.not.i43 = icmp eq ptr %38, null
  br i1 %tobool.not.i43, label %if.else.i49, label %if.then.i47, !prof !31

if.then.i47:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i46 = getelementptr i8, ptr %38, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i46, i8 26) #5, !srcloc !33
  br label %if.end.i51

if.else.i49:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i48 = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i41, i32 noundef 1, i64 noundef %conv.i48, i32 noundef 26) #5
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.else.i49, %if.then.i47
  %39 = ptrtoint ptr %map.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i42, align 8
  %tobool12.not.i50 = icmp eq ptr %40, null
  br i1 %tobool12.not.i50, label %if.else25.i, label %if.then19.i53, !prof !31

if.then19.i53:                                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr24.i52 = getelementptr i8, ptr %40, i32 %add29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i52, i8 %34) #5, !srcloc !33
  br label %if.end21

if.else25.i:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i = sext i32 %add29.i to i64
  %conv29.i = zext i8 %34 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i41, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else25.i, %if.then19.i53, %do.end13.if.end21_crit_edge
  %41 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pllsel, align 4
  %43 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i, align 4
  %map.i55 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3, i32 0, i32 6
  %45 = ptrtoint ptr %map.i55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i55, align 8
  %tobool2.not.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i, label %if.else.i58, label %do.body.i, !prof !31

do.body.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %map.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i55, align 8
  %add.ptr.i56 = getelementptr i8, ptr %48, i32 6817036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %42) #5, !srcloc !37
  br label %NVWriteRAMDAC.exit

if.else.i58:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %device1.i57 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i57, i32 noundef 4, i64 noundef 6817036, i32 noundef %42) #5
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i58, %do.body.i
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %49 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slave_funcs.i, align 4
  %dpms = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dpms, align 4
  tail call void %52(ptr noundef %encoder, i32 noundef %mode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_i2c_encoder_mode_fixup(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tv_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %6 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %helper_private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %encoder, i32 noundef 3) #5
  tail call void @nv04_dfp_disable(ptr noundef %1, i32 noundef %5) #5
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %13, i32 -102
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i, align 2
  %16 = and i16 %15, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 4
  %17 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp ugt i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp5.not.i = icmp ne i16 %16, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %16)
  %cmp8.not.i = icmp ne i16 %16, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %16)
  %cmp11.not.i = icmp ne i16 %16, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %16)
  %cmp14.not.i = icmp ne i16 %16, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xor = xor i32 %5, 1
  tail call fastcc void @nv04_tv_bind(ptr noundef %1, i32 noundef %xor, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @nv04_tv_bind(ptr noundef %1, i32 noundef %5, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tv_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %6 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %helper_private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %encoder, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %10 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end15_crit_edge, label %do.body5

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %call10 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #5
  %name11 = getelementptr inbounds %struct.drm_connector, ptr %call10, i32 0, i32 7
  %17 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name11, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 8
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %21 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %or, align 1
  %25 = tail call i8 @llvm.cttz.i8(i8 %24, i1 true), !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %iszero = icmp eq i8 %24, 0
  %narrow = add nuw nsw i8 %25, 65
  %narrow22 = select i1 %iszero, i8 64, i8 %narrow
  %add = zext i8 %narrow22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %18, i32 noundef %20, i32 noundef %add) #9
  br label %do.end15

do.end15:                                         ; preds = %do.body5, %entry.do.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_tv_mode_set(ptr noundef %encoder, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %display.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %12 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal, align 2
  %conv = zext i16 %13 to i32
  %tv_htotal = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 24
  %14 = ptrtoint ptr %tv_htotal to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %tv_htotal, align 4
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %15 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vtotal, align 4
  %conv3 = zext i16 %16 to i32
  %tv_vtotal = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 21
  %17 = ptrtoint ptr %tv_vtotal to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3, ptr %tv_vtotal, align 4
  %tv_hskew = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 25
  %18 = ptrtoint ptr %tv_hskew to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tv_hskew, align 4
  %tv_hsync_delay = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 26
  %19 = ptrtoint ptr %tv_hsync_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tv_hsync_delay, align 4
  %tv_hsync_delay2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 27
  %20 = ptrtoint ptr %tv_hsync_delay2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %tv_hsync_delay2, align 4
  %tv_vskew = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 22
  %21 = ptrtoint ptr %tv_vskew to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %tv_vskew, align 4
  %tv_vsync_delay = getelementptr [2 x %struct.nv04_crtc_reg], ptr %9, i32 0, i32 %11, i32 23
  %22 = ptrtoint ptr %tv_vsync_delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %tv_vsync_delay, align 4
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %23 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_funcs.i, align 4
  %mode_set = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %mode_set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mode_set, align 4
  tail call void %26(ptr noundef %encoder, ptr noundef %mode, ptr noundef %adjusted_mode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_detect(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv04_tv_bind(ptr nocapture noundef readonly %dev, i32 noundef %head, i1 noundef zeroext %bind) unnamed_addr #0 align 64 {
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
  %tv_setup = getelementptr [2 x %struct.nv04_crtc_reg], ptr %5, i32 0, i32 %head, i32 20
  %6 = ptrtoint ptr %tv_setup to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tv_setup, align 4
  %arrayidx1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %5, i32 0, i32 %head, i32 1, i32 73
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1, align 1
  %9 = and i8 %8, -17
  %masksel = select i1 %bind, i8 16, i8 0
  %.sink = or i8 %9, %masksel
  store i8 %.sink, ptr %arrayidx1, align 1
  %arrayidx8 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %5, i32 0, i32 %head, i32 1, i32 51
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = load ptr, ptr %dev_private.i.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 51) #5, !srcloc !33
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 51) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %16, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !31

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr24.i = getelementptr i8, ptr %16, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %11) #5, !srcloc !33
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %11 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #5
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  %arrayidx10 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %5, i32 0, i32 %head, i32 1, i32 73
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %19 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i.i.i, align 4
  %device1.i24 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3
  %map.i25 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %map.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i25, align 8
  %tobool.not.i26 = icmp eq ptr %22, null
  br i1 %tobool.not.i26, label %if.else.i32, label %if.then.i30, !prof !31

if.then.i30:                                      ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 73) #5, !srcloc !33
  br label %if.end.i36

if.else.i32:                                      ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i31 = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i24, i32 noundef 1, i64 noundef %conv.i31, i32 noundef 73) #5
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.else.i32, %if.then.i30
  %23 = ptrtoint ptr %map.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i25, align 8
  %tobool12.not.i33 = icmp eq ptr %24, null
  br i1 %tobool12.not.i33, label %if.else25.i41, label %if.then19.i38, !prof !31

if.then19.i38:                                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr24.i37 = getelementptr i8, ptr %24, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i37, i8 %18) #5, !srcloc !33
  br label %NVWriteVgaCrtc.exit42

if.else25.i41:                                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i39 = sext i32 %add27.i to i64
  %conv29.i40 = zext i8 %18 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i24, i32 noundef 1, i64 noundef %conv28.i39, i32 noundef %conv29.i40) #5
  br label %NVWriteVgaCrtc.exit42

NVWriteVgaCrtc.exit42:                            ; preds = %if.else25.i41, %if.then19.i38
  %25 = ptrtoint ptr %tv_setup to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_setup, align 4
  %27 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i44 = icmp eq i32 %head, 0
  %spec.select.i = select i1 %tobool.not.i44, i32 6817536, i32 6825728
  %map.i45 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3, i32 0, i32 6
  %29 = ptrtoint ptr %map.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i45, align 8
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %if.else.i49, label %do.body.i, !prof !31

do.body.i:                                        ; preds = %NVWriteVgaCrtc.exit42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %map.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i45, align 8
  %add.ptr.i46 = getelementptr i8, ptr %32, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %26) #5, !srcloc !37
  br label %NVWriteRAMDAC.exit

if.else.i49:                                      ; preds = %NVWriteVgaCrtc.exit42
  call void @__sanitizer_cov_trace_pc() #7
  %device1.i47 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3
  %conv.i48 = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i47, i32 noundef 4, i64 noundef %conv.i48, i32 noundef %26) #5
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i49, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 59, i32 34}
!2 = !{ptr @nv04_tv_encoder_info, !3, !"nv04_tv_encoder_info", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 37, i32 34}
!4 = !{ptr @nv04_tv_funcs, !5, !"nv04_tv_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 188, i32 39}
!6 = !{ptr @nv04_tv_helper_funcs, !7, !"nv04_tv_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 192, i32 46}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 82, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nv04_tv_dpms._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @nv04_tv_dpms._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c", i32 174, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nv04_tv_commit._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nv04_tv_commit._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 9}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2152934551}
!33 = !{i64 5393206}
!34 = !{i64 5393601}
!35 = !{i64 2152932946}
!36 = !{i64 2157874893}
!37 = !{i64 5393403}
