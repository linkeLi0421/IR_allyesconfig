; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv17_tv_norm_params = type { i32, %union.anon.204 }
%union.anon.204 = type { %struct.anon.206 }
%struct.anon.206 = type { %struct.drm_display_mode, [38 x i32] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.219 = type { i32, i32 }
%struct.nv17_tv_encoder = type { %struct.nouveau_encoder, %struct.nv17_tv_state, %struct.nv17_tv_state, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.100, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.101, %struct.anon.108, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.100 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.108 = type { i8 }
%struct.nv17_tv_state = type { [64 x i8], [4 x [7 x i32]], [4 x [7 x i32]], [4 x [7 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.94, i8 }
%union.anon.94 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.92 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.113, %struct.anon.114, %struct.anon.116, ptr, %struct.anon.117, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.118, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.124 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.113 = type { ptr, i32, i32, i8 }
%struct.anon.114 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.115] }
%struct.anon.115 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.116 = type { i64, i64 }
%struct.anon.117 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.109 }
%struct.anon.109 = type { ptr, i64 }
%struct.anon.118 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.anon.119 = type { i32 }
%struct.anon.120 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.121 = type { i16, i16 }
%struct.anon.122 = type { i16, i16, i16, %struct.anon.123, i16 }
%struct.anon.123 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { ptr, %struct.mutex, i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.anon.203 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.176, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.176 = type { %struct.notifier_block }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.207, %struct.anon.208, %struct.anon.209, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.207 = type { i32, i8, i32, i32 }
%struct.anon.208 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.209 = type { i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.181, i32, i32 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i16, i16 }
%struct.anon.205 = type { i32, i32, i32, [64 x i8] }
%struct.anon.217 = type { %struct.nvkm_object, ptr }
%struct.anon.218 = type { %struct.nvkm_object, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_tv_norm323 = internal constant [215 x i8] c"nouveau.parm=tv_norm:Default TV norm.\0A\09\09Supported: PAL, PAL-M, PAL-N, PAL-Nc, NTSC-M, NTSC-J,\0A\09\09\09hd480i, hd480p, hd576i, hd576p, hd720p, hd1080i.\0A\09\09Default: PAL\0A\09\09*NOTE* Ignored for cards with external TV encoders.\00", section ".modinfo", align 1
@__param_str_tv_norm = internal constant [16 x i8] c"nouveau.tv_norm\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_tv_norm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tv_norm = internal constant %struct.kernel_param { ptr @__param_str_tv_norm, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_tv_norm } }, section "__param", align 4
@__UNIQUE_ID_tv_normtype324 = internal constant [31 x i8] c"nouveau.parmtype=tv_norm:charp\00", section ".modinfo", align 1
@nv17_tv_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv17_tv_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nv17_tv_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv17_tv_dpms, ptr null, ptr @nv17_tv_mode_fixup, ptr @nv17_tv_prepare, ptr @nv17_tv_commit, ptr @nv17_tv_mode_set, ptr null, ptr @nv17_tv_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv17_tv_slave_funcs = internal constant { %struct.drm_encoder_slave_funcs, [48 x i8] } { %struct.drm_encoder_slave_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv17_tv_mode_valid, ptr null, ptr null, ptr @nv17_tv_get_modes, ptr @nv17_tv_create_resources, ptr @nv17_tv_set_property }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv17_tv_norms = external dso_local global [12 x %struct.nv17_tv_norm_params], align 4
@nv17_tv_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Setting dpms mode %d on TV encoder (output %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv17_tv_dpms\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/nouveau/dispnv04/tvnv17.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv17_tv_dpms._entry_ptr = internal global ptr @nv17_tv_dpms._entry, section ".printk_index", align 4
@nv17_tv_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 603, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv17_tv_commit\00", [17 x i8] zeroinitializer }, align 32
@nv17_tv_commit._entry_ptr = internal global ptr @nv17_tv_commit._entry, section ".printk_index", align 4
@nv17_tv_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Load detected on output %c\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv17_tv_detect\00", [17 x i8] zeroinitializer }, align 32
@nv17_tv_detect._entry_ptr = internal global ptr @nv17_tv_detect._entry, section ".printk_index", align 4
@__const.nv17_tv_get_hd_modes.modes = private unnamed_addr constant [9 x %struct.anon.219] [%struct.anon.219 { i32 640, i32 400 }, %struct.anon.219 { i32 640, i32 480 }, %struct.anon.219 { i32 720, i32 480 }, %struct.anon.219 { i32 720, i32 576 }, %struct.anon.219 { i32 800, i32 600 }, %struct.anon.219 { i32 1024, i32 768 }, %struct.anon.219 { i32 1280, i32 720 }, %struct.anon.219 { i32 1280, i32 1024 }, %struct.anon.219 { i32 1920, i32 1080 }], align 4
@nv17_tv_modes = external dso_local constant [0 x %struct.drm_display_mode], align 4
@nv17_tv_norm_names = external dso_local constant [12 x ptr], align 4
@nv17_tv_create_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 651, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Invalid TV norm setting \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nv17_tv_create_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nv17_tv_create_resources._entry_ptr = internal global ptr @nv17_tv_create_resources._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 480, i64 576]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 480, i64 576]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"nouveau_tv_norm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 42, i32 14 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"nv17_tv_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 782, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"nv17_tv_helper_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 766, i32 46 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"nv17_tv_slave_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 775, i32 45 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 373, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 601, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 192, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [45 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 650, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_tv_norm323, ptr @__UNIQUE_ID_tv_normtype324, ptr @__param_tv_norm, ptr @nv17_tv_commit._entry, ptr @nv17_tv_commit._entry_ptr, ptr @nv17_tv_create_resources._entry, ptr @nv17_tv_create_resources._entry_ptr, ptr @nv17_tv_detect._entry, ptr @nv17_tv_detect._entry_ptr, ptr @nv17_tv_dpms._entry, ptr @nv17_tv_dpms._entry_ptr, ptr @nouveau_tv_norm, ptr @nv17_tv_funcs, ptr @nv17_tv_helper_funcs, ptr @nv17_tv_slave_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_tv_norm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_slave_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_create_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv17_tv_create(ptr noundef %connector, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1360) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %overscan = getelementptr inbounds %struct.nv17_tv_encoder, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %overscan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50, ptr %overscan, align 8
  %flicker = getelementptr inbounds %struct.nv17_tv_encoder, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %flicker to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50, ptr %flicker, align 4
  %saturation = getelementptr inbounds %struct.nv17_tv_encoder, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50, ptr %saturation, align 8
  %hue = getelementptr inbounds %struct.nv17_tv_encoder, ptr %call7.i.i, i32 0, i32 6
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %hue, i32 0, i32 20)
  %7 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry1, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 9
  %8 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or, align 1
  %10 = tail call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !47
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %iszero = icmp eq i8 %9, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %or6 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %or6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %or6, align 8
  %call7 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nv17_tv_funcs, i32 noundef 4, ptr noundef null) #6
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nv17_tv_helper_funcs, ptr %helper_private.i, align 4
  %slave_funcs = getelementptr inbounds %struct.drm_encoder_slave, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %slave_funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nv17_tv_slave_funcs, ptr %slave_funcs, align 8
  %enc_save = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %enc_save to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nv17_tv_save, ptr %enc_save, align 4
  %enc_restore = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %enc_restore to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nv17_tv_restore, ptr %enc_restore, align 8
  %heads = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 5
  %17 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %heads, align 1
  %conv10 = zext i8 %18 to i32
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %possible_clones, align 8
  %call11 = tail call i32 @nv17_tv_create_resources(ptr noundef nonnull %call7.i.i, ptr noundef %connector)
  %call12 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_save(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %call2 = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %add = add i32 %call2, 6817068
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !48

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %6, %if.then5.i ], [ %call10.i, %if.else.i ]
  %restore = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11
  %7 = ptrtoint ptr %restore to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %_data.0.i, ptr %restore, align 4
  %saved_state = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 2
  tail call void @nv17_tv_state_save(ptr noundef %1, ptr noundef %saved_state) #6
  %ptv_200 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptv_200, align 4
  %ptv_2006 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %ptv_2006 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ptv_2006, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_restore(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %add = add i32 %call, 6817068
  %restore = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11
  %2 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %restore, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !48

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %3) #6
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  %saved_state = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 2
  tail call void @nv17_tv_state_load(ptr noundef %1, ptr noundef %saved_state) #6
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %10 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %last_dpms, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_tv_create_resources(ptr nocapture noundef %encoder, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dcb4 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dcb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb4, align 4
  %6 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, i32 6, i32 12
  %9 = load ptr, ptr @nouveau_tv_norm, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @match_string(ptr noundef nonnull @nv17_tv_norm_names, i32 noundef %cond, ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %drm9 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm9, align 8
  %dev10 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %16 = load ptr, ptr @nouveau_tv_norm, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef %16) #10
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %tv_norm = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %17 = ptrtoint ptr %tv_norm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %tv_norm, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %do.body, %entry.if.end14_crit_edge
  %call15 = tail call i32 @drm_mode_create_tv_properties(ptr noundef %1, i32 noundef %cond, ptr noundef nonnull @nv17_tv_norm_names) #6
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %tv_select_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 61
  %18 = ptrtoint ptr %tv_select_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tv_select_subconnector_property, align 4
  %select_subconnector = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 9
  %20 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %select_subconnector, align 4
  %conv = sext i32 %21 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %19, i64 noundef %conv) #6
  %tv_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 60
  %22 = ptrtoint ptr %tv_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tv_subconnector_property, align 4
  %subconnector = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %24 = ptrtoint ptr %subconnector to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %subconnector, align 4
  %conv17 = sext i32 %25 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %23, i64 noundef %conv17) #6
  %tv_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 62
  %26 = ptrtoint ptr %tv_mode_property to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tv_mode_property, align 4
  %tv_norm19 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %28 = ptrtoint ptr %tv_norm19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_norm19, align 4
  %conv20 = zext i32 %29 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %27, i64 noundef %conv20) #6
  %tv_flicker_reduction_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 69
  %30 = ptrtoint ptr %tv_flicker_reduction_property to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tv_flicker_reduction_property, align 4
  %flicker = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 4
  %32 = ptrtoint ptr %flicker to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flicker, align 4
  %conv22 = sext i32 %33 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %31, i64 noundef %conv22) #6
  %tv_saturation_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 71
  %34 = ptrtoint ptr %tv_saturation_property to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tv_saturation_property, align 4
  %saturation = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 5
  %36 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saturation, align 4
  %conv24 = sext i32 %37 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %35, i64 noundef %conv24) #6
  %tv_hue_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 72
  %38 = ptrtoint ptr %tv_hue_property to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tv_hue_property, align 4
  %hue = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 6
  %40 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hue, align 4
  %conv26 = sext i32 %41 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %39, i64 noundef %conv26) #6
  %tv_overscan_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 70
  %42 = ptrtoint ptr %tv_overscan_property to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tv_overscan_property, align 4
  %overscan = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 3
  %44 = ptrtoint ptr %overscan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %overscan, align 4
  %conv28 = sext i32 %45 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %43, i64 noundef %conv28) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  tail call void @kfree(ptr noundef %encoder) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.203, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %gpio3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio3, align 8
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %10 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mode)
  %cmp = icmp eq i32 %11, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tv_norm10 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %12 = ptrtoint ptr %tv_norm10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_norm10, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13
  %14 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mode, ptr %last_dpms, align 4
  %drm16 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %drm16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drm16, align 8
  %dev17 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 8
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %21 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcb, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %mode, i32 noundef %24) #10
  %ptv_200 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ptv_200, align 4
  %and = and i32 %26, -2
  store i32 %and, ptr %ptv_200, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp22 = icmp eq i32 %28, 1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef %mode) #6
  br label %if.end28

if.else:                                          ; preds = %if.end
  tail call void @nv04_dfp_update_fp_control(ptr noundef %encoder, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp24 = icmp eq i32 %mode, 0
  br i1 %cmp24, label %if.then25, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ptv_200, align 4
  %or = or i32 %30, 1
  store i32 %or, ptr %ptv_200, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else.if.end28_crit_edge, %if.then23
  %31 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptv_200, align 4
  %33 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i, !prof !48

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 53760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #6, !srcloc !52
  br label %nv_write_ptv.exit

if.else.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 53760, i32 noundef %32) #6
  br label %nv_write_ptv.exit

nv_write_ptv.exit:                                ; preds = %if.else.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp30 = icmp eq i32 %mode, 0
  %conv = zext i1 %cmp30 to i32
  %call31 = tail call i32 @nvkm_gpio_set(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %conv) #6
  %call34 = tail call i32 @nvkm_gpio_set(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %conv) #6
  tail call void @nv04_dac_update_dacclk(ptr noundef %encoder, i1 noundef zeroext %cmp30) #6
  br label %cleanup

cleanup:                                          ; preds = %nv_write_ptv.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv17_tv_mode_fixup(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef writeonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_norm1 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %0 = ptrtoint ptr %tv_norm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_norm1, align 4
  %call2 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %encoder) #6
  br i1 %call2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %storemerge = phi i32 [ %6, %if.then3 ], [ 90000, %if.end.if.end7_crit_edge ]
  %7 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %adjusted_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %8 = xor i1 %call2, true
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_private, align 4
  %tv_norm3 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %6 = ptrtoint ptr %tv_norm3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_norm3, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %7
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %display.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %arrayidx7 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %11, i32 1, i32 51
  %call8 = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %add = add i32 %call8, 6817068
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  tail call void %17(ptr noundef %encoder, i32 noundef 3) #6
  tail call void @nv04_dfp_disable(ptr noundef %1, i32 noundef %11) #6
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then:                                          ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %20 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn104 = load ptr, ptr %encoder_list, align 4
  %cmp15.not105 = icmp eq ptr %.pn104, %encoder_list
  br i1 %cmp15.not105, label %if.then.if.end32_crit_edge, label %for.body.lr.ph

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

for.body.lr.ph:                                   ; preds = %if.then
  %xor = xor i32 %11, 1
  %dual_link = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 24, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn106 = phi ptr [ %.pn104, %for.body.lr.ph ], [ %.pn, %if.end.for.body_crit_edge ]
  %dcb17 = getelementptr i8, ptr %.pn106, i32 80
  %21 = ptrtoint ptr %dcb17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcb17, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch = icmp eq i32 %25, 2
  br i1 %switch, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %crtc21 = getelementptr i8, ptr %.pn106, i32 48
  %26 = ptrtoint ptr %crtc21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc21, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %land.lhs.true22, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true
  %call23 = tail call i32 @nv04_dfp_get_bound_head(ptr noundef %1, ptr noundef %22) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %11)
  %cmp24 = icmp eq i32 %call23, %11
  br i1 %cmp24, label %if.then25, label %land.lhs.true22.if.end_crit_edge

land.lhs.true22.if.end_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dual_link, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26 = icmp ne i8 %29, 0
  tail call void @nv04_dfp_bind_head(ptr noundef %1, ptr noundef %22, i32 noundef %xor, i1 noundef zeroext %tobool26) #6
  br label %if.end

if.end:                                           ; preds = %if.then25, %land.lhs.true22.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %30 = ptrtoint ptr %.pn106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn106, align 4
  %cmp15.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp15.not, label %if.end.if.end32_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.end.if.end32_crit_edge, %if.then.if.end32_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp34 = icmp eq i32 %.pr, 1
  br i1 %cmp34, label %if.then35, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool36.not = icmp eq i32 %11, 0
  %or = select i1 %tobool36.not, i8 9, i8 1
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx7, align 1
  %or37 = or i8 %33, %or
  store i8 %or37, ptr %arrayidx7, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32.if.end39_crit_edge, %entry.if.end39_crit_edge
  %34 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3, i32 0, i32 6
  %36 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !48

if.then5.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %37, i32 %add
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %38, %if.then5.i ], [ %call10.i, %if.else.i ]
  %and = and i32 %_data.0.i, -50
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %39 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp43 = icmp eq i8 %40, 5
  %spec.select.v = select i1 %cmp43, i32 1703937, i32 1
  %spec.select = or i32 %spec.select.v, %and
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp49 = icmp eq i32 %42, 1
  br i1 %cmp49, label %if.then51, label %if.else58

if.then51:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool53.not = icmp eq i32 %11, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %or55 = or i32 %spec.select, 288
  br label %if.end60

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %or52 = and i32 %spec.select, -305
  %and56 = or i32 %or52, 32
  br label %if.end60

if.else58:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or59 = or i32 %spec.select, 16
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.else, %if.then54
  %dacclk.1 = phi i32 [ %or55, %if.then54 ], [ %and56, %if.else ], [ %or59, %if.else58 ]
  %43 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i, align 4
  %map.i97 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3, i32 0, i32 6
  %45 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i97, align 8
  %tobool2.not.i98 = icmp eq ptr %46, null
  br i1 %tobool2.not.i98, label %if.else.i102, label %do.body.i, !prof !48

do.body.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i97, align 8
  %add.ptr.i99 = getelementptr i8, ptr %48, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %dacclk.1) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit

if.else.i102:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i100 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3
  %conv.i101 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i100, i32 noundef 4, i64 noundef %conv.i101, i32 noundef %dacclk.1) #6
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i102, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %tv_norm = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %8 = ptrtoint ptr %tv_norm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_norm, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv17_tv_update_rescaler(ptr noundef %encoder) #6
  tail call void @nv17_tv_update_properties(ptr noundef %encoder) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv17_ctv_update_rescaler(ptr noundef %encoder) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1
  tail call void @nv17_tv_state_load(ptr noundef %1, ptr noundef %state) #6
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %12 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %13)
  %cmp9 = icmp ult i16 %13, 68
  %call12 = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %add = add i32 %call12, 6817288
  %14 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !48

do.body.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -268435456) #6, !srcloc !52
  br label %if.end16

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef -268435456) #6
  br label %if.end16

if.else13:                                        ; preds = %if.end
  br i1 %tobool2.not.i, label %if.else.i54, label %do.body.i51, !prof !48

do.body.i51:                                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 1048576) #6, !srcloc !52
  br label %if.end16

if.else.i54:                                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i52 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %conv.i53 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i52, i32 noundef 4, i64 noundef %conv.i53, i32 noundef 1048576) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else.i54, %do.body.i51, %if.else.i, %do.body.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  tail call void %23(ptr noundef %encoder, i32 noundef 0) #6
  %drm19 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %drm19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm19, align 8
  %dev20 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev20, align 8
  %dev21 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev21, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %call22 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #6
  %name23 = getelementptr inbounds %struct.drm_connector, ptr %call22, i32 0, i32 7
  %30 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name23, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 8
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %34 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %or, align 1
  %38 = tail call i8 @llvm.cttz.i8(i8 %37, i1 true), !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %iszero = icmp eq i8 %37, 0
  %narrow = add nuw nsw i8 %38, 65
  %narrow45 = select i1 %iszero, i8 64, i8 %narrow
  %add25 = zext i8 %narrow45 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %31, i32 noundef %33, i32 noundef %add25) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv17_tv_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %drm_mode, ptr nocapture noundef readnone %adjusted_mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %state = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1
  %tv_norm9 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %12 = ptrtoint ptr %tv_norm9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_norm9, align 4
  %arrayidx10 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13
  %arrayidx11 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 1, i32 83
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 1, i32 84
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13, align 1
  %ramdac_630 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 18
  %16 = ptrtoint ptr %ramdac_630 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %ramdac_630, align 4
  %tv_setup = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 20
  %17 = ptrtoint ptr %tv_setup to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tv_setup, align 4
  %ramdac_8c0 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 37
  %18 = ptrtoint ptr %ramdac_8c0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ramdac_8c0, align 4
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %ptv_200 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 319885568, i32 319885584
  %21 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %ptv_200, align 4
  %ptv_20c = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 7
  %22 = ptrtoint ptr %ptv_20c to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8421392, ptr %ptv_20c, align 4
  %ptv_304 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %ptv_304 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 47185920, ptr %ptv_304, align 4
  %ptv_600 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %ptv_600 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ptv_600, align 4
  %ptv_60c = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 15
  %25 = ptrtoint ptr %ptv_60c to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ptv_60c, align 4
  %ptv_610 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 16
  %26 = ptrtoint ptr %ptv_610 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 31457280, ptr %ptv_610, align 4
  %27 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13, i32 1
  %vdisplay = getelementptr inbounds %struct.anon.205, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vdisplay, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.then.if.end24_crit_edge [
    i32 576, label %if.then.if.end24.sink.split_crit_edge
    i32 480, label %if.then20
  ]

if.then.if.end24.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.sink.split

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then20, %if.then.if.end24.sink.split_crit_edge
  %.sink206 = phi i32 [ 15728640, %if.then20 ], [ 18874368, %if.then.if.end24.sink.split_crit_edge ]
  %.sink = phi i32 [ 19, %if.then20 ], [ 51, %if.then.if.end24.sink.split_crit_edge ]
  %ptv_50821 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %ptv_50821 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink206, ptr %ptv_50821, align 4
  %ptv_61422 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 17
  %32 = ptrtoint ptr %ptv_61422 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %ptv_61422, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.then.if.end24_crit_edge
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %33 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp25 = icmp ugt i8 %34, 3
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %ptv_500 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %ptv_500 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 59616, ptr %ptv_500, align 4
  %ptv_504 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 10
  %36 = ptrtoint ptr %ptv_504 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5904, ptr %ptv_504, align 4
  %ptv_604 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 13
  %37 = ptrtoint ptr %ptv_604 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ptv_604, align 4
  %ptv_608 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %ptv_608 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ptv_608, align 4
  br label %for.body.preheader

if.else28:                                        ; preds = %if.end24
  %39 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vdisplay, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %40, label %if.else28.for.body.preheader_crit_edge [
    i32 576, label %if.then32
    i32 480, label %if.then41
  ]

if.else28.for.body.preheader_crit_edge:           ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %ptv_60433 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 13
  %42 = ptrtoint ptr %ptv_60433 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32, ptr %ptv_60433, align 4
  %ptv_60834 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 14
  %43 = ptrtoint ptr %ptv_60834 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %ptv_60834, align 4
  %ptv_50035 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 9
  %44 = ptrtoint ptr %ptv_50035 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 104208, ptr %ptv_50035, align 4
  %ptv_50436 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 10
  %45 = ptrtoint ptr %ptv_50436 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 26864, ptr %ptv_50436, align 4
  br label %for.body.preheader

if.then41:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %ptv_60442 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 13
  %46 = ptrtoint ptr %ptv_60442 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %ptv_60442, align 4
  %ptv_60843 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 14
  %47 = ptrtoint ptr %ptv_60843 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 32, ptr %ptv_60843, align 4
  %ptv_50044 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 9
  %48 = ptrtoint ptr %ptv_50044 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 19344, ptr %ptv_50044, align 4
  %ptv_50445 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 10
  %49 = ptrtoint ptr %ptv_50445 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 111744, ptr %ptv_50445, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then41, %if.then32, %if.else28.for.body.preheader_crit_edge, %if.then27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0203 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx51 = getelementptr %struct.anon.205, ptr %27, i32 0, i32 3, i32 %i.0203
  %50 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx51, align 1
  %arrayidx53 = getelementptr [64 x i8], ptr %state, i32 0, i32 %i.0203
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx53, align 1
  %inc = add nuw nsw i32 %i.0203, 1
  %exitcond205.not = icmp eq i32 %inc, 64
  br i1 %exitcond205.not, label %for.body.if.end123_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end123_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.else54:                                        ; preds = %entry
  %53 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13, i32 1
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %if.else54
  %i.1202 = phi i32 [ 0, %if.else54 ], [ %inc63, %for.body58.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.anon.206, ptr %53, i32 0, i32 1, i32 %i.1202
  %54 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx59, align 4
  %arrayidx61 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 41, i32 %i.1202
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx61, align 4
  %inc63 = add nuw nsw i32 %i.1202, 1
  %exitcond.not = icmp eq i32 %inc63, 38
  br i1 %exitcond.not, label %for.end64, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

for.end64:                                        ; preds = %for.body58
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 1
  %57 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hdisplay, align 4
  %conv65 = zext i16 %58 to i32
  %sub = add nsw i32 %conv65, -1
  %fp_horiz_regs = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 28
  %59 = ptrtoint ptr %fp_horiz_regs to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub, ptr %fp_horiz_regs, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 4
  %60 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %htotal, align 2
  %conv67 = zext i16 %61 to i32
  %sub68 = add nsw i32 %conv67, -1
  %arrayidx70 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 28, i32 1
  %62 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub68, ptr %arrayidx70, align 4
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 2
  %63 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hsync_start, align 2
  %conv71 = zext i16 %64 to i32
  %sub72 = add nsw i32 %conv71, -1
  %arrayidx74 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 28, i32 3
  %65 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub72, ptr %arrayidx74, align 4
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 3
  %66 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hsync_end, align 4
  %conv75 = zext i16 %67 to i32
  %sub76 = add nsw i32 %conv75, -1
  %arrayidx78 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 28, i32 4
  %68 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub76, ptr %arrayidx78, align 4
  %69 = load i16, ptr %hdisplay, align 4
  %conv80 = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 719, i16 %69)
  %cmp86 = icmp ugt i16 %69, 719
  %sub83 = add nsw i32 %conv80, -600
  %div = sdiv i32 %sub83, 40
  %sub84 = add nsw i32 %div, -1
  %cond = select i1 %cmp86, i32 %sub84, i32 1
  %add = add nsw i32 %cond, %conv80
  %arrayidx89 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 28, i32 2
  %70 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add, ptr %arrayidx89, align 4
  %vdisplay90 = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 6
  %71 = ptrtoint ptr %vdisplay90 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vdisplay90, align 2
  %conv91 = zext i16 %72 to i32
  %sub92 = add nsw i32 %conv91, -1
  %fp_vert_regs = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 29
  %73 = ptrtoint ptr %fp_vert_regs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub92, ptr %fp_vert_regs, align 4
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 9
  %74 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vtotal, align 4
  %conv94 = zext i16 %75 to i32
  %sub95 = add nsw i32 %conv94, -1
  %arrayidx97 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 29, i32 1
  %76 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub95, ptr %arrayidx97, align 4
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 7
  %77 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vsync_start, align 4
  %conv98 = zext i16 %78 to i32
  %sub99 = add nsw i32 %conv98, -1
  %arrayidx101 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 29, i32 3
  %79 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub99, ptr %arrayidx101, align 4
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 8
  %80 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vsync_end, align 2
  %conv102 = zext i16 %81 to i32
  %sub103 = add nsw i32 %conv102, -1
  %arrayidx105 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 29, i32 4
  %82 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub103, ptr %arrayidx105, align 4
  %83 = load i16, ptr %vdisplay90, align 2
  %conv107 = zext i16 %83 to i32
  %sub108 = add nsw i32 %conv107, -1
  %arrayidx110 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 29, i32 2
  %84 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub108, ptr %arrayidx110, align 4
  %fp_control = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 31
  %85 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 286261248, ptr %fp_control, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %53, i32 0, i32 11
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  %and = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool111.not, i32 286261248, i32 286261249
  %88 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.store.select, ptr %fp_control, align 4
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and117 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %for.end64.if.end122_crit_edge, label %if.then119

for.end64.if.end122_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then119:                                       ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  %or121 = or i32 %spec.store.select, 16
  %91 = ptrtoint ptr %fp_control to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or121, ptr %fp_control, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %for.end64.if.end122_crit_edge
  %fp_debug_0 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 33
  %92 = ptrtoint ptr %fp_debug_0 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 17830289, ptr %fp_debug_0, align 4
  %fp_debug_2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 35
  %93 = ptrtoint ptr %fp_debug_2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %fp_debug_2, align 4
  %fp_margin_color = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %7, i32 36
  %94 = ptrtoint ptr %fp_margin_color to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8392832, ptr %fp_margin_color, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %for.body.if.end123_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_tv_detect(ptr noundef %encoder, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dcb3 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dcb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb3, align 4
  %pin_mask = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 10
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.anon.217, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device2.i, align 8
  %quirk.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quirk.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.get_tv_detect_quirks.exit_crit_edge, label %land.lhs.true.i

entry.get_tv_detect_quirks.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_tv_detect_quirks.exit

land.lhs.true.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.i = icmp eq i8 %13, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.get_tv_detect_quirks.exit_crit_edge, label %get_tv_detect_quirks.exit.thread

land.lhs.true.i.get_tv_detect_quirks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_tv_detect_quirks.exit

get_tv_detect_quirks.exit:                        ; preds = %land.lhs.true.i.get_tv_detect_quirks.exit_crit_edge, %entry.get_tv_detect_quirks.exit_crit_edge
  %call5 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %encoder) #6
  br i1 %call5, label %get_tv_detect_quirks.exit.cleanup_crit_edge, label %if.then6

get_tv_detect_quirks.exit.cleanup_crit_edge:      ; preds = %get_tv_detect_quirks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_tv_detect_quirks.exit.thread:                 ; preds = %land.lhs.true.i
  %conv.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %pin_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %pin_mask, align 4
  %call587 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %encoder) #6
  br i1 %call587, label %get_tv_detect_quirks.exit.thread.cleanup_crit_edge, label %get_tv_detect_quirks.exit.thread.if.end23_crit_edge

get_tv_detect_quirks.exit.thread.if.end23_crit_edge: ; preds = %get_tv_detect_quirks.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

get_tv_detect_quirks.exit.thread.cleanup_crit_edge: ; preds = %get_tv_detect_quirks.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %get_tv_detect_quirks.exit
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %15 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %chipset, align 2
  %17 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 66, i16 %17)
  %switch = icmp eq i16 %17, 66
  br i1 %switch, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then6
  %18 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encoder, align 4
  %dev_private.i.i82 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i.i82, align 4
  %priv.i83 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 2, i32 3, i32 0, i32 5
  %22 = ptrtoint ptr %priv.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i83, align 4
  %device2.i84 = getelementptr inbounds %struct.anon.218, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device2.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2.i84, align 8
  %gpio3.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %gpio3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpio3.i, align 8
  %call4.i = tail call i32 @nv04_dac_output_offset(ptr noundef %encoder) #6
  %tvdactestval.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 18, i32 7
  %28 = ptrtoint ptr %tvdactestval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tvdactestval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i85 = icmp eq i32 %29, 0
  %spec.select.i = select i1 %tobool.not.i85, i32 136555650, i32 %29
  %add.i = add i32 %call4.i, 6817068
  %30 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3, i32 0, i32 6
  %32 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %33, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then5.i.i, !prof !48

if.then5.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %add.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit.i

if.else.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %add.i to i64
  %call10.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i) #6
  br label %NVReadRAMDAC.exit.i

NVReadRAMDAC.exit.i:                              ; preds = %if.else.i.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %34, %if.then5.i.i ], [ %call10.i.i, %if.else.i.i ]
  %call8.i = tail call i32 @nvkm_gpio_get(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1) #6
  %call9.i = tail call i32 @nvkm_gpio_get(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1) #6
  %35 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i.i82, align 4
  %37 = and i32 %_data.0.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 6817828, i32 6826020
  %map.i117.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 3, i32 0, i32 6
  %38 = ptrtoint ptr %map.i117.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i117.i, align 8
  %tobool2.not.i118.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i118.i, label %if.else.i124.i, label %if.then5.i120.i, !prof !48

if.then5.i120.i:                                  ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i119.i = getelementptr i8, ptr %39, i32 %spec.select.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit126.i

if.else.i124.i:                                   ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i121.i = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 3
  %conv.i122.i = zext i32 %spec.select.i.i to i64
  %call10.i123.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i121.i, i32 noundef 4, i64 noundef %conv.i122.i) #6
  br label %NVReadRAMDAC.exit126.i

NVReadRAMDAC.exit126.i:                           ; preds = %if.else.i124.i, %if.then5.i120.i
  %_data.0.i125.i = phi i32 [ %40, %if.then5.i120.i ], [ %call10.i123.i, %if.else.i124.i ]
  %41 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i129.i = select i1 %tobool.not.i.i, i32 6817836, i32 6826028
  %map.i130.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = ptrtoint ptr %map.i130.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i130.i, align 8
  %tobool2.not.i131.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i131.i, label %if.else.i137.i, label %if.then5.i133.i, !prof !48

if.then5.i133.i:                                  ; preds = %NVReadRAMDAC.exit126.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i132.i = getelementptr i8, ptr %44, i32 %spec.select.i129.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit139.i

if.else.i137.i:                                   ; preds = %NVReadRAMDAC.exit126.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i134.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  %conv.i135.i = zext i32 %spec.select.i129.i to i64
  %call10.i136.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i134.i, i32 noundef 4, i64 noundef %conv.i135.i) #6
  br label %NVReadRAMDAC.exit139.i

NVReadRAMDAC.exit139.i:                           ; preds = %if.else.i137.i, %if.then5.i133.i
  %_data.0.i138.i = phi i32 [ %45, %if.then5.i133.i ], [ %call10.i136.i, %if.else.i137.i ]
  %46 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i142.i = select i1 %tobool.not.i.i, i32 6817840, i32 6826032
  %map.i143.i = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %48 = ptrtoint ptr %map.i143.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i143.i, align 8
  %tobool2.not.i144.i = icmp eq ptr %49, null
  br i1 %tobool2.not.i144.i, label %if.else.i150.i, label %if.then5.i146.i, !prof !48

if.then5.i146.i:                                  ; preds = %NVReadRAMDAC.exit139.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i145.i = getelementptr i8, ptr %49, i32 %spec.select.i142.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit152.i

if.else.i150.i:                                   ; preds = %NVReadRAMDAC.exit139.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i147.i = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  %conv.i148.i = zext i32 %spec.select.i142.i to i64
  %call10.i149.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i147.i, i32 noundef 4, i64 noundef %conv.i148.i) #6
  br label %NVReadRAMDAC.exit152.i

NVReadRAMDAC.exit152.i:                           ; preds = %if.else.i150.i, %if.then5.i146.i
  %_data.0.i151.i = phi i32 [ %50, %if.then5.i146.i ], [ %call10.i149.i, %if.else.i150.i ]
  %51 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i155.i = select i1 %tobool.not.i.i, i32 6817864, i32 6826056
  %map.i156.i = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = ptrtoint ptr %map.i156.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i156.i, align 8
  %tobool2.not.i157.i = icmp eq ptr %54, null
  br i1 %tobool2.not.i157.i, label %if.else.i163.i, label %if.then5.i159.i, !prof !48

if.then5.i159.i:                                  ; preds = %NVReadRAMDAC.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i158.i = getelementptr i8, ptr %54, i32 %spec.select.i155.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit165.i

if.else.i163.i:                                   ; preds = %NVReadRAMDAC.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i160.i = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 3
  %conv.i161.i = zext i32 %spec.select.i155.i to i64
  %call10.i162.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i160.i, i32 noundef 4, i64 noundef %conv.i161.i) #6
  br label %NVReadRAMDAC.exit165.i

NVReadRAMDAC.exit165.i:                           ; preds = %if.else.i163.i, %if.then5.i159.i
  %_data.0.i164.i = phi i32 [ %55, %if.then5.i159.i ], [ %call10.i162.i, %if.else.i163.i ]
  %add14.i = add i32 %call4.i, 6817288
  %56 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i168.i = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3, i32 0, i32 6
  %58 = ptrtoint ptr %map.i168.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i168.i, align 8
  %tobool2.not.i169.i = icmp eq ptr %59, null
  br i1 %tobool2.not.i169.i, label %if.else.i175.i, label %if.then5.i171.i, !prof !48

if.then5.i171.i:                                  ; preds = %NVReadRAMDAC.exit165.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i170.i = getelementptr i8, ptr %59, i32 %add14.i
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit177.i

if.else.i175.i:                                   ; preds = %NVReadRAMDAC.exit165.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i172.i = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3
  %conv.i173.i = zext i32 %add14.i to i64
  %call10.i174.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i172.i, i32 noundef 4, i64 noundef %conv.i173.i) #6
  br label %NVReadRAMDAC.exit177.i

NVReadRAMDAC.exit177.i:                           ; preds = %if.else.i175.i, %if.then5.i171.i
  %_data.0.i176.i = phi i32 [ %60, %if.then5.i171.i ], [ %call10.i174.i, %if.else.i175.i ]
  %61 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i180.i = select i1 %tobool.not.i.i, i32 6818844, i32 6827036
  %map.i181.i = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3, i32 0, i32 6
  %63 = ptrtoint ptr %map.i181.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i181.i, align 8
  %tobool2.not.i182.i = icmp eq ptr %64, null
  br i1 %tobool2.not.i182.i, label %if.else.i188.i, label %if.then5.i184.i, !prof !48

if.then5.i184.i:                                  ; preds = %NVReadRAMDAC.exit177.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i183.i = getelementptr i8, ptr %64, i32 %spec.select.i180.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit190.i

if.else.i188.i:                                   ; preds = %NVReadRAMDAC.exit177.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i185.i = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3
  %conv.i186.i = zext i32 %spec.select.i180.i to i64
  %call10.i187.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i185.i, i32 noundef 4, i64 noundef %conv.i186.i) #6
  br label %NVReadRAMDAC.exit190.i

NVReadRAMDAC.exit190.i:                           ; preds = %if.else.i188.i, %if.then5.i184.i
  %_data.0.i189.i = phi i32 [ %65, %if.then5.i184.i ], [ %call10.i187.i, %if.else.i188.i ]
  %66 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i193.i = select i1 %tobool.not.i.i, i32 6818836, i32 6827028
  %map.i194.i = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 2, i32 3, i32 0, i32 6
  %68 = ptrtoint ptr %map.i194.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i194.i, align 8
  %tobool2.not.i195.i = icmp eq ptr %69, null
  br i1 %tobool2.not.i195.i, label %if.else.i201.i, label %if.then5.i197.i, !prof !48

if.then5.i197.i:                                  ; preds = %NVReadRAMDAC.exit190.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i196.i = getelementptr i8, ptr %69, i32 %spec.select.i193.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit203.i

if.else.i201.i:                                   ; preds = %NVReadRAMDAC.exit190.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i198.i = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 2, i32 3
  %conv.i199.i = zext i32 %spec.select.i193.i to i64
  %call10.i200.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i198.i, i32 noundef 4, i64 noundef %conv.i199.i) #6
  br label %NVReadRAMDAC.exit203.i

NVReadRAMDAC.exit203.i:                           ; preds = %if.else.i201.i, %if.then5.i197.i
  %_data.0.i202.i = phi i32 [ %70, %if.then5.i197.i ], [ %call10.i200.i, %if.else.i201.i ]
  %71 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_private.i.i82, align 4
  %spec.select.i206.i = select i1 %tobool.not.i.i, i32 6818924, i32 6827116
  %map.i207.i = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 2, i32 3, i32 0, i32 6
  %73 = ptrtoint ptr %map.i207.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map.i207.i, align 8
  %tobool2.not.i208.i = icmp eq ptr %74, null
  br i1 %tobool2.not.i208.i, label %if.else.i214.i, label %if.then5.i210.i, !prof !48

if.then5.i210.i:                                  ; preds = %NVReadRAMDAC.exit203.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i209.i = getelementptr i8, ptr %74, i32 %spec.select.i206.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit216.i

if.else.i214.i:                                   ; preds = %NVReadRAMDAC.exit203.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i211.i = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 2, i32 3
  %conv.i212.i = zext i32 %spec.select.i206.i to i64
  %call10.i213.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i211.i, i32 noundef 4, i64 noundef %conv.i212.i) #6
  br label %NVReadRAMDAC.exit216.i

NVReadRAMDAC.exit216.i:                           ; preds = %if.else.i214.i, %if.then5.i210.i
  %_data.0.i215.i = phi i32 [ %75, %if.then5.i210.i ], [ %call10.i213.i, %if.else.i214.i ]
  %call19.i = tail call i32 @nvkm_gpio_set(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef 1) #6
  %call20.i = tail call i32 @nvkm_gpio_set(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef 1) #6
  %76 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i220.i = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 2, i32 3, i32 0, i32 6
  %78 = ptrtoint ptr %map.i220.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map.i220.i, align 8
  %tobool2.not.i221.i = icmp eq ptr %79, null
  br i1 %tobool2.not.i221.i, label %if.else.i225.i, label %do.body.i.i, !prof !48

do.body.i.i:                                      ; preds = %NVReadRAMDAC.exit216.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %map.i220.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map.i220.i, align 8
  %add.ptr.i222.i = getelementptr i8, ptr %81, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 1343) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit.i

if.else.i225.i:                                   ; preds = %NVReadRAMDAC.exit216.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i223.i = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 2, i32 3
  %conv.i224.i = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i223.i, i32 noundef 4, i64 noundef %conv.i224.i, i32 noundef 1343) #6
  br label %NVWriteRAMDAC.exit.i

NVWriteRAMDAC.exit.i:                             ; preds = %if.else.i225.i, %do.body.i.i
  %82 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i229.i = getelementptr inbounds %struct.nouveau_drm, ptr %83, i32 0, i32 2, i32 3, i32 0, i32 6
  %84 = ptrtoint ptr %map.i229.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map.i229.i, align 8
  %tobool2.not.i230.i = icmp eq ptr %85, null
  br i1 %tobool2.not.i230.i, label %if.else.i235.i, label %do.body.i232.i, !prof !48

do.body.i232.i:                                   ; preds = %NVWriteRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %map.i229.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map.i229.i, align 8
  %add.ptr.i231.i = getelementptr i8, ptr %87, i32 %spec.select.i129.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231.i, i32 1047) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit236.i

if.else.i235.i:                                   ; preds = %NVWriteRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i233.i = getelementptr inbounds %struct.nouveau_drm, ptr %83, i32 0, i32 2, i32 3
  %conv.i234.i = zext i32 %spec.select.i129.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i233.i, i32 noundef 4, i64 noundef %conv.i234.i, i32 noundef 1047) #6
  br label %NVWriteRAMDAC.exit236.i

NVWriteRAMDAC.exit236.i:                          ; preds = %if.else.i235.i, %do.body.i232.i
  %88 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i240.i = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3, i32 0, i32 6
  %90 = ptrtoint ptr %map.i240.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map.i240.i, align 8
  %tobool2.not.i241.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i241.i, label %if.else.i246.i, label %do.body.i243.i, !prof !48

do.body.i243.i:                                   ; preds = %NVWriteRAMDAC.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %map.i240.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map.i240.i, align 8
  %add.ptr.i242.i = getelementptr i8, ptr %93, i32 %spec.select.i142.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242.i, i32 1183) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit247.i

if.else.i246.i:                                   ; preds = %NVWriteRAMDAC.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i244.i = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3
  %conv.i245.i = zext i32 %spec.select.i142.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i244.i, i32 noundef 4, i64 noundef %conv.i245.i, i32 noundef 1183) #6
  br label %NVWriteRAMDAC.exit247.i

NVWriteRAMDAC.exit247.i:                          ; preds = %if.else.i246.i, %do.body.i243.i
  %94 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i251.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3, i32 0, i32 6
  %96 = ptrtoint ptr %map.i251.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map.i251.i, align 8
  %tobool2.not.i252.i = icmp eq ptr %97, null
  br i1 %tobool2.not.i252.i, label %if.else.i257.i, label %do.body.i254.i, !prof !48

do.body.i254.i:                                   ; preds = %NVWriteRAMDAC.exit247.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %map.i251.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i251.i, align 8
  %add.ptr.i253.i = getelementptr i8, ptr %99, i32 %spec.select.i155.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253.i, i32 286261265) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit258.i

if.else.i257.i:                                   ; preds = %NVWriteRAMDAC.exit247.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i255.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3
  %conv.i256.i = zext i32 %spec.select.i155.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i255.i, i32 noundef 4, i64 noundef %conv.i256.i, i32 noundef 286261265) #6
  br label %NVWriteRAMDAC.exit258.i

NVWriteRAMDAC.exit258.i:                          ; preds = %if.else.i257.i, %do.body.i254.i
  %100 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i261.i = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3, i32 0, i32 6
  %102 = ptrtoint ptr %map.i261.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map.i261.i, align 8
  %tobool2.not.i262.i = icmp eq ptr %103, null
  br i1 %tobool2.not.i262.i, label %if.else.i267.i, label %do.body.i264.i, !prof !48

do.body.i264.i:                                   ; preds = %NVWriteRAMDAC.exit258.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %map.i261.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map.i261.i, align 8
  %add.ptr.i263.i = getelementptr i8, ptr %105, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263.i, i32 0) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit268.i

if.else.i267.i:                                   ; preds = %NVWriteRAMDAC.exit258.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i265.i = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3
  %conv.i266.i = zext i32 %add14.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i265.i, i32 noundef 4, i64 noundef %conv.i266.i, i32 noundef 0) #6
  br label %NVWriteRAMDAC.exit268.i

NVWriteRAMDAC.exit268.i:                          ; preds = %if.else.i267.i, %do.body.i264.i
  %and23.i = and i32 %_data.0.i.i, -256
  %or.i = or i32 %and23.i, 34
  %106 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i271.i = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 2, i32 3, i32 0, i32 6
  %108 = ptrtoint ptr %map.i271.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map.i271.i, align 8
  %tobool2.not.i272.i = icmp eq ptr %109, null
  br i1 %tobool2.not.i272.i, label %if.else.i277.i, label %do.body.i274.i, !prof !48

do.body.i274.i:                                   ; preds = %NVWriteRAMDAC.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %map.i271.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %map.i271.i, align 8
  %add.ptr.i273.i = getelementptr i8, ptr %111, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273.i, i32 %or.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit278.i

if.else.i277.i:                                   ; preds = %NVWriteRAMDAC.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i275.i = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 2, i32 3
  %conv.i276.i = zext i32 %add.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i275.i, i32 noundef 4, i64 noundef %conv.i276.i, i32 noundef %or.i) #6
  br label %NVWriteRAMDAC.exit278.i

NVWriteRAMDAC.exit278.i:                          ; preds = %if.else.i277.i, %do.body.i274.i
  tail call void @msleep(i32 noundef 1) #6
  %or26.i = or i32 %and23.i, 33
  %112 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i281.i = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = ptrtoint ptr %map.i281.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i281.i, align 8
  %tobool2.not.i282.i = icmp eq ptr %115, null
  br i1 %tobool2.not.i282.i, label %if.else.i287.i, label %do.body.i284.i, !prof !48

do.body.i284.i:                                   ; preds = %NVWriteRAMDAC.exit278.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %map.i281.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %map.i281.i, align 8
  %add.ptr.i283.i = getelementptr i8, ptr %117, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283.i, i32 %or26.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit288.i

if.else.i287.i:                                   ; preds = %NVWriteRAMDAC.exit278.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i285.i = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  %conv.i286.i = zext i32 %add.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i285.i, i32 noundef 4, i64 noundef %conv.i286.i, i32 noundef %or26.i) #6
  br label %NVWriteRAMDAC.exit288.i

NVWriteRAMDAC.exit288.i:                          ; preds = %if.else.i287.i, %do.body.i284.i
  %118 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i292.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3, i32 0, i32 6
  %120 = ptrtoint ptr %map.i292.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %map.i292.i, align 8
  %tobool2.not.i293.i = icmp eq ptr %121, null
  br i1 %tobool2.not.i293.i, label %if.else.i298.i, label %do.body.i295.i, !prof !48

do.body.i295.i:                                   ; preds = %NVWriteRAMDAC.exit288.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %map.i292.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map.i292.i, align 8
  %add.ptr.i294.i = getelementptr i8, ptr %123, i32 %spec.select.i180.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294.i, i32 1048576) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit299.i

if.else.i298.i:                                   ; preds = %NVWriteRAMDAC.exit288.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i296.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3
  %conv.i297.i = zext i32 %spec.select.i180.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i296.i, i32 noundef 4, i64 noundef %conv.i297.i, i32 noundef 1048576) #6
  br label %NVWriteRAMDAC.exit299.i

NVWriteRAMDAC.exit299.i:                          ; preds = %if.else.i298.i, %do.body.i295.i
  %124 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i303.i = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 2, i32 3, i32 0, i32 6
  %126 = ptrtoint ptr %map.i303.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %map.i303.i, align 8
  %tobool2.not.i304.i = icmp eq ptr %127, null
  br i1 %tobool2.not.i304.i, label %if.else.i309.i, label %do.body.i306.i, !prof !48

do.body.i306.i:                                   ; preds = %NVWriteRAMDAC.exit299.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %map.i303.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map.i303.i, align 8
  %add.ptr.i305.i = getelementptr i8, ptr %129, i32 %spec.select.i193.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305.i, i32 262144) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit310.i

if.else.i309.i:                                   ; preds = %NVWriteRAMDAC.exit299.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i307.i = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 2, i32 3
  %conv.i308.i = zext i32 %spec.select.i193.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i307.i, i32 noundef 4, i64 noundef %conv.i308.i, i32 noundef 262144) #6
  br label %NVWriteRAMDAC.exit310.i

NVWriteRAMDAC.exit310.i:                          ; preds = %if.else.i309.i, %do.body.i306.i
  %shr27.i = lshr i32 %spec.select.i, 10
  %and28.i = and i32 %shr27.i, 1023
  %130 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i314.i = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3, i32 0, i32 6
  %132 = ptrtoint ptr %map.i314.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map.i314.i, align 8
  %tobool2.not.i315.i = icmp eq ptr %133, null
  br i1 %tobool2.not.i315.i, label %if.else.i320.i, label %do.body.i317.i, !prof !48

do.body.i317.i:                                   ; preds = %NVWriteRAMDAC.exit310.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %134 = ptrtoint ptr %map.i314.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map.i314.i, align 8
  %add.ptr.i316.i = getelementptr i8, ptr %135, i32 %spec.select.i206.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i316.i, i32 %and28.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit321.i

if.else.i320.i:                                   ; preds = %NVWriteRAMDAC.exit310.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i318.i = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3
  %conv.i319.i = zext i32 %spec.select.i206.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i318.i, i32 noundef 4, i64 noundef %conv.i319.i, i32 noundef %and28.i) #6
  br label %NVWriteRAMDAC.exit321.i

NVWriteRAMDAC.exit321.i:                          ; preds = %if.else.i320.i, %do.body.i317.i
  tail call void @msleep(i32 noundef 20) #6
  %136 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i324.i = getelementptr inbounds %struct.nouveau_drm, ptr %137, i32 0, i32 2, i32 3, i32 0, i32 6
  %138 = ptrtoint ptr %map.i324.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map.i324.i, align 8
  %tobool2.not.i325.i = icmp eq ptr %139, null
  br i1 %tobool2.not.i325.i, label %if.else.i331.i, label %if.then5.i327.i, !prof !48

if.then5.i327.i:                                  ; preds = %NVWriteRAMDAC.exit321.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i326.i = getelementptr i8, ptr %139, i32 %add14.i
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit333.i

if.else.i331.i:                                   ; preds = %NVWriteRAMDAC.exit321.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i328.i = getelementptr inbounds %struct.nouveau_drm, ptr %137, i32 0, i32 2, i32 3
  %conv.i329.i = zext i32 %add14.i to i64
  %call10.i330.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i328.i, i32 noundef 4, i64 noundef %conv.i329.i) #6
  br label %NVReadRAMDAC.exit333.i

NVReadRAMDAC.exit333.i:                           ; preds = %if.else.i331.i, %if.then5.i327.i
  %_data.0.i332.i = phi i32 [ %140, %if.then5.i327.i ], [ %call10.i330.i, %if.else.i331.i ]
  %and33.i = and i32 %spec.select.i, 1023
  %141 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i337.i = getelementptr inbounds %struct.nouveau_drm, ptr %142, i32 0, i32 2, i32 3, i32 0, i32 6
  %143 = ptrtoint ptr %map.i337.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map.i337.i, align 8
  %tobool2.not.i338.i = icmp eq ptr %144, null
  br i1 %tobool2.not.i338.i, label %if.else.i343.i, label %do.body.i340.i, !prof !48

do.body.i340.i:                                   ; preds = %NVReadRAMDAC.exit333.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %map.i337.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %map.i337.i, align 8
  %add.ptr.i339.i = getelementptr i8, ptr %146, i32 %spec.select.i206.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i339.i, i32 %and33.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit344.i

if.else.i343.i:                                   ; preds = %NVReadRAMDAC.exit333.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i341.i = getelementptr inbounds %struct.nouveau_drm, ptr %142, i32 0, i32 2, i32 3
  %conv.i342.i = zext i32 %spec.select.i206.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i341.i, i32 noundef 4, i64 noundef %conv.i342.i, i32 noundef %and33.i) #6
  br label %NVWriteRAMDAC.exit344.i

NVWriteRAMDAC.exit344.i:                          ; preds = %if.else.i343.i, %do.body.i340.i
  tail call void @msleep(i32 noundef 20) #6
  %147 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i347.i = getelementptr inbounds %struct.nouveau_drm, ptr %148, i32 0, i32 2, i32 3, i32 0, i32 6
  %149 = ptrtoint ptr %map.i347.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %map.i347.i, align 8
  %tobool2.not.i348.i = icmp eq ptr %150, null
  br i1 %tobool2.not.i348.i, label %if.else.i354.i, label %if.then5.i350.i, !prof !48

if.then5.i350.i:                                  ; preds = %NVWriteRAMDAC.exit344.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i349.i = getelementptr i8, ptr %150, i32 %add14.i
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %NVReadRAMDAC.exit356.i

if.else.i354.i:                                   ; preds = %NVWriteRAMDAC.exit344.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i351.i = getelementptr inbounds %struct.nouveau_drm, ptr %148, i32 0, i32 2, i32 3
  %conv.i352.i = zext i32 %add14.i to i64
  %call10.i353.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i351.i, i32 noundef 4, i64 noundef %conv.i352.i) #6
  br label %NVReadRAMDAC.exit356.i

NVReadRAMDAC.exit356.i:                           ; preds = %if.else.i354.i, %if.then5.i350.i
  %_data.0.i355.i = phi i32 [ %151, %if.then5.i350.i ], [ %call10.i353.i, %if.else.i354.i ]
  %152 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i360.i = getelementptr inbounds %struct.nouveau_drm, ptr %153, i32 0, i32 2, i32 3, i32 0, i32 6
  %154 = ptrtoint ptr %map.i360.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %map.i360.i, align 8
  %tobool2.not.i361.i = icmp eq ptr %155, null
  br i1 %tobool2.not.i361.i, label %if.else.i366.i, label %do.body.i363.i, !prof !48

do.body.i363.i:                                   ; preds = %NVReadRAMDAC.exit356.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %156 = ptrtoint ptr %map.i360.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %map.i360.i, align 8
  %add.ptr.i362.i = getelementptr i8, ptr %157, i32 %spec.select.i180.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362.i, i32 %_data.0.i189.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit367.i

if.else.i366.i:                                   ; preds = %NVReadRAMDAC.exit356.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i364.i = getelementptr inbounds %struct.nouveau_drm, ptr %153, i32 0, i32 2, i32 3
  %conv.i365.i = zext i32 %spec.select.i180.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i364.i, i32 noundef 4, i64 noundef %conv.i365.i, i32 noundef %_data.0.i189.i) #6
  br label %NVWriteRAMDAC.exit367.i

NVWriteRAMDAC.exit367.i:                          ; preds = %if.else.i366.i, %do.body.i363.i
  %158 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i371.i = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3, i32 0, i32 6
  %160 = ptrtoint ptr %map.i371.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %map.i371.i, align 8
  %tobool2.not.i372.i = icmp eq ptr %161, null
  br i1 %tobool2.not.i372.i, label %if.else.i377.i, label %do.body.i374.i, !prof !48

do.body.i374.i:                                   ; preds = %NVWriteRAMDAC.exit367.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %map.i371.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map.i371.i, align 8
  %add.ptr.i373.i = getelementptr i8, ptr %163, i32 %spec.select.i193.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373.i, i32 %_data.0.i202.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit378.i

if.else.i377.i:                                   ; preds = %NVWriteRAMDAC.exit367.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i375.i = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3
  %conv.i376.i = zext i32 %spec.select.i193.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i375.i, i32 noundef 4, i64 noundef %conv.i376.i, i32 noundef %_data.0.i202.i) #6
  br label %NVWriteRAMDAC.exit378.i

NVWriteRAMDAC.exit378.i:                          ; preds = %if.else.i377.i, %do.body.i374.i
  %164 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i382.i = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3, i32 0, i32 6
  %166 = ptrtoint ptr %map.i382.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %map.i382.i, align 8
  %tobool2.not.i383.i = icmp eq ptr %167, null
  br i1 %tobool2.not.i383.i, label %if.else.i388.i, label %do.body.i385.i, !prof !48

do.body.i385.i:                                   ; preds = %NVWriteRAMDAC.exit378.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %168 = ptrtoint ptr %map.i382.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %map.i382.i, align 8
  %add.ptr.i384.i = getelementptr i8, ptr %169, i32 %spec.select.i206.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384.i, i32 %_data.0.i215.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit389.i

if.else.i388.i:                                   ; preds = %NVWriteRAMDAC.exit378.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i386.i = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3
  %conv.i387.i = zext i32 %spec.select.i206.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i386.i, i32 noundef 4, i64 noundef %conv.i387.i, i32 noundef %_data.0.i215.i) #6
  br label %NVWriteRAMDAC.exit389.i

NVWriteRAMDAC.exit389.i:                          ; preds = %if.else.i388.i, %do.body.i385.i
  %170 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i392.i = getelementptr inbounds %struct.nouveau_drm, ptr %171, i32 0, i32 2, i32 3, i32 0, i32 6
  %172 = ptrtoint ptr %map.i392.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %map.i392.i, align 8
  %tobool2.not.i393.i = icmp eq ptr %173, null
  br i1 %tobool2.not.i393.i, label %if.else.i398.i, label %do.body.i395.i, !prof !48

do.body.i395.i:                                   ; preds = %NVWriteRAMDAC.exit389.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %174 = ptrtoint ptr %map.i392.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %map.i392.i, align 8
  %add.ptr.i394.i = getelementptr i8, ptr %175, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394.i, i32 %_data.0.i.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit399.i

if.else.i398.i:                                   ; preds = %NVWriteRAMDAC.exit389.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i396.i = getelementptr inbounds %struct.nouveau_drm, ptr %171, i32 0, i32 2, i32 3
  %conv.i397.i = zext i32 %add.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i396.i, i32 noundef 4, i64 noundef %conv.i397.i, i32 noundef %_data.0.i.i) #6
  br label %NVWriteRAMDAC.exit399.i

NVWriteRAMDAC.exit399.i:                          ; preds = %if.else.i398.i, %do.body.i395.i
  %176 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i402.i = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 2, i32 3, i32 0, i32 6
  %178 = ptrtoint ptr %map.i402.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %map.i402.i, align 8
  %tobool2.not.i403.i = icmp eq ptr %179, null
  br i1 %tobool2.not.i403.i, label %if.else.i408.i, label %do.body.i405.i, !prof !48

do.body.i405.i:                                   ; preds = %NVWriteRAMDAC.exit399.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %180 = ptrtoint ptr %map.i402.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %map.i402.i, align 8
  %add.ptr.i404.i = getelementptr i8, ptr %181, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404.i, i32 %_data.0.i176.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit409.i

if.else.i408.i:                                   ; preds = %NVWriteRAMDAC.exit399.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i406.i = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 2, i32 3
  %conv.i407.i = zext i32 %add14.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i406.i, i32 noundef 4, i64 noundef %conv.i407.i, i32 noundef %_data.0.i176.i) #6
  br label %NVWriteRAMDAC.exit409.i

NVWriteRAMDAC.exit409.i:                          ; preds = %if.else.i408.i, %do.body.i405.i
  %182 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i413.i = getelementptr inbounds %struct.nouveau_drm, ptr %183, i32 0, i32 2, i32 3, i32 0, i32 6
  %184 = ptrtoint ptr %map.i413.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %map.i413.i, align 8
  %tobool2.not.i414.i = icmp eq ptr %185, null
  br i1 %tobool2.not.i414.i, label %if.else.i419.i, label %do.body.i416.i, !prof !48

do.body.i416.i:                                   ; preds = %NVWriteRAMDAC.exit409.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %186 = ptrtoint ptr %map.i413.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %map.i413.i, align 8
  %add.ptr.i415.i = getelementptr i8, ptr %187, i32 %spec.select.i155.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415.i, i32 %_data.0.i164.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit420.i

if.else.i419.i:                                   ; preds = %NVWriteRAMDAC.exit409.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i417.i = getelementptr inbounds %struct.nouveau_drm, ptr %183, i32 0, i32 2, i32 3
  %conv.i418.i = zext i32 %spec.select.i155.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i417.i, i32 noundef 4, i64 noundef %conv.i418.i, i32 noundef %_data.0.i164.i) #6
  br label %NVWriteRAMDAC.exit420.i

NVWriteRAMDAC.exit420.i:                          ; preds = %if.else.i419.i, %do.body.i416.i
  %188 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i424.i = getelementptr inbounds %struct.nouveau_drm, ptr %189, i32 0, i32 2, i32 3, i32 0, i32 6
  %190 = ptrtoint ptr %map.i424.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map.i424.i, align 8
  %tobool2.not.i425.i = icmp eq ptr %191, null
  br i1 %tobool2.not.i425.i, label %if.else.i430.i, label %do.body.i427.i, !prof !48

do.body.i427.i:                                   ; preds = %NVWriteRAMDAC.exit420.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %192 = ptrtoint ptr %map.i424.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %map.i424.i, align 8
  %add.ptr.i426.i = getelementptr i8, ptr %193, i32 %spec.select.i142.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426.i, i32 %_data.0.i151.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit431.i

if.else.i430.i:                                   ; preds = %NVWriteRAMDAC.exit420.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i428.i = getelementptr inbounds %struct.nouveau_drm, ptr %189, i32 0, i32 2, i32 3
  %conv.i429.i = zext i32 %spec.select.i142.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i428.i, i32 noundef 4, i64 noundef %conv.i429.i, i32 noundef %_data.0.i151.i) #6
  br label %NVWriteRAMDAC.exit431.i

NVWriteRAMDAC.exit431.i:                          ; preds = %if.else.i430.i, %do.body.i427.i
  %194 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i435.i = getelementptr inbounds %struct.nouveau_drm, ptr %195, i32 0, i32 2, i32 3, i32 0, i32 6
  %196 = ptrtoint ptr %map.i435.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %map.i435.i, align 8
  %tobool2.not.i436.i = icmp eq ptr %197, null
  br i1 %tobool2.not.i436.i, label %if.else.i441.i, label %do.body.i438.i, !prof !48

do.body.i438.i:                                   ; preds = %NVWriteRAMDAC.exit431.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %198 = ptrtoint ptr %map.i435.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %map.i435.i, align 8
  %add.ptr.i437.i = getelementptr i8, ptr %199, i32 %spec.select.i129.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437.i, i32 %_data.0.i138.i) #6, !srcloc !52
  br label %NVWriteRAMDAC.exit442.i

if.else.i441.i:                                   ; preds = %NVWriteRAMDAC.exit431.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i439.i = getelementptr inbounds %struct.nouveau_drm, ptr %195, i32 0, i32 2, i32 3
  %conv.i440.i = zext i32 %spec.select.i129.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i439.i, i32 noundef 4, i64 noundef %conv.i440.i, i32 noundef %_data.0.i138.i) #6
  br label %NVWriteRAMDAC.exit442.i

NVWriteRAMDAC.exit442.i:                          ; preds = %if.else.i441.i, %do.body.i438.i
  %200 = ptrtoint ptr %dev_private.i.i82 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev_private.i.i82, align 4
  %map.i446.i = getelementptr inbounds %struct.nouveau_drm, ptr %201, i32 0, i32 2, i32 3, i32 0, i32 6
  %202 = ptrtoint ptr %map.i446.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %map.i446.i, align 8
  %tobool2.not.i447.i = icmp eq ptr %203, null
  br i1 %tobool2.not.i447.i, label %if.else.i452.i, label %do.body.i449.i, !prof !48

do.body.i449.i:                                   ; preds = %NVWriteRAMDAC.exit442.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %204 = ptrtoint ptr %map.i446.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %map.i446.i, align 8
  %add.ptr.i448.i = getelementptr i8, ptr %205, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i448.i, i32 %_data.0.i125.i) #6, !srcloc !52
  br label %nv42_tv_sample_load.exit

if.else.i452.i:                                   ; preds = %NVWriteRAMDAC.exit442.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i450.i = getelementptr inbounds %struct.nouveau_drm, ptr %201, i32 0, i32 2, i32 3
  %conv.i451.i = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i450.i, i32 noundef 4, i64 noundef %conv.i451.i, i32 noundef %_data.0.i125.i) #6
  br label %nv42_tv_sample_load.exit

nv42_tv_sample_load.exit:                         ; preds = %if.else.i452.i, %do.body.i449.i
  %and31.i = and i32 %_data.0.i332.i, 1073741824
  %and36.i = and i32 %_data.0.i355.i, -1610612736
  %or37.i = or i32 %and36.i, %and31.i
  %call40.i = tail call i32 @nvkm_gpio_set(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %call8.i) #6
  %call41.i = tail call i32 @nvkm_gpio_set(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %call9.i) #6
  %shr = lshr exact i32 %or37.i, 28
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @nv17_dac_sample_load(ptr noundef %encoder) #6
  %shr19 = lshr i32 %call18, 28
  %and20 = and i32 %shr19, 14
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else, %nv42_tv_sample_load.exit
  %shr.sink = phi i32 [ %shr, %nv42_tv_sample_load.exit ], [ %and20, %if.else ]
  %206 = ptrtoint ptr %pin_mask to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %shr.sink, ptr %pin_mask, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %get_tv_detect_quirks.exit.thread.if.end23_crit_edge
  %retval.0.i8890 = phi i1 [ false, %get_tv_detect_quirks.exit.thread.if.end23_crit_edge ], [ true, %if.end23.sink.split ]
  %207 = ptrtoint ptr %pin_mask to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pin_mask, align 4
  %209 = add i32 %208, -2
  %210 = tail call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 31)
  %211 = zext i32 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %210, label %sw.default [
    i32 0, label %if.end23.sw.bb_crit_edge
    i32 1, label %if.end23.sw.bb_crit_edge91
    i32 5, label %sw.bb25
    i32 6, label %sw.bb27
  ]

if.end23.sw.bb_crit_edge91:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge91
  %subconnector = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %212 = ptrtoint ptr %subconnector to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 5, ptr %subconnector, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %subconnector26 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %213 = ptrtoint ptr %subconnector26 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 6, ptr %subconnector26, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  %214 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 13
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %214, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool28.not = icmp eq i8 %216, 0
  %subconnector32 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %subconnector32 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 8, ptr %subconnector32, align 4
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %subconnector32 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 9, ptr %subconnector32, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %subconnector34 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %219 = ptrtoint ptr %subconnector34 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %subconnector34, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else31, %if.then29, %sw.bb25, %sw.bb
  %base35 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %tv_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 60
  %220 = ptrtoint ptr %tv_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tv_subconnector_property, align 4
  %subconnector36 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %222 = ptrtoint ptr %subconnector36 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %subconnector36, align 4
  %conv37 = sext i32 %223 to i64
  %call38 = tail call i32 @drm_object_property_set_value(ptr noundef %base35, ptr noundef %221, i64 noundef %conv37) #6
  br i1 %retval.0.i8890, label %if.else41, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else41:                                        ; preds = %sw.epilog
  %224 = ptrtoint ptr %subconnector36 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %subconnector36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool43.not = icmp eq i32 %225, 0
  br i1 %tobool43.not, label %if.else41.cleanup_crit_edge, label %do.body

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  %drm47 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %226 = ptrtoint ptr %drm47 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %drm47, align 8
  %dev48 = getelementptr inbounds %struct.nouveau_drm, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev48, align 8
  %dev49 = getelementptr inbounds %struct.drm_device, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev49, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %or = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 9
  %232 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %or, align 1
  %234 = tail call i8 @llvm.cttz.i8(i8 %233, i1 true), !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %iszero = icmp eq i8 %233, 0
  %narrow = add nuw nsw i8 %234, 65
  %narrow81 = select i1 %iszero, i8 64, i8 %narrow
  %add = zext i8 %narrow81 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %231, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else41.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %get_tv_detect_quirks.exit.thread.cleanup_crit_edge, %get_tv_detect_quirks.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 2, %get_tv_detect_quirks.exit.cleanup_crit_edge ], [ 3, %sw.epilog.cleanup_crit_edge ], [ 2, %if.else41.cleanup_crit_edge ], [ 2, %get_tv_detect_quirks.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_update_fp_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dac_update_dacclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_dac_in_use(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_output_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dfp_get_bound_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_bind_head(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_update_rescaler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_update_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_ctv_update_rescaler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_state_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_dac_sample_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_tv_mode_valid(ptr nocapture noundef readonly %encoder, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_norm1 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %0 = ptrtoint ptr %tv_norm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_norm1, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %6)
  %cmp3 = icmp sgt i32 %6, 400000
  br i1 %cmp3, label %if.then.cleanup49_crit_edge, label %if.end

if.then.cleanup49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end:                                           ; preds = %if.then
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  %hdisplay5 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %hdisplay5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp7 = icmp ugt i16 %8, %10
  br i1 %cmp7, label %if.end.cleanup49_crit_edge, label %lor.lhs.false

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

lor.lhs.false:                                    ; preds = %if.end
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %11 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay, align 2
  %vdisplay10 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 6
  %13 = ptrtoint ptr %vdisplay10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp12 = icmp ugt i16 %12, %14
  br i1 %cmp12, label %lor.lhs.false.cleanup49_crit_edge, label %if.end15

lor.lhs.false.cleanup49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end15:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags16 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 11
  %17 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags16, align 4
  %19 = xor i32 %18, %16
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18.not = icmp eq i32 %20, 0
  br i1 %cmp18.not, label %cleanup, label %if.end15.cleanup49_crit_edge

if.end15.cleanup49_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

cleanup:                                          ; preds = %if.end15
  %and23 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %cleanup.if.end48_crit_edge, label %cleanup.cleanup49_crit_edge

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else:                                          ; preds = %entry
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %22)
  %cmp27 = icmp sgt i32 %22, 70000
  br i1 %cmp27, label %if.else.cleanup49_crit_edge, label %if.end30

if.else.cleanup49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end30:                                         ; preds = %if.else
  %call31 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #6
  %mul = mul i32 %call31, 1000
  %vrefresh = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1, i32 1, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %vrefresh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vrefresh, align 4
  %sub = sub i32 %mul, %24
  %25 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %25)
  %cmp36 = icmp sgt i32 %25, 600
  br i1 %cmp36, label %if.end30.cleanup49_crit_edge, label %cleanup45

if.end30.cleanup49_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

cleanup45:                                        ; preds = %if.end30
  %flags40 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %26 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags40, align 4
  %and41 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cleanup45.if.end48_crit_edge, label %cleanup45.cleanup49_crit_edge

cleanup45.cleanup49_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

cleanup45.if.end48_crit_edge:                     ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %cleanup45.if.end48_crit_edge, %cleanup.if.end48_crit_edge
  br label %cleanup49

cleanup49:                                        ; preds = %if.end48, %cleanup45.cleanup49_crit_edge, %if.end30.cleanup49_crit_edge, %if.else.cleanup49_crit_edge, %cleanup.cleanup49_crit_edge, %if.end15.cleanup49_crit_edge, %lor.lhs.false.cleanup49_crit_edge, %if.end.cleanup49_crit_edge, %if.then.cleanup49_crit_edge
  %retval.2 = phi i32 [ 0, %if.end48 ], [ 8, %cleanup.cleanup49_crit_edge ], [ 7, %cleanup45.cleanup49_crit_edge ], [ 7, %if.end15.cleanup49_crit_edge ], [ -2, %if.end.cleanup49_crit_edge ], [ -2, %lor.lhs.false.cleanup49_crit_edge ], [ 15, %if.then.cleanup49_crit_edge ], [ 2, %if.end30.cleanup49_crit_edge ], [ 15, %if.else.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_tv_get_modes(ptr nocapture noundef readonly %encoder, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_norm1 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %0 = ptrtoint ptr %tv_norm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_norm1, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1, i32 1
  %hdisplay4.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 1
  %vdisplay8.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 6
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 11
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 4
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 9
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 7
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %n.0111.i = phi i32 [ 0, %if.then ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0109.i = phi i32 [ 0, %if.then ], [ %inc72.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [9 x %struct.anon.219], ptr @__const.nv17_tv_get_hd_modes.modes, i32 0, i32 %i.0109.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3.i, align 4
  %7 = ptrtoint ptr %hdisplay4.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay4.i, align 4
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp5.i = icmp sgt i32 %6, %conv.i
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %vdisplay.i = getelementptr [9 x %struct.anon.219], ptr @__const.nv17_tv_get_hd_modes.modes, i32 0, i32 %i.0109.i, i32 1
  %9 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vdisplay.i, align 4
  %11 = ptrtoint ptr %vdisplay8.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay8.i, align 2
  %conv9.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv9.i)
  %cmp10.i = icmp sgt i32 %10, %conv9.i
  br i1 %cmp10.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp16.i = icmp eq i32 %6, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv9.i)
  %cmp22.i = icmp eq i32 %10, %conv9.i
  %or.cond.i = select i1 %cmp16.i, i1 %cmp22.i, i1 false
  %13 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder, align 4
  br i1 %or.cond.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call ptr @drm_mode_duplicate(ptr noundef %14, ptr noundef %4) #6
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call25.i, i32 0, i32 28
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i, align 2
  %17 = or i8 %16, 8
  store i8 %17, ptr %type.i, align 2
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call33.i = tail call ptr @drm_cvt_mode(ptr noundef %14, i32 noundef %6, i32 noundef %10, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext %tobool.i, i1 noundef zeroext false) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then24.i
  %mode2.0.i = phi ptr [ %call25.i, %if.then24.i ], [ %call33.i, %if.else.i ]
  %20 = ptrtoint ptr %hdisplay4.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hdisplay4.i, align 4
  %22 = add i16 %21, -1920
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1199, i16 %22)
  %23 = icmp ult i16 %22, -1199
  br i1 %23, label %if.then44.i, label %if.end34.i.if.end58.i_crit_edge

if.end34.i.if.end58.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then44.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal.i, align 2
  %htotal45.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %htotal45.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %htotal45.i, align 2
  %hdisplay46.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %hdisplay46.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdisplay46.i, align 4
  %conv47.i = zext i16 %28 to i32
  %conv49.i = zext i16 %25 to i32
  %sub.i = sub nsw i32 %conv49.i, %conv47.i
  %mul.i = mul nsw i32 %sub.i, 9
  %div.i = sdiv i32 %mul.i, 10
  %29 = trunc i32 %div.i to i16
  %30 = add i16 %28, %29
  %conv53.i = and i16 %30, -8
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv53.i, ptr %hsync_start.i, align 2
  %add56.i = add i16 %conv53.i, 8
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 3
  %32 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add56.i, ptr %hsync_end.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then44.i, %if.end34.i.if.end58.i_crit_edge
  %33 = ptrtoint ptr %vdisplay8.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vdisplay8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %34)
  %cmp61.i = icmp ugt i16 %34, 1023
  br i1 %cmp61.i, label %if.then63.i, label %if.end58.i.if.end67.i_crit_edge

if.end58.i.if.end67.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vtotal.i, align 4
  %vtotal64.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 9
  %37 = ptrtoint ptr %vtotal64.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vtotal64.i, align 4
  %38 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vsync_start.i, align 4
  %vsync_start65.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 7
  %40 = ptrtoint ptr %vsync_start65.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %vsync_start65.i, align 4
  %41 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vsync_end.i, align 2
  %vsync_end66.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 8
  %43 = ptrtoint ptr %vsync_end66.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vsync_end66.i, align 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then63.i, %if.end58.i.if.end67.i_crit_edge
  %type68.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode2.0.i, i32 0, i32 28
  %44 = ptrtoint ptr %type68.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type68.i, align 2
  %46 = or i8 %45, 64
  store i8 %46, ptr %type68.i, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %mode2.0.i) #6
  %inc.i = add i32 %n.0111.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end67.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %n.0111.i, %for.body.i.for.inc.i_crit_edge ], [ %n.0111.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc.i, %if.end67.i ]
  %inc72.i = add nuw nsw i32 %i.0109.i, 1
  %exitcond.not.i = icmp eq i32 %inc72.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.drm_display_mode], ptr @nv17_tv_modes, i32 0, i32 0, i32 1) to i32))
  %47 = load i16, ptr getelementptr inbounds ([0 x %struct.drm_display_mode], ptr @nv17_tv_modes, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not35.i = icmp eq i16 %47, 0
  br i1 %tobool.not35.i, label %if.else.cleanup_crit_edge, label %for.body.lr.ph.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.else
  %48 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %1, i32 1
  %vrefresh.i = getelementptr inbounds %struct.anon.205, ptr %48, i32 0, i32 2
  %vdisplay14.i = getelementptr inbounds %struct.anon.205, ptr %48, i32 0, i32 1
  br label %for.body.i15

for.body.i15:                                     ; preds = %if.end20.i.for.body.i15_crit_edge, %for.body.lr.ph.i
  %n.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i19, %if.end20.i.for.body.i15_crit_edge ]
  %tv_mode.036.i = phi ptr [ @nv17_tv_modes, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end20.i.for.body.i15_crit_edge ]
  %49 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %encoder, align 4
  %call2.i = tail call ptr @drm_mode_duplicate(ptr noundef %50, ptr noundef %tv_mode.036.i) #6
  %51 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vrefresh.i, align 4
  %htotal.i8 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 4
  %53 = ptrtoint ptr %htotal.i8 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %htotal.i8, align 2
  %conv.i9 = zext i16 %54 to i32
  %mul.i10 = mul i32 %52, %conv.i9
  %div.i11 = sdiv i32 %mul.i10, 1000
  %vtotal.i12 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 9
  %55 = ptrtoint ptr %vtotal.i12 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vtotal.i12, align 4
  %conv3.i = zext i16 %56 to i32
  %mul4.i = mul i32 %div.i11, %conv3.i
  %div5.i = sdiv i32 %mul4.i, 1000
  %57 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div5.i, ptr %call2.i, align 4
  %flags.i13 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 11
  %58 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i13, align 4
  %and.i14 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool6.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool6.not.i, label %for.body.i15.if.end.i16_crit_edge, label %if.then.i

for.body.i15.if.end.i16_crit_edge:                ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i16

if.then.i:                                        ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %mul8.i = shl nsw i32 %div5.i, 1
  %60 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul8.i, ptr %call2.i, align 4
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i, %for.body.i15.if.end.i16_crit_edge
  %hdisplay9.i = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 1
  %61 = ptrtoint ptr %hdisplay9.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hdisplay9.i, align 4
  %conv10.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv10.i)
  %cmp.i = icmp eq i32 %64, %conv10.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i16.if.end20.i_crit_edge

if.end.i16.if.end20.i_crit_edge:                  ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i16
  %vdisplay.i17 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 6
  %65 = ptrtoint ptr %vdisplay.i17 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vdisplay.i17, align 2
  %conv13.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %vdisplay14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vdisplay14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv13.i)
  %cmp15.i = icmp eq i32 %68, %conv13.i
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %type.i18 = getelementptr inbounds %struct.drm_display_mode, ptr %call2.i, i32 0, i32 28
  %69 = ptrtoint ptr %type.i18 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type.i18, align 2
  %71 = or i8 %70, 8
  store i8 %71, ptr %type.i18, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i16.if.end20.i_crit_edge
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call2.i) #6
  %inc.i19 = add i32 %n.037.i, 1
  %incdec.ptr.i = getelementptr %struct.drm_display_mode, ptr %tv_mode.036.i, i32 1
  %hdisplay.i = getelementptr %struct.drm_display_mode, ptr %tv_mode.036.i, i32 1, i32 1
  %72 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hdisplay.i, align 4
  %tobool.not.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.for.body.i15_crit_edge

if.end20.i.for.body.i15_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i15

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %n.1.i, %for.inc.i.cleanup_crit_edge ], [ %inc.i19, %if.end20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_tv_set_property(ptr noundef %encoder, ptr noundef %connector, ptr noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc1 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc1, align 4
  %tv_norm6 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %4 = ptrtoint ptr %tv_norm6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_norm6, align 4
  %arrayidx = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %5
  %tv_overscan_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 70
  %6 = ptrtoint ptr %tv_overscan_property to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tv_overscan_property, align 4
  %cmp = icmp eq ptr %7, %property
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %conv = trunc i64 %val to i32
  %overscan = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 3
  %8 = ptrtoint ptr %overscan to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %overscan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv17_ctv_update_rescaler(ptr noundef %encoder) #6
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv17_tv_update_rescaler(ptr noundef %encoder) #6
  br label %cleanup

if.else13:                                        ; preds = %entry
  %tv_saturation_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 71
  %11 = ptrtoint ptr %tv_saturation_property to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tv_saturation_property, align 4
  %cmp14 = icmp eq ptr %12, %property
  br i1 %cmp14, label %if.then16, label %if.else23

if.then16:                                        ; preds = %if.else13
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp18.not = icmp eq i32 %14, 0
  br i1 %cmp18.not, label %if.end21, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i64 %val to i32
  %saturation = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 5
  %15 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv22, ptr %saturation, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %encoder) #6
  br label %cleanup

if.else23:                                        ; preds = %if.else13
  %tv_hue_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 72
  %16 = ptrtoint ptr %tv_hue_property to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tv_hue_property, align 4
  %cmp24 = icmp eq ptr %17, %property
  br i1 %cmp24, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.else23
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp28.not = icmp eq i32 %19, 0
  br i1 %cmp28.not, label %if.end31, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = trunc i64 %val to i32
  %hue = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 6
  %20 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv32, ptr %hue, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %encoder) #6
  br label %cleanup

if.else33:                                        ; preds = %if.else23
  %tv_flicker_reduction_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 69
  %21 = ptrtoint ptr %tv_flicker_reduction_property to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tv_flicker_reduction_property, align 4
  %cmp34 = icmp eq ptr %22, %property
  br i1 %cmp34, label %if.then36, label %if.else47

if.then36:                                        ; preds = %if.else33
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp38.not = icmp eq i32 %24, 0
  br i1 %cmp38.not, label %if.end41, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.then36
  %conv42 = trunc i64 %val to i32
  %flicker = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 4
  %25 = ptrtoint ptr %flicker to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv42, ptr %flicker, align 4
  %tobool44.not = icmp eq ptr %3, null
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %if.then45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nv17_tv_update_rescaler(ptr noundef %encoder) #6
  br label %cleanup

if.else47:                                        ; preds = %if.else33
  %tv_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 62
  %26 = ptrtoint ptr %tv_mode_property to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tv_mode_property, align 4
  %cmp48 = icmp eq ptr %27, %property
  br i1 %cmp48, label %if.then50, label %if.else57

if.then50:                                        ; preds = %if.else47
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 34
  %28 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dpms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp51.not = icmp eq i32 %29, 3
  br i1 %cmp51.not, label %if.end54, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.then50
  %conv55 = trunc i64 %val to i32
  %30 = ptrtoint ptr %tv_norm6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv55, ptr %tv_norm6, align 4
  %call76 = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %connector, i32 noundef 0, i32 noundef 0) #6
  %tobool77.not = icmp eq ptr %3, null
  br i1 %tobool77.not, label %if.end54.cleanup_crit_edge, label %if.then78

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else57:                                        ; preds = %if.else47
  %tv_select_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 61
  %31 = ptrtoint ptr %tv_select_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tv_select_subconnector_property, align 4
  %cmp58 = icmp eq ptr %32, %property
  br i1 %cmp58, label %if.then60, label %if.else57.cleanup_crit_edge

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %if.else57
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp62.not = icmp eq i32 %34, 0
  br i1 %cmp62.not, label %if.end65, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %conv66 = trunc i64 %val to i32
  %select_subconnector = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 9
  %35 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv66, ptr %select_subconnector, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %encoder) #6
  br label %cleanup

if.then78:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12
  %x = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 15
  %38 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y, align 8
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb, align 4
  %call79 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %3, ptr noundef %mode, i32 noundef %37, i32 noundef %39, ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end65, %if.then60.cleanup_crit_edge, %if.else57.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.then45, %if.end41.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end31, %if.then26.cleanup_crit_edge, %if.end21, %if.then16.cleanup_crit_edge, %if.else, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then16.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ -22, %if.then50.cleanup_crit_edge ], [ -22, %if.then60.cleanup_crit_edge ], [ -22, %if.else57.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end65 ], [ 0, %if.then45 ], [ 0, %if.end31 ], [ 0, %if.end21 ], [ 0, %if.else ], [ 0, %if.then11 ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_state_save(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_tv_norm323, !1, !"__UNIQUE_ID_tv_norm323", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 37, i32 1}
!2 = !{ptr @__param_tv_norm, !3, !"__param_tv_norm", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_tv_normtype324, !3, !"__UNIQUE_ID_tv_normtype324", i1 false, i1 false}
!5 = !{ptr @nouveau_tv_norm, !6, !"nouveau_tv_norm", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 42, i32 14}
!7 = !{ptr @__param_str_tv_norm, !3, !"__param_str_tv_norm", i1 false, i1 false}
!8 = !{ptr @nv17_tv_funcs, !9, !"nv17_tv_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 782, i32 39}
!10 = !{ptr @nv17_tv_helper_funcs, !11, !"nv17_tv_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 766, i32 46}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 373, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv17_tv_dpms._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv17_tv_dpms._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 601, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nv17_tv_commit._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nv17_tv_commit._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 192, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nv17_tv_detect._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nv17_tv_detect._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @nv17_tv_slave_funcs, !31, !"nv17_tv_slave_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 775, i32 45}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c", i32 650, i32 4}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nv17_tv_create_resources._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @nv17_tv_create_resources._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 9}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 4510004}
!50 = !{i64 2157954234}
!51 = !{i64 2157955295}
!52 = !{i64 4509586}
!53 = !{i8 0, i8 2}
!54 = !{i64 2157978215}
