; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/dac.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/dac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.100, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.101, %struct.anon.108, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.100 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.94, i8 }
%union.anon.94 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
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
%struct.anon.91 = type { i32, ptr }
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
%struct.anon.203 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.176, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.176 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.181, i32, i32 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i16, i16 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.204, %struct.anon.205, %struct.anon.206, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.204 = type { i32, i8, i32, i32 }
%struct.anon.205 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.206 = type { i32 }
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
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }

@nv17_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv04_dac_dpms, ptr null, ptr @nv04_dac_mode_fixup, ptr @nv04_dac_prepare, ptr @nv04_dac_commit, ptr @nv04_dac_mode_set, ptr null, ptr @nv17_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv04_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @nv04_dac_dpms, ptr null, ptr @nv04_dac_mode_fixup, ptr @nv04_dac_prepare, ptr @nv04_dac_commit, ptr @nv04_dac_mode_set, ptr null, ptr @nv04_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nv04_dac_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @nv04_dac_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_dac_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Setting dpms mode %d on vga encoder (output %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv04_dac_dpms\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/dispnv04/dac.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_dac_dpms._entry_ptr = internal global ptr @nv04_dac_dpms._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nv04_dac_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_dac_commit\00", [16 x i8] zeroinitializer }, align 32
@nv04_dac_commit._entry_ptr = internal global ptr @nv04_dac_commit._entry, section ".printk_index", align 4
@nv17_dac_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Load detected on output %c\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv17_dac_detect\00", [16 x i8] zeroinitializer }, align 32
@nv17_dac_detect._entry_ptr = internal global ptr @nv17_dac_detect._entry, section ".printk_index", align 4
@nv04_dac_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Load detected on head A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_dac_detect\00", [16 x i8] zeroinitializer }, align 32
@nv04_dac_detect._entry_ptr = internal global ptr @nv04_dac_detect._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"nv17_dac_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 514, i32 46 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"nv04_dac_helper_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 505, i32 46 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"nv04_dac_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 523, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 469, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 421, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 346, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/dac.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 228, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @nv04_dac_commit._entry, ptr @nv04_dac_commit._entry_ptr, ptr @nv04_dac_detect._entry, ptr @nv04_dac_detect._entry_ptr, ptr @nv04_dac_dpms._entry, ptr @nv04_dac_dpms._entry_ptr, ptr @nv17_dac_detect._entry, ptr @nv17_dac_detect._entry_ptr, ptr @nv17_dac_helper_funcs, ptr @nv04_dac_helper_funcs, ptr @nv04_dac_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dac_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dac_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dac_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_dac_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dac_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nv04_dac_output_offset(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb1, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %or, align 1
  %4 = and i8 %3, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 104
  %5 = and i8 %3, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %add7 = or i32 %spec.select, 8192
  %offset.1 = select i1 %tobool5.not, i32 %spec.select, i32 %add7
  ret i32 %offset.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv17_dac_sample_load(ptr nocapture noundef readonly %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device7 = getelementptr inbounds %struct.anon.203, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device7, align 8
  %gpio8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %gpio8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio8, align 8
  %dcb10 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %10 = ptrtoint ptr %dcb10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcb10, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %or.i, align 1
  %14 = and i8 %13, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 104
  %15 = and i8 %13, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  %add7.i = or i32 %spec.select.i, 8192
  %offset.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %add7.i
  %type = getelementptr inbounds %struct.dcb_output, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tvdactestval = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 7
  %18 = ptrtoint ptr %tvdactestval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tvdactestval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool.not, i32 167936160, i32 %19
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dactestval = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 6
  %20 = ptrtoint ptr %dactestval to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dactestval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  %spec.select292 = select i1 %tobool16.not, i32 335872320, i32 %21
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then
  %testval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select292, %if.else ]
  %add = add nuw nsw i32 %offset.1.i, 6817288
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !38

if.then5.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %add to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef %conv.i) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %24, %if.then5.i ], [ %call10.i, %if.else.i ]
  %and = and i32 %_data.0.i, -65537
  %25 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i, align 4
  %map.i297 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = ptrtoint ptr %map.i297 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i297, align 8
  %tobool2.not.i298 = icmp eq ptr %28, null
  br i1 %tobool2.not.i298, label %if.else.i302, label %do.body.i, !prof !38

do.body.i:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %map.i297 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i297, align 8
  %add.ptr.i299 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %and) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit

if.else.i302:                                     ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i300 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3
  %conv.i301 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i300, i32 noundef 4, i64 noundef %conv.i301, i32 noundef %and) #8
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i302, %do.body.i
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 8
  %tobool25.not = icmp eq ptr %32, null
  br i1 %tobool25.not, label %if.else33, label %if.then28, !prof !38

if.then28:                                        ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %32, i32 5512
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  br label %if.end35

if.else33:                                        ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef 5512) #8
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then28
  %_data.0 = phi i32 [ %33, %if.then28 ], [ %call34, %if.else33 ]
  %34 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i, align 8
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %if.else52, label %do.body, !prof !38

do.body:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %and48 = and i32 %_data.0, -671088641
  %36 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i, align 8
  %add.ptr51 = getelementptr i8, ptr %37, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %and48) #8, !srcloc !42
  br label %if.end54

if.else52:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %and53 = and i32 %_data.0, -671088641
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 5512, i32 noundef %and53) #8
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %offset.1.i)
  %cmp55 = icmp eq i32 %offset.1.i, 104
  br i1 %cmp55, label %if.then56, label %if.end54.if.end101_crit_edge

if.end54.if.end101_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then56:                                        ; preds = %if.end54
  %38 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i, align 8
  %tobool62.not = icmp eq ptr %39, null
  br i1 %tobool62.not, label %if.else76, label %if.then69, !prof !38

if.then69:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr73 = getelementptr i8, ptr %39, i32 5520
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  br label %if.end78

if.else76:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef 5520) #8
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then69
  %_data59.0 = phi i32 [ %40, %if.then69 ], [ %call77, %if.else76 ]
  %41 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i, align 8
  %tobool83.not = icmp eq ptr %42, null
  br i1 %tobool83.not, label %if.else98, label %do.body91, !prof !38

do.body91:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %and94 = and i32 %_data59.0, -49
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i, align 8
  %add.ptr97 = getelementptr i8, ptr %44, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %and94) #8, !srcloc !42
  br label %if.end101

if.else98:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %and99 = and i32 %_data59.0, -49
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 5520, i32 noundef %and99) #8
  br label %if.end101

if.end101:                                        ; preds = %if.else98, %do.body91, %if.end54.if.end101_crit_edge
  %saved_powerctrl_4.0 = phi i32 [ 0, %if.end54.if.end101_crit_edge ], [ %_data59.0, %if.else98 ], [ %_data59.0, %do.body91 ]
  %tobool102.not = icmp eq ptr %9, null
  br i1 %tobool102.not, label %if.end101.if.end113_crit_edge, label %if.then103

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = tail call i32 @nvkm_gpio_get(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1) #8
  %call105 = tail call i32 @nvkm_gpio_get(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1) #8
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp107 = icmp eq i32 %46, 1
  %conv = zext i1 %cmp107 to i32
  %call108 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %conv) #8
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp110 = icmp eq i32 %48, 1
  %conv111 = zext i1 %cmp110 to i32
  %call112 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %conv111) #8
  br label %if.end113

if.end113:                                        ; preds = %if.then103, %if.end101.if.end113_crit_edge
  %saved_gpio0.0 = phi i32 [ %call105, %if.then103 ], [ 0, %if.end101.if.end113_crit_edge ]
  %saved_gpio1.0 = phi i32 [ %call104, %if.then103 ], [ 0, %if.end101.if.end113_crit_edge ]
  tail call void @msleep(i32 noundef 4) #8
  %add114 = add nuw nsw i32 %offset.1.i, 6817068
  %49 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i, align 4
  %map.i305 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 6
  %51 = ptrtoint ptr %map.i305 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map.i305, align 8
  %tobool2.not.i306 = icmp eq ptr %52, null
  br i1 %tobool2.not.i306, label %if.else.i312, label %if.then5.i308, !prof !38

if.then5.i308:                                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i307 = getelementptr i8, ptr %52, i32 %add114
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit314

if.else.i312:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i309 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3
  %conv.i310 = zext i32 %add114 to i64
  %call10.i311 = tail call i32 @nvif_object_rd(ptr noundef %device1.i309, i32 noundef 4, i64 noundef %conv.i310) #8
  br label %NVReadRAMDAC.exit314

NVReadRAMDAC.exit314:                             ; preds = %if.else.i312, %if.then5.i308
  %_data.0.i313 = phi i32 [ %53, %if.then5.i308 ], [ %call10.i311, %if.else.i312 ]
  %and116 = lshr i32 %_data.0.i313, 8
  %shr = and i32 %and116, 1
  %54 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_private.i, align 4
  %device1.i316 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 2, i32 3
  %map.i317 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 2, i32 3, i32 0, i32 6
  %56 = ptrtoint ptr %map.i317 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i317, align 8
  %tobool.not.i318 = icmp eq ptr %57, null
  %mul6.i = shl nuw nsw i32 %shr, 13
  %add7.i319 = or i32 %mul6.i, 6296532
  br i1 %tobool.not.i318, label %if.else.i321, label %if.then.i, !prof !38

if.then.i:                                        ; preds = %NVReadRAMDAC.exit314
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i320 = getelementptr i8, ptr %57, i32 %add7.i319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i320, i8 26) #8, !srcloc !48
  br label %if.end.i

if.else.i321:                                     ; preds = %NVReadRAMDAC.exit314
  call void @__sanitizer_cov_trace_pc() #10
  %58 = zext i32 %add7.i319 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i316, i32 noundef 1, i64 noundef %58, i32 noundef 26) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i321, %if.then.i
  %59 = ptrtoint ptr %map.i317 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i317, align 8
  %tobool12.not.i = icmp eq ptr %60, null
  %add29.i = or i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !38

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %60, i32 %add29.i
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv26.i = zext i8 %61 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = zext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i316, i32 noundef 1, i64 noundef %62) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i322 = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %63 = and i32 %_data.0.i322, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool120.not = icmp eq i32 %63, 0
  %xor = zext i1 %tobool120.not to i32
  %spec.select293 = xor i32 %shr, %xor
  %and123 = and i32 %_data.0.i313, -306
  %shl = shl nuw nsw i32 %spec.select293, 8
  %or = or i32 %shl, %and123
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %64 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %65)
  %cmp127 = icmp ugt i8 %65, 4
  br i1 %cmp127, label %if.then129, label %NVReadVgaCrtc.exit.if.end138_crit_edge

NVReadVgaCrtc.exit.if.end138_crit_edge:           ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then129:                                       ; preds = %NVReadVgaCrtc.exit
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp131 = icmp eq i32 %67, 1
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %or134 = or i32 %or, 1703936
  br label %if.end138

if.else135:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %and136 = and i32 %or, -1703986
  br label %if.end138

if.end138:                                        ; preds = %if.else135, %if.then133, %NVReadVgaCrtc.exit.if.end138_crit_edge
  %routput.0 = phi i32 [ %or134, %if.then133 ], [ %and136, %if.else135 ], [ %or, %NVReadVgaCrtc.exit.if.end138_crit_edge ]
  %68 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_private.i, align 4
  %map.i325 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3, i32 0, i32 6
  %70 = ptrtoint ptr %map.i325 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i325, align 8
  %tobool2.not.i326 = icmp eq ptr %71, null
  br i1 %tobool2.not.i326, label %if.else.i331, label %do.body.i328, !prof !38

do.body.i328:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %map.i325 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i325, align 8
  %add.ptr.i327 = getelementptr i8, ptr %73, i32 %add114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %routput.0) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit332

if.else.i331:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i329 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3
  %conv.i330 = zext i32 %add114 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i329, i32 noundef 4, i64 noundef %conv.i330, i32 noundef %routput.0) #8
  br label %NVWriteRAMDAC.exit332

NVWriteRAMDAC.exit332:                            ; preds = %if.else.i331, %do.body.i328
  tail call void @msleep(i32 noundef 1) #8
  %74 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private.i, align 4
  %map.i335 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3, i32 0, i32 6
  %76 = ptrtoint ptr %map.i335 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map.i335, align 8
  %tobool2.not.i336 = icmp eq ptr %77, null
  br i1 %tobool2.not.i336, label %if.else.i342, label %if.then5.i338, !prof !38

if.then5.i338:                                    ; preds = %NVWriteRAMDAC.exit332
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i337 = getelementptr i8, ptr %77, i32 %add114
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i337) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit344

if.else.i342:                                     ; preds = %NVWriteRAMDAC.exit332
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i339 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3
  %conv.i340 = zext i32 %add114 to i64
  %call10.i341 = tail call i32 @nvif_object_rd(ptr noundef %device1.i339, i32 noundef 4, i64 noundef %conv.i340) #8
  br label %NVReadRAMDAC.exit344

NVReadRAMDAC.exit344:                             ; preds = %if.else.i342, %if.then5.i338
  %_data.0.i343 = phi i32 [ %78, %if.then5.i338 ], [ %call10.i341, %if.else.i342 ]
  %or143 = or i32 %_data.0.i343, 1
  %79 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_private.i, align 4
  %map.i347 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = ptrtoint ptr %map.i347 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map.i347, align 8
  %tobool2.not.i348 = icmp eq ptr %82, null
  br i1 %tobool2.not.i348, label %if.else.i353, label %do.body.i350, !prof !38

do.body.i350:                                     ; preds = %NVReadRAMDAC.exit344
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %map.i347 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i347, align 8
  %add.ptr.i349 = getelementptr i8, ptr %84, i32 %add114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349, i32 %or143) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit354

if.else.i353:                                     ; preds = %NVReadRAMDAC.exit344
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i351 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3
  %conv.i352 = zext i32 %add114 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i351, i32 noundef 4, i64 noundef %conv.i352, i32 noundef %or143) #8
  br label %NVWriteRAMDAC.exit354

NVWriteRAMDAC.exit354:                            ; preds = %if.else.i353, %do.body.i350
  %or144 = or i32 %testval.0, -2147483648
  %85 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select293)
  %tobool.not.i356 = icmp eq i32 %spec.select293, 0
  %spec.select.i357 = select i1 %tobool.not.i356, i32 6817296, i32 6825488
  %map.i358 = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 2, i32 3, i32 0, i32 6
  %87 = ptrtoint ptr %map.i358 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map.i358, align 8
  %tobool2.not.i359 = icmp eq ptr %88, null
  br i1 %tobool2.not.i359, label %if.else.i364, label %do.body.i361, !prof !38

do.body.i361:                                     ; preds = %NVWriteRAMDAC.exit354
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %map.i358 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i358, align 8
  %add.ptr.i360 = getelementptr i8, ptr %90, i32 %spec.select.i357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360, i32 %or144) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit365

if.else.i364:                                     ; preds = %NVWriteRAMDAC.exit354
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i362 = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 2, i32 3
  %conv.i363 = zext i32 %spec.select.i357 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i362, i32 noundef 4, i64 noundef %conv.i363, i32 noundef %or144) #8
  br label %NVWriteRAMDAC.exit365

NVWriteRAMDAC.exit365:                            ; preds = %if.else.i364, %do.body.i361
  %91 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i368 = select i1 %tobool.not.i356, i32 6817288, i32 6825480
  %map.i369 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3, i32 0, i32 6
  %93 = ptrtoint ptr %map.i369 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map.i369, align 8
  %tobool2.not.i370 = icmp eq ptr %94, null
  br i1 %tobool2.not.i370, label %if.else.i376, label %if.then5.i372, !prof !38

if.then5.i372:                                    ; preds = %NVWriteRAMDAC.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i371 = getelementptr i8, ptr %94, i32 %spec.select.i368
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i371) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit378

if.else.i376:                                     ; preds = %NVWriteRAMDAC.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i373 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3
  %conv.i374 = zext i32 %spec.select.i368 to i64
  %call10.i375 = tail call i32 @nvif_object_rd(ptr noundef %device1.i373, i32 noundef 4, i64 noundef %conv.i374) #8
  br label %NVReadRAMDAC.exit378

NVReadRAMDAC.exit378:                             ; preds = %if.else.i376, %if.then5.i372
  %_data.0.i377 = phi i32 [ %95, %if.then5.i372 ], [ %call10.i375, %if.else.i376 ]
  %or146 = or i32 %_data.0.i377, 4096
  %96 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_private.i, align 4
  %map.i382 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3, i32 0, i32 6
  %98 = ptrtoint ptr %map.i382 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i382, align 8
  %tobool2.not.i383 = icmp eq ptr %99, null
  br i1 %tobool2.not.i383, label %if.else.i388, label %do.body.i385, !prof !38

do.body.i385:                                     ; preds = %NVReadRAMDAC.exit378
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %map.i382 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map.i382, align 8
  %add.ptr.i384 = getelementptr i8, ptr %101, i32 %spec.select.i368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 %or146) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit389

if.else.i388:                                     ; preds = %NVReadRAMDAC.exit378
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i386 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3
  %conv.i387 = zext i32 %spec.select.i368 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i386, i32 noundef 4, i64 noundef %conv.i387, i32 noundef %or146) #8
  br label %NVWriteRAMDAC.exit389

NVWriteRAMDAC.exit389:                            ; preds = %if.else.i388, %do.body.i385
  tail call void @msleep(i32 noundef 5) #8
  %102 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_private.i, align 4
  %map.i392 = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 2, i32 3, i32 0, i32 6
  %104 = ptrtoint ptr %map.i392 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map.i392, align 8
  %tobool2.not.i393 = icmp eq ptr %105, null
  br i1 %tobool2.not.i393, label %if.else.i399, label %if.then5.i395, !prof !38

if.then5.i395:                                    ; preds = %NVWriteRAMDAC.exit389
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i394 = getelementptr i8, ptr %105, i32 %add
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i394) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit401

if.else.i399:                                     ; preds = %NVWriteRAMDAC.exit389
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i396 = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 2, i32 3
  %conv.i397 = zext i32 %add to i64
  %call10.i398 = tail call i32 @nvif_object_rd(ptr noundef %device1.i396, i32 noundef 4, i64 noundef %conv.i397) #8
  br label %NVReadRAMDAC.exit401

NVReadRAMDAC.exit401:                             ; preds = %if.else.i399, %if.then5.i395
  %_data.0.i400 = phi i32 [ %106, %if.then5.i395 ], [ %call10.i398, %if.else.i399 ]
  %107 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_private.i, align 4
  %map.i404 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 3, i32 0, i32 6
  %109 = ptrtoint ptr %map.i404 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map.i404, align 8
  %tobool2.not.i405 = icmp eq ptr %110, null
  br i1 %tobool2.not.i405, label %if.else.i411, label %if.then5.i407, !prof !38

if.then5.i407:                                    ; preds = %NVReadRAMDAC.exit401
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i406 = getelementptr i8, ptr %110, i32 %add
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit413

if.else.i411:                                     ; preds = %NVReadRAMDAC.exit401
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i408 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 3
  %conv.i409 = zext i32 %add to i64
  %call10.i410 = tail call i32 @nvif_object_rd(ptr noundef %device1.i408, i32 noundef 4, i64 noundef %conv.i409) #8
  br label %NVReadRAMDAC.exit413

NVReadRAMDAC.exit413:                             ; preds = %if.else.i411, %if.then5.i407
  %_data.0.i412 = phi i32 [ %111, %if.then5.i407 ], [ %call10.i410, %if.else.i411 ]
  %112 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_private.i, align 4
  %map.i417 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = ptrtoint ptr %map.i417 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i417, align 8
  %tobool2.not.i418 = icmp eq ptr %115, null
  br i1 %tobool2.not.i418, label %if.else.i424, label %if.then5.i420, !prof !38

if.then5.i420:                                    ; preds = %NVReadRAMDAC.exit413
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i419 = getelementptr i8, ptr %115, i32 %spec.select.i368
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit426

if.else.i424:                                     ; preds = %NVReadRAMDAC.exit413
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i421 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  %conv.i422 = zext i32 %spec.select.i368 to i64
  %call10.i423 = tail call i32 @nvif_object_rd(ptr noundef %device1.i421, i32 noundef 4, i64 noundef %conv.i422) #8
  br label %NVReadRAMDAC.exit426

NVReadRAMDAC.exit426:                             ; preds = %if.else.i424, %if.then5.i420
  %_data.0.i425 = phi i32 [ %116, %if.then5.i420 ], [ %call10.i423, %if.else.i424 ]
  %and153 = and i32 %_data.0.i425, -4097
  %117 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_private.i, align 4
  %map.i430 = getelementptr inbounds %struct.nouveau_drm, ptr %118, i32 0, i32 2, i32 3, i32 0, i32 6
  %119 = ptrtoint ptr %map.i430 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map.i430, align 8
  %tobool2.not.i431 = icmp eq ptr %120, null
  br i1 %tobool2.not.i431, label %if.else.i436, label %do.body.i433, !prof !38

do.body.i433:                                     ; preds = %NVReadRAMDAC.exit426
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %map.i430 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %map.i430, align 8
  %add.ptr.i432 = getelementptr i8, ptr %122, i32 %spec.select.i368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i432, i32 %and153) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit437

if.else.i436:                                     ; preds = %NVReadRAMDAC.exit426
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i434 = getelementptr inbounds %struct.nouveau_drm, ptr %118, i32 0, i32 2, i32 3
  %conv.i435 = zext i32 %spec.select.i368 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i434, i32 noundef 4, i64 noundef %conv.i435, i32 noundef %and153) #8
  br label %NVWriteRAMDAC.exit437

NVWriteRAMDAC.exit437:                            ; preds = %if.else.i436, %do.body.i433
  %123 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_private.i, align 4
  %map.i441 = getelementptr inbounds %struct.nouveau_drm, ptr %124, i32 0, i32 2, i32 3, i32 0, i32 6
  %125 = ptrtoint ptr %map.i441 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %map.i441, align 8
  %tobool2.not.i442 = icmp eq ptr %126, null
  br i1 %tobool2.not.i442, label %if.else.i447, label %do.body.i444, !prof !38

do.body.i444:                                     ; preds = %NVWriteRAMDAC.exit437
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %127 = ptrtoint ptr %map.i441 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i441, align 8
  %add.ptr.i443 = getelementptr i8, ptr %128, i32 %spec.select.i357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i443, i32 0) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit448

if.else.i447:                                     ; preds = %NVWriteRAMDAC.exit437
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i445 = getelementptr inbounds %struct.nouveau_drm, ptr %124, i32 0, i32 2, i32 3
  %conv.i446 = zext i32 %spec.select.i357 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i445, i32 noundef 4, i64 noundef %conv.i446, i32 noundef 0) #8
  br label %NVWriteRAMDAC.exit448

NVWriteRAMDAC.exit448:                            ; preds = %if.else.i447, %do.body.i444
  %129 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_private.i, align 4
  %map.i451 = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3, i32 0, i32 6
  %131 = ptrtoint ptr %map.i451 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %map.i451, align 8
  %tobool2.not.i452 = icmp eq ptr %132, null
  br i1 %tobool2.not.i452, label %if.else.i457, label %do.body.i454, !prof !38

do.body.i454:                                     ; preds = %NVWriteRAMDAC.exit448
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %map.i451 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %map.i451, align 8
  %add.ptr.i453 = getelementptr i8, ptr %134, i32 %add114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i453, i32 %_data.0.i313) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit458

if.else.i457:                                     ; preds = %NVWriteRAMDAC.exit448
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i455 = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3
  %conv.i456 = zext i32 %add114 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i455, i32 noundef 4, i64 noundef %conv.i456, i32 noundef %_data.0.i313) #8
  br label %NVWriteRAMDAC.exit458

NVWriteRAMDAC.exit458:                            ; preds = %if.else.i457, %do.body.i454
  %135 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_private.i, align 4
  %map.i461 = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 2, i32 3, i32 0, i32 6
  %137 = ptrtoint ptr %map.i461 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map.i461, align 8
  %tobool2.not.i462 = icmp eq ptr %138, null
  br i1 %tobool2.not.i462, label %if.else.i467, label %do.body.i464, !prof !38

do.body.i464:                                     ; preds = %NVWriteRAMDAC.exit458
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %map.i461 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map.i461, align 8
  %add.ptr.i463 = getelementptr i8, ptr %140, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i463, i32 %_data.0.i) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit468

if.else.i467:                                     ; preds = %NVWriteRAMDAC.exit458
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i465 = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 2, i32 3
  %conv.i466 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i465, i32 noundef 4, i64 noundef %conv.i466, i32 noundef %_data.0.i) #8
  br label %NVWriteRAMDAC.exit468

NVWriteRAMDAC.exit468:                            ; preds = %if.else.i467, %do.body.i464
  br i1 %cmp55, label %if.then158, label %NVWriteRAMDAC.exit468.if.end178_crit_edge

NVWriteRAMDAC.exit468.if.end178_crit_edge:        ; preds = %NVWriteRAMDAC.exit468
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then158:                                       ; preds = %NVWriteRAMDAC.exit468
  %141 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %map.i, align 8
  %tobool162.not = icmp eq ptr %142, null
  br i1 %tobool162.not, label %if.else176, label %do.body170, !prof !38

do.body170:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %143 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map.i, align 8
  %add.ptr175 = getelementptr i8, ptr %144, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %saved_powerctrl_4.0) #8, !srcloc !42
  br label %if.end178

if.else176:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 5520, i32 noundef %saved_powerctrl_4.0) #8
  br label %if.end178

if.end178:                                        ; preds = %if.else176, %do.body170, %NVWriteRAMDAC.exit468.if.end178_crit_edge
  %145 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %map.i, align 8
  %tobool182.not = icmp eq ptr %146, null
  br i1 %tobool182.not, label %if.else196, label %do.body190, !prof !38

do.body190:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %map.i, align 8
  %add.ptr195 = getelementptr i8, ptr %148, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 %_data.0) #8, !srcloc !42
  br label %if.end197

if.else196:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 5512, i32 noundef %_data.0) #8
  br label %if.end197

if.end197:                                        ; preds = %if.else196, %do.body190
  br i1 %tobool102.not, label %if.end197.if.end202_crit_edge, label %if.then199

if.end197.if.end202_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

if.then199:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  %call200 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %saved_gpio1.0) #8
  %call201 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %saved_gpio0.0) #8
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %if.end197.if.end202_crit_edge
  %and151 = and i32 %_data.0.i412, %_data.0.i400
  ret i32 %and151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_dac_update_dacclk(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dcb2 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %2 = ptrtoint ptr %dcb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcb2, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %7, i32 -102
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i.i, align 2
  %10 = and i16 %9, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.i = icmp ugt i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %cmp5.not.i.i = icmp ne i16 %10, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %10)
  %cmp8.not.i.i = icmp ne i16 %10, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %10)
  %cmp11.not.i.i = icmp ne i16 %10, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp14.not.i.i = icmp ne i16 %10, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %10)
  %cmp.i = icmp ne i16 %10, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %13 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %or = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or, align 1
  %19 = tail call i8 @llvm.cttz.i8(i8 %18, i1 true), !range !53
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %iszero = icmp eq i8 %18, 0
  %sub = select i1 %iszero, i32 -1, i32 %20
  %arrayidx = getelementptr %struct.nv04_display, ptr %16, i32 0, i32 3, i32 %sub
  %21 = and i8 %18, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %spec.select.i32 = select i1 %tobool.not.i, i32 0, i32 104
  %22 = and i8 %18, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not.i = icmp eq i8 %22, 0
  %add7.i = or i32 %spec.select.i32, 8192
  %offset.1.i = select i1 %tobool5.not.i, i32 %spec.select.i32, i32 %add7.i
  %add = add nuw nsw i32 %offset.1.i, 6817068
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !38

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %25, %if.then5.i ], [ %call10.i, %if.else.i ]
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %shl = shl nuw i32 1, %27
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %NVReadRAMDAC.exit
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %or9 = or i32 %29, %shl
  store i32 %or9, ptr %arrayidx, align 4
  %or10 = or i32 %_data.0.i, 1
  %30 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i35 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3, i32 0, i32 6
  %32 = ptrtoint ptr %map.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i35, align 8
  %tobool2.not.i36 = icmp eq ptr %33, null
  br i1 %tobool2.not.i36, label %if.else.i40, label %do.body.i, !prof !38

do.body.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %map.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i35, align 8
  %add.ptr.i37 = getelementptr i8, ptr %35, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %or10) #8, !srcloc !42
  br label %if.end17

if.else.i40:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i38 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3
  %conv.i39 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i38, i32 noundef 4, i64 noundef %conv.i39, i32 noundef %or10) #8
  br label %if.end17

if.else:                                          ; preds = %NVReadRAMDAC.exit
  %neg = xor i32 %shl, -1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %and = and i32 %37, %neg
  store i32 %and, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.else
  %and15 = and i32 %_data.0.i, -2
  %38 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i43 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3, i32 0, i32 6
  %40 = ptrtoint ptr %map.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i43, align 8
  %tobool2.not.i44 = icmp eq ptr %41, null
  br i1 %tobool2.not.i44, label %if.else.i49, label %do.body.i46, !prof !38

do.body.i46:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %map.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i43, align 8
  %add.ptr.i45 = getelementptr i8, ptr %43, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %and15) #8, !srcloc !42
  br label %if.end17

if.else.i49:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i47 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3
  %conv.i48 = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i47, i32 noundef 4, i64 noundef %conv.i48, i32 noundef %and15) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else.i49, %do.body.i46, %if.else.if.end17_crit_edge, %if.else.i40, %do.body.i, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nv04_dac_in_use(ptr nocapture noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = and i16 %7, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i.i = icmp ne i16 %8, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i.i = icmp ne i16 %8, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i.i = icmp ne i16 %8, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i.i = icmp ne i16 %8, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %8)
  %cmp.i = icmp ne i16 %8, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dcb2 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb2, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %or = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 9
  %17 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or, align 1
  %19 = tail call i8 @llvm.cttz.i8(i8 %18, i1 true), !range !53
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %iszero = icmp eq i8 %18, 0
  %sub = select i1 %iszero, i32 -1, i32 %20
  %arrayidx = getelementptr %struct.nv04_display, ptr %16, i32 0, i32 3, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  %shl = shl nuw i32 1, %24
  %neg = xor i32 %shl, -1
  %and = and i32 %22, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %25 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_dac_create(ptr noundef %connector, ptr noundef %entry1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 416) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry1, ptr %dcb, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 9
  %4 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %or, align 1
  %6 = tail call i8 @llvm.cttz.i8(i8 %5, i1 true), !range !53
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %iszero = icmp eq i8 %5, 0
  %sub = select i1 %iszero, i32 -1, i32 %7
  %or4 = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %or4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %or4, align 8
  %enc_save = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %enc_save to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv04_dac_save, ptr %enc_save, align 4
  %enc_restore = getelementptr inbounds %struct.nouveau_encoder, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %enc_restore to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nv04_dac_restore, ptr %enc_restore, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %14, i32 -102
  %15 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i.i, align 2
  %17 = and i16 %16, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3, i32 1, i32 4
  %18 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i.i = icmp ugt i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %17)
  %cmp5.not.i.i = icmp ne i16 %17, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %17)
  %cmp8.not.i.i = icmp ne i16 %17, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %17)
  %cmp11.not.i.i = icmp ne i16 %17, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %17)
  %cmp14.not.i.i = icmp ne i16 %17, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %17)
  %cmp.i = icmp ne i16 %17, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  %nv17_dac_helper_funcs.nv04_dac_helper_funcs = select i1 %spec.select.i, ptr @nv17_dac_helper_funcs, ptr @nv04_dac_helper_funcs
  %call8 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nv04_dac_funcs, i32 noundef 1, ptr noundef null) #8
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %nv17_dac_helper_funcs.nv04_dac_helper_funcs, ptr %helper_private.i, align 4
  %heads = getelementptr inbounds %struct.dcb_output, ptr %entry1, i32 0, i32 5
  %21 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %heads, align 1
  %conv9 = zext i8 %22 to i32
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %possible_clones, align 8
  %call10 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_save(ptr nocapture noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = and i16 %7, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i.i = icmp ne i16 %8, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i.i = icmp ne i16 %8, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i.i = icmp ne i16 %8, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i.i = icmp ne i16 %8, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %8)
  %cmp.i = icmp ne i16 %8, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dcb1.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb1.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %or.i, align 1
  %15 = and i8 %14, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %spec.select.i8 = select i1 %tobool.not.i, i32 0, i32 104
  %16 = and i8 %14, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  %add7.i = or i32 %spec.select.i8, 8192
  %offset.1.i = select i1 %tobool5.not.i, i32 %spec.select.i8, i32 %add7.i
  %add = add nuw nsw i32 %offset.1.i, 6817068
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !38

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %19, %if.then5.i ], [ %call10.i, %if.else.i ]
  %restore = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11
  %20 = ptrtoint ptr %restore to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %_data.0.i, ptr %restore, align 4
  br label %if.end

if.end:                                           ; preds = %NVReadRAMDAC.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_restore(ptr nocapture noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = and i16 %7, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i.i = icmp ne i16 %8, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i.i = icmp ne i16 %8, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i.i = icmp ne i16 %8, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i.i = icmp ne i16 %8, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %8)
  %cmp.i = icmp ne i16 %8, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dcb1.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb1.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %or.i, align 1
  %15 = and i8 %14, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %spec.select.i8 = select i1 %tobool.not.i, i32 0, i32 104
  %16 = and i8 %14, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  %add7.i = or i32 %spec.select.i8, 8192
  %offset.1.i = select i1 %tobool5.not.i, i32 %spec.select.i8, i32 %add7.i
  %add = add nuw nsw i32 %offset.1.i, 6817068
  %restore = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 11
  %17 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %restore, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !38

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !42
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %18) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.body.i, %entry.if.end_crit_edge
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %23 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %last_dpms, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %last_dpms = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 10
  %4 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mode)
  %cmp = icmp eq i32 %5, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mode, ptr %last_dpms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %7 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.do.end14_crit_edge, label %do.body5

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %14 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcb, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %mode, i32 noundef %17) #12
  br label %do.end14

do.end14:                                         ; preds = %do.body5, %if.end.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp15 = icmp eq i32 %mode, 0
  tail call void @nv04_dac_update_dacclk(ptr noundef %encoder, i1 noundef zeroext %cmp15)
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nv04_dac_mode_fixup(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i.i, align 4
  %device.i.i.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i.i, align 2
  %8 = and i16 %7, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i.i.i = icmp ne i16 %8, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp5.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i.i.i = icmp ne i16 %8, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp8.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i.i.i = icmp ne i16 %8, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 %cmp11.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i.i.i = icmp ne i16 %8, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 %cmp14.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %8)
  %cmp.i.i = icmp ne i16 %8, 272
  %spec.select.i.i = select i1 %or.cond23.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %spec.select.i.i, label %land.rhs.i, label %entry.nv04_dac_in_use.exit_crit_edge

entry.nv04_dac_in_use.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nv04_dac_in_use.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dcb2.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb2.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 9
  %17 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or.i, align 1
  %19 = tail call i8 @llvm.cttz.i8(i8 %18, i1 true) #8, !range !53
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %iszero.i = icmp eq i8 %18, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %20
  %arrayidx.i = getelementptr %struct.nv04_display, ptr %16, i32 0, i32 3, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  %shl.i = shl nuw i32 1, %24
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %22, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  br label %nv04_dac_in_use.exit

nv04_dac_in_use.exit:                             ; preds = %land.rhs.i, %entry.nv04_dac_in_use.exit_crit_edge
  %25 = phi i1 [ true, %entry.nv04_dac_in_use.exit_crit_edge ], [ %tobool.i, %land.rhs.i ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_prepare(ptr noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %0 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %helper_private, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void %9(ptr noundef %encoder, i32 noundef 3) #8
  tail call void @nv04_dfp_disable(ptr noundef %3, i32 noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_commit(ptr noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %9(ptr noundef %encoder, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %10 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end14_crit_edge, label %do.body4

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm6 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %drm6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm6, align 8
  %dev7 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %call9 = tail call ptr @nv04_encoder_get_connector(ptr noundef %encoder) #8
  %name10 = getelementptr inbounds %struct.drm_connector, ptr %call9, i32 0, i32 7
  %17 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name10, align 4
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
  %25 = tail call i8 @llvm.cttz.i8(i8 %24, i1 true), !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %iszero = icmp eq i8 %24, 0
  %narrow = add nuw nsw i8 %25, 65
  %narrow21 = select i1 %iszero, i8 64, i8 %narrow
  %add = zext i8 %narrow21 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %18, i32 noundef %20, i32 noundef %add) #12
  br label %do.end14

do.end14:                                         ; preds = %do.body4, %entry.do.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_mode_set(ptr noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = and i16 %7, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i.i = icmp ne i16 %8, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i.i = icmp ne i16 %8, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i.i = icmp ne i16 %8, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i.i = icmp ne i16 %8, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %8)
  %cmp.i = icmp ne i16 %8, 272
  %spec.select.i = select i1 %or.cond23.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %11 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 8
  %dcb1.i = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %15 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dcb1.i, align 4
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or.i, align 1
  %19 = and i8 %18, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %spec.select.i52 = select i1 %tobool.not.i, i32 0, i32 104
  %20 = and i8 %18, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %add7.i = or i32 %spec.select.i52, 8192
  %offset.1.i = select i1 %tobool5.not.i, i32 %spec.select.i52, i32 %add7.i
  %add = add nuw nsw i32 %offset.1.i, 6817068
  %shl = shl i32 %14, 8
  %or = or i32 %shl, 1
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !38

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %or) #8
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %25 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn112 = load ptr, ptr %encoder_list, align 4
  %cmp.not113 = icmp eq ptr %.pn112, %encoder_list
  br i1 %cmp.not113, label %NVWriteRAMDAC.exit.if.end23_crit_edge, label %NVWriteRAMDAC.exit.for.body_crit_edge

NVWriteRAMDAC.exit.for.body_crit_edge:            ; preds = %NVWriteRAMDAC.exit
  br label %for.body

NVWriteRAMDAC.exit.if.end23_crit_edge:            ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %NVWriteRAMDAC.exit.for.body_crit_edge
  %.pn114 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn112, %NVWriteRAMDAC.exit.for.body_crit_edge ]
  %rebind.0 = getelementptr i8, ptr %.pn114, i32 -4
  %cmp8 = icmp eq ptr %rebind.0, %encoder
  br i1 %cmp8, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %dcb = getelementptr i8, ptr %.pn114, i32 80
  %26 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10.not = icmp eq i32 %29, 0
  br i1 %cmp10.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %or.i54 = getelementptr inbounds %struct.dcb_output, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %or.i54 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %or.i54, align 1
  %32 = and i8 %31, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i55 = icmp eq i8 %32, 0
  %spec.select.i56 = select i1 %tobool.not.i55, i32 0, i32 104
  %33 = and i8 %31, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not.i57 = icmp eq i8 %33, 0
  %add7.i58 = or i32 %spec.select.i56, 8192
  %offset.1.i59 = select i1 %tobool5.not.i57, i32 %spec.select.i56, i32 %add7.i58
  %add13 = add nuw nsw i32 %offset.1.i59, 6817068
  %34 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private.i, align 4
  %map.i62 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3, i32 0, i32 6
  %36 = ptrtoint ptr %map.i62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i62, align 8
  %tobool2.not.i63 = icmp eq ptr %37, null
  br i1 %tobool2.not.i63, label %if.else.i67, label %if.then5.i, !prof !38

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i64 = getelementptr i8, ptr %37, i32 %add13
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit

if.else.i67:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i65 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3
  %conv.i66 = zext i32 %add13 to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i65, i32 noundef 4, i64 noundef %conv.i66) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i67, %if.then5.i
  %_data.0.i = phi i32 [ %38, %if.then5.i ], [ %call10.i, %if.else.i67 ]
  %and = and i32 %_data.0.i, -257
  %39 = or i32 %and, %shl
  %or17 = xor i32 %39, 256
  %40 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i, align 4
  %map.i70 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3, i32 0, i32 6
  %42 = ptrtoint ptr %map.i70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i70, align 8
  %tobool2.not.i71 = icmp eq ptr %43, null
  br i1 %tobool2.not.i71, label %if.else.i76, label %do.body.i73, !prof !38

do.body.i73:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %map.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i70, align 8
  %add.ptr.i72 = getelementptr i8, ptr %45, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %or17) #8, !srcloc !42
  br label %for.inc

if.else.i76:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i74 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3
  %conv.i75 = zext i32 %add13 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i74, i32 noundef 4, i64 noundef %conv.i75, i32 noundef %or17) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i76, %do.body.i73, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %46 = ptrtoint ptr %.pn114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn114, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.if.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %NVWriteRAMDAC.exit.if.end23_crit_edge, %entry.if.end23_crit_edge
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %47 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %48)
  %cmp24 = icmp ult i16 %48, 68
  %dcb1.i78 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %49 = ptrtoint ptr %dcb1.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcb1.i78, align 4
  %or.i79 = getelementptr inbounds %struct.dcb_output, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %or.i79 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %or.i79, align 1
  %53 = and i8 %52, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i80 = icmp eq i8 %53, 0
  %spec.select.i81 = select i1 %tobool.not.i80, i32 0, i32 104
  %54 = and i8 %52, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool5.not.i82 = icmp eq i8 %54, 0
  %add7.i83 = or i32 %spec.select.i81, 8192
  %offset.1.i84 = select i1 %tobool5.not.i82, i32 %spec.select.i81, i32 %add7.i83
  %add28 = add nuw nsw i32 %offset.1.i84, 6817288
  %55 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_private.i, align 4
  %map.i87 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3, i32 0, i32 6
  %57 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map.i87, align 8
  %tobool2.not.i88 = icmp eq ptr %58, null
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  br i1 %tobool2.not.i88, label %if.else.i93, label %do.body.i90, !prof !38

do.body.i90:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i87, align 8
  %add.ptr.i89 = getelementptr i8, ptr %60, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 -268435456) #8, !srcloc !42
  br label %if.end31

if.else.i93:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i91 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3
  %conv.i92 = zext i32 %add28 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i91, i32 noundef 4, i64 noundef %conv.i92, i32 noundef -268435456) #8
  br label %if.end31

if.else:                                          ; preds = %if.end23
  br i1 %tobool2.not.i88, label %if.else.i110, label %do.body.i107, !prof !38

do.body.i107:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i87, align 8
  %add.ptr.i106 = getelementptr i8, ptr %62, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 1048576) #8, !srcloc !42
  br label %if.end31

if.else.i110:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i108 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3
  %conv.i109 = zext i32 %add28 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i108, i32 noundef 4, i64 noundef %conv.i109, i32 noundef 1048576) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else.i110, %do.body.i107, %if.else.i93, %do.body.i90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dcb2 = getelementptr inbounds %struct.nouveau_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dcb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb2, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i.i.i, align 4
  %device.i.i.i = getelementptr i8, ptr %7, i32 -102
  %8 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i.i.i, align 2
  %10 = and i16 %9, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.i.i = icmp ugt i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %cmp5.not.i.i.i = icmp ne i16 %10, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp5.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %10)
  %cmp8.not.i.i.i = icmp ne i16 %10, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp8.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %10)
  %cmp11.not.i.i.i = icmp ne i16 %10, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 %cmp11.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp14.not.i.i.i = icmp ne i16 %10, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 %cmp14.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %10)
  %cmp.i.i = icmp ne i16 %10, 272
  %spec.select.i.i = select i1 %or.cond23.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %spec.select.i.i, label %nv04_dac_in_use.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

nv04_dac_in_use.exit:                             ; preds = %entry
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %display.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %or.i = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or.i, align 1
  %19 = tail call i8 @llvm.cttz.i8(i8 %18, i1 true) #8, !range !53
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %iszero.i = icmp eq i8 %18, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %20
  %arrayidx.i = getelementptr %struct.nv04_display, ptr %16, i32 0, i32 3, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %shl.i = shl nuw i32 1, %24
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %22, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %nv04_dac_in_use.exit.if.end_crit_edge, label %nv04_dac_in_use.exit.cleanup_crit_edge

nv04_dac_in_use.exit.cleanup_crit_edge:           ; preds = %nv04_dac_in_use.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nv04_dac_in_use.exit.if.end_crit_edge:            ; preds = %nv04_dac_in_use.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %nv04_dac_in_use.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @nv17_dac_sample_load(ptr noundef %encoder)
  %and = and i32 %call4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %25 = load i32, ptr @__drm_debug, align 4
  %and.i24 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.i25.not = icmp eq i32 %and.i24, 0
  br i1 %tobool.i25.not, label %do.body.cleanup_crit_edge, label %do.body8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %drm10 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %drm10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm10, align 8
  %dev11 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev11, align 8
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %or = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %or, align 1
  %34 = tail call i8 @llvm.cttz.i8(i8 %33, i1 true), !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %iszero = icmp eq i8 %33, 0
  %narrow = add nuw nsw i8 %34, 65
  %narrow23 = select i1 %iszero, i8 64, i8 %narrow
  %add = zext i8 %narrow23 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nv04_dac_in_use.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %nv04_dac_in_use.exit.cleanup_crit_edge ], [ 1, %do.body8 ], [ 1, %do.body.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %connector) #2 align 64 {
entry:
  %_wait.i = alloca %struct.nvif_timer_wait, align 8
  %_wait21.i = alloca %struct.nvif_timer_wait, align 8
  %_wait61.i = alloca %struct.nvif_timer_wait, align 8
  %sense_pair = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  %8 = and i16 %7, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp5.not.i = icmp ne i16 %8, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %8)
  %cmp8.not.i = icmp ne i16 %8, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %8)
  %cmp11.not.i = icmp ne i16 %8, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp14.not.i = icmp ne i16 %8, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @NVSetOwner(ptr noundef %1, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !38

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %14, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 23) #8, !srcloc !48
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !38

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i = getelementptr i8, ptr %16, i32 6296533
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv26.i = zext i8 %17 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296533) #8
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %18 = or i8 %conv34.i, -128
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  %device1.i371 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3
  %map.i372 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 0, i32 6
  %21 = ptrtoint ptr %map.i372 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i372, align 8
  %tobool.not.i373 = icmp eq ptr %22, null
  br i1 %tobool.not.i373, label %if.else.i376, label %if.then.i375, !prof !38

if.then.i375:                                     ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i374 = getelementptr i8, ptr %22, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i374, i8 23) #8, !srcloc !48
  br label %if.end.i378

if.else.i376:                                     ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i371, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #8
  br label %if.end.i378

if.end.i378:                                      ; preds = %if.else.i376, %if.then.i375
  %23 = ptrtoint ptr %map.i372 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i372, align 8
  %tobool12.not.i377 = icmp eq ptr %24, null
  br i1 %tobool12.not.i377, label %if.else25.i, label %if.then19.i380, !prof !38

if.then19.i380:                                   ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i379 = getelementptr i8, ptr %24, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i379, i8 %18) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i = zext i8 %18 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i371, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i) #8
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i380
  %call7 = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #8
  %25 = and i8 %call7, -33
  tail call void @NVWriteVgaSeq(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %25) #8
  %26 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private.i, align 4
  %map.i382 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 0, i32 6
  %28 = ptrtoint ptr %map.i382 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i382, align 8
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %if.else.i385, label %if.then5.i, !prof !38

if.then5.i:                                       ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i383 = getelementptr i8, ptr %29, i32 6817288
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit

if.else.i385:                                     ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i384 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i384, i32 noundef 4, i64 noundef 6817288) #8
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i385, %if.then5.i
  %_data.0.i386 = phi i32 [ %30, %if.then5.i ], [ %call10.i, %if.else.i385 ]
  %and11 = and i32 %_data.0.i386, -65537
  %31 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i, align 4
  %map.i388 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = ptrtoint ptr %map.i388 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i388, align 8
  %tobool2.not.i389 = icmp eq ptr %34, null
  br i1 %tobool2.not.i389, label %if.else.i392, label %do.body.i, !prof !38

do.body.i:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %map.i388 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i388, align 8
  %add.ptr.i390 = getelementptr i8, ptr %36, i32 6817288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390, i32 %and11) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit

if.else.i392:                                     ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i391 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i391, i32 noundef 4, i64 noundef 6817288, i32 noundef %and11) #8
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i392, %do.body.i
  tail call void @msleep(i32 noundef 10) #8
  %37 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_private.i, align 4
  %device1.i394 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 2, i32 3
  %map.i395 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 2, i32 3, i32 0, i32 6
  %39 = ptrtoint ptr %map.i395 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i395, align 8
  %tobool.not.i396 = icmp eq ptr %40, null
  br i1 %tobool.not.i396, label %if.else.i399, label %if.then.i398, !prof !38

if.then.i398:                                     ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i397 = getelementptr i8, ptr %40, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i397, i8 40) #8, !srcloc !48
  br label %if.end.i401

if.else.i399:                                     ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i394, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #8
  br label %if.end.i401

if.end.i401:                                      ; preds = %if.else.i399, %if.then.i398
  %41 = ptrtoint ptr %map.i395 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i395, align 8
  %tobool12.not.i400 = icmp eq ptr %42, null
  br i1 %tobool12.not.i400, label %if.else27.i406, label %if.then19.i404, !prof !38

if.then19.i404:                                   ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i402 = getelementptr i8, ptr %42, i32 6296533
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i402) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv26.i403 = zext i8 %43 to i32
  br label %NVReadVgaCrtc.exit409

if.else27.i406:                                   ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i405 = tail call i32 @nvif_object_rd(ptr noundef %device1.i394, i32 noundef 1, i64 noundef 6296533) #8
  br label %NVReadVgaCrtc.exit409

NVReadVgaCrtc.exit409:                            ; preds = %if.else27.i406, %if.then19.i404
  %_data.0.i407 = phi i32 [ %conv26.i403, %if.then19.i404 ], [ %call31.i405, %if.else27.i406 ]
  %conv34.i408 = trunc i32 %_data.0.i407 to i8
  %44 = and i8 %conv34.i408, 124
  %45 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i, align 4
  %device1.i411 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  %map.i412 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %map.i412 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i412, align 8
  %tobool.not.i413 = icmp eq ptr %48, null
  br i1 %tobool.not.i413, label %if.else.i416, label %if.then.i415, !prof !38

if.then.i415:                                     ; preds = %NVReadVgaCrtc.exit409
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i414 = getelementptr i8, ptr %48, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i414, i8 40) #8, !srcloc !48
  br label %if.end.i418

if.else.i416:                                     ; preds = %NVReadVgaCrtc.exit409
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i411, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #8
  br label %if.end.i418

if.end.i418:                                      ; preds = %if.else.i416, %if.then.i415
  %49 = ptrtoint ptr %map.i412 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i412, align 8
  %tobool12.not.i417 = icmp eq ptr %50, null
  br i1 %tobool12.not.i417, label %if.else25.i422, label %if.then19.i420, !prof !38

if.then19.i420:                                   ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i419 = getelementptr i8, ptr %50, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i419, i8 %44) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit423

if.else25.i422:                                   ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i421 = zext i8 %44 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i411, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i421) #8
  br label %NVWriteVgaCrtc.exit423

NVWriteVgaCrtc.exit423:                           ; preds = %if.else25.i422, %if.then19.i420
  %51 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private.i, align 4
  %device1.i425 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 3
  %map.i426 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = ptrtoint ptr %map.i426 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i426, align 8
  %tobool.not.i427 = icmp eq ptr %54, null
  br i1 %tobool.not.i427, label %if.else.i430, label %if.then.i429, !prof !38

if.then.i429:                                     ; preds = %NVWriteVgaCrtc.exit423
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i428 = getelementptr i8, ptr %54, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i428, i8 26) #8, !srcloc !48
  br label %if.end.i432

if.else.i430:                                     ; preds = %NVWriteVgaCrtc.exit423
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i425, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #8
  br label %if.end.i432

if.end.i432:                                      ; preds = %if.else.i430, %if.then.i429
  %55 = ptrtoint ptr %map.i426 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map.i426, align 8
  %tobool12.not.i431 = icmp eq ptr %56, null
  br i1 %tobool12.not.i431, label %if.else27.i437, label %if.then19.i435, !prof !38

if.then19.i435:                                   ; preds = %if.end.i432
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i433 = getelementptr i8, ptr %56, i32 6296533
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i433) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv26.i434 = zext i8 %57 to i32
  br label %NVReadVgaCrtc.exit440

if.else27.i437:                                   ; preds = %if.end.i432
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i436 = tail call i32 @nvif_object_rd(ptr noundef %device1.i425, i32 noundef 1, i64 noundef 6296533) #8
  br label %NVReadVgaCrtc.exit440

NVReadVgaCrtc.exit440:                            ; preds = %if.else27.i437, %if.then19.i435
  %_data.0.i438 = phi i32 [ %conv26.i434, %if.then19.i435 ], [ %call31.i436, %if.else27.i437 ]
  %conv34.i439 = trunc i32 %_data.0.i438 to i8
  %58 = and i8 %conv34.i439, 63
  %59 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_private.i, align 4
  %device1.i442 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  %map.i443 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %61 = ptrtoint ptr %map.i443 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i443, align 8
  %tobool.not.i444 = icmp eq ptr %62, null
  br i1 %tobool.not.i444, label %if.else.i447, label %if.then.i446, !prof !38

if.then.i446:                                     ; preds = %NVReadVgaCrtc.exit440
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i445 = getelementptr i8, ptr %62, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i445, i8 26) #8, !srcloc !48
  br label %if.end.i449

if.else.i447:                                     ; preds = %NVReadVgaCrtc.exit440
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device1.i442, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #8
  br label %if.end.i449

if.end.i449:                                      ; preds = %if.else.i447, %if.then.i446
  %63 = ptrtoint ptr %map.i443 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i443, align 8
  %tobool12.not.i448 = icmp eq ptr %64, null
  br i1 %tobool12.not.i448, label %if.else25.i453, label %if.then19.i451, !prof !38

if.then19.i451:                                   ; preds = %if.end.i449
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i450 = getelementptr i8, ptr %64, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i450, i8 %58) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit454

if.else25.i453:                                   ; preds = %if.end.i449
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i452 = zext i8 %58 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i442, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i452) #8
  br label %NVWriteVgaCrtc.exit454

NVWriteVgaCrtc.exit454:                           ; preds = %if.else25.i453, %if.then19.i451
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %66, null
  br i1 %tobool.not, label %if.else, label %if.then22, !prof !38

if.then22:                                        ; preds = %NVWriteVgaCrtc.exit454
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %66, i32 6820807
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !48
  br label %if.end25

if.else:                                          ; preds = %NVWriteVgaCrtc.exit454
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820807, i32 noundef 0) #8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 8
  %tobool30.not = icmp eq ptr %68, null
  br i1 %tobool30.not, label %if.else43, label %if.then37, !prof !38

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr40 = getelementptr i8, ptr %68, i32 6820809
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv42 = zext i8 %69 to i32
  br label %if.end45

if.else43:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 @nvif_object_rd(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809) #8
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then37
  %_data.0 = phi i32 [ %conv42, %if.then37 ], [ %call44, %if.else43 ]
  %conv47 = trunc i32 %_data.0 to i8
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %tobool30.not.1 = icmp eq ptr %71, null
  br i1 %tobool30.not.1, label %if.else43.1, label %if.then37.1, !prof !38

if.then37.1:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr40.1 = getelementptr i8, ptr %71, i32 6820809
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40.1) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv42.1 = zext i8 %72 to i32
  br label %if.end45.1

if.else43.1:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call44.1 = tail call i32 @nvif_object_rd(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809) #8
  br label %if.end45.1

if.end45.1:                                       ; preds = %if.else43.1, %if.then37.1
  %_data.0.1 = phi i32 [ %conv42.1, %if.then37.1 ], [ %call44.1, %if.else43.1 ]
  %conv47.1 = trunc i32 %_data.0.1 to i8
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %tobool30.not.2 = icmp eq ptr %74, null
  br i1 %tobool30.not.2, label %if.else43.2, label %if.then37.2, !prof !38

if.then37.2:                                      ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr40.2 = getelementptr i8, ptr %74, i32 6820809
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr40.2) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv42.2 = zext i8 %75 to i32
  br label %if.end45.2

if.else43.2:                                      ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #10
  %call44.2 = tail call i32 @nvif_object_rd(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809) #8
  br label %if.end45.2

if.end45.2:                                       ; preds = %if.else43.2, %if.then37.2
  %_data.0.2 = phi i32 [ %conv42.2, %if.then37.2 ], [ %call44.2, %if.else43.2 ]
  %conv47.2 = trunc i32 %_data.0.2 to i8
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %tobool53.not = icmp eq ptr %77, null
  br i1 %tobool53.not, label %if.else66, label %if.then60, !prof !38

if.then60:                                        ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr63 = getelementptr i8, ptr %77, i32 6820806
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv65 = zext i8 %78 to i32
  br label %if.end68

if.else66:                                        ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 @nvif_object_rd(ptr noundef %device2, i32 noundef 1, i64 noundef 6820806) #8
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then60
  %_data50.0 = phi i32 [ %conv65, %if.then60 ], [ %call67, %if.else66 ]
  %conv70 = trunc i32 %_data50.0 to i8
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 8
  %tobool74.not = icmp eq ptr %80, null
  br i1 %tobool74.not, label %if.else85, label %if.then81, !prof !38

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr84 = getelementptr i8, ptr %80, i32 6820806
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84, i8 0) #8, !srcloc !48
  br label %if.end86

if.else85:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820806, i32 noundef 0) #8
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then81
  %81 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_private.i, align 4
  %map.i456 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3, i32 0, i32 6
  %83 = ptrtoint ptr %map.i456 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i456, align 8
  %tobool2.not.i457 = icmp eq ptr %84, null
  br i1 %tobool2.not.i457, label %if.else.i462, label %if.then5.i459, !prof !38

if.then5.i459:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i458 = getelementptr i8, ptr %84, i32 6817280
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %NVReadRAMDAC.exit464

if.else.i462:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i460 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3
  %call10.i461 = tail call i32 @nvif_object_rd(ptr noundef %device1.i460, i32 noundef 4, i64 noundef 6817280) #8
  br label %NVReadRAMDAC.exit464

NVReadRAMDAC.exit464:                             ; preds = %if.else.i462, %if.then5.i459
  %_data.0.i463 = phi i32 [ %85, %if.then5.i459 ], [ %call10.i461, %if.else.i462 ]
  %and88 = and i32 %_data.0.i463, -1179697
  %or89 = or i32 %and88, 48
  %86 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_private.i, align 4
  %map.i466 = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3, i32 0, i32 6
  %88 = ptrtoint ptr %map.i466 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i466, align 8
  %tobool2.not.i467 = icmp eq ptr %89, null
  br i1 %tobool2.not.i467, label %if.else.i471, label %do.body.i469, !prof !38

do.body.i469:                                     ; preds = %NVReadRAMDAC.exit464
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %map.i466 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map.i466, align 8
  %add.ptr.i468 = getelementptr i8, ptr %91, i32 6817280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i468, i32 %or89) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit472

if.else.i471:                                     ; preds = %NVReadRAMDAC.exit464
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i470 = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i470, i32 noundef 4, i64 noundef 6817280, i32 noundef %or89) #8
  br label %NVWriteRAMDAC.exit472

NVWriteRAMDAC.exit472:                            ; preds = %if.else.i471, %do.body.i469
  %92 = getelementptr inbounds [2 x i8], ptr %sense_pair, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond178.do.body_crit_edge, %NVWriteRAMDAC.exit472
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.cond178.do.body_crit_edge ], [ 8, %NVWriteRAMDAC.exit472 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sense_pair) #8
  %93 = ptrtoint ptr %sense_pair to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %sense_pair, align 1, !annotation !54
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %92, align 1, !annotation !54
  %95 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map, align 8
  %tobool93.not = icmp eq ptr %96, null
  br i1 %tobool93.not, label %if.else104, label %if.then100, !prof !38

if.then100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr103 = getelementptr i8, ptr %96, i32 6820808
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 0) #8, !srcloc !48
  br label %if.end105

if.else104:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820808, i32 noundef 0) #8
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then100
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map, align 8
  %tobool109.not = icmp eq ptr %98, null
  br i1 %tobool109.not, label %if.else120, label %if.then116, !prof !38

if.then116:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr119 = getelementptr i8, ptr %98, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr119, i8 0) #8, !srcloc !48
  br label %if.end121

if.else120:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef 0) #8
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then116
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 8
  %tobool125.not = icmp eq ptr %100, null
  br i1 %tobool125.not, label %if.else136, label %if.then132, !prof !38

if.then132:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr135 = getelementptr i8, ptr %100, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 0) #8, !srcloc !48
  br label %if.end137

if.else136:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef 0) #8
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then132
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 8
  %tobool141.not = icmp eq ptr %102, null
  br i1 %tobool141.not, label %if.else152, label %if.then148, !prof !38

if.then148:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr151 = getelementptr i8, ptr %102, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  %103 = trunc i32 %indvars.iv to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr151, i8 %103) #8, !srcloc !48
  br label %do.body155.preheader

if.else152:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef %indvars.iv) #8
  br label %do.body155.preheader

do.body155.preheader:                             ; preds = %if.else152, %if.then148
  br label %do.body155

do.body155:                                       ; preds = %land.rhs.do.body155_crit_edge, %do.body155.preheader
  %i.1 = phi i32 [ %inc168, %land.rhs.do.body155_crit_edge ], [ 0, %do.body155.preheader ]
  %104 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_private.i, align 4
  %device1.i474 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3
  %map.i475 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body155
  %i.0286.i = phi i32 [ 0, %do.body155 ], [ %inc224.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #8
  %106 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device1.i474, i64 noundef 10000000, ptr noundef nonnull %_wait.i) #8
  br label %do.body.i477

do.body.i477:                                     ; preds = %do.cond.i.do.body.i477_crit_edge, %for.body.i
  %107 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map.i475, align 8
  %tobool.not.i476 = icmp eq ptr %108, null
  br i1 %tobool.not.i476, label %if.else.i481, label %if.then.i479, !prof !38

if.then.i479:                                     ; preds = %do.body.i477
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i478 = getelementptr i8, ptr %108, i32 6296538
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  br label %if.end.i484

if.else.i481:                                     ; preds = %do.body.i477
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i480 = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 4, i64 noundef 6296538) #8
  br label %if.end.i484

if.end.i484:                                      ; preds = %if.else.i481, %if.then.i479
  %_data.0.i482 = phi i32 [ %109, %if.then.i479 ], [ %call10.i480, %if.else.i481 ]
  %and.i = and i32 %_data.0.i482, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i483 = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i483, label %if.end20.i, label %do.cond.i

do.cond.i:                                        ; preds = %if.end.i484
  %call15.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait.i) #8
  %cmp16.i = icmp sgt i64 %call15.i, -1
  br i1 %cmp16.i, label %do.cond.i.do.body.i477_crit_edge, label %do.end.thread.i

do.cond.i.do.body.i477_crit_edge:                 ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i477

do.end.thread.i:                                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end.i484
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait21.i) #8
  %110 = call ptr @memset(ptr %_wait21.i, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device1.i474, i64 noundef 10000000, ptr noundef nonnull %_wait21.i) #8
  br label %do.body25.i

do.body25.i:                                      ; preds = %do.cond53.i.do.body25.i_crit_edge, %if.end20.i
  %111 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map.i475, align 8
  %tobool31.not.i = icmp eq ptr %112, null
  br i1 %tobool31.not.i, label %if.else45.i, label %if.then38.i, !prof !38

if.then38.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i = getelementptr i8, ptr %112, i32 6296538
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  br label %if.end47.i

if.else45.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call46.i = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 4, i64 noundef 6296538) #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else45.i, %if.then38.i
  %_data28.0.i = phi i32 [ %113, %if.then38.i ], [ %call46.i, %if.else45.i ]
  %and49.i = and i32 %_data28.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %do.cond53.i, label %if.end60.i

do.cond53.i:                                      ; preds = %if.end47.i
  %call54.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait21.i) #8
  %cmp55.i = icmp sgt i64 %call54.i, -1
  br i1 %cmp55.i, label %do.cond53.i.do.body25.i_crit_edge, label %do.end56.thread.i

do.cond53.i.do.body25.i_crit_edge:                ; preds = %do.cond53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25.i

do.end56.thread.i:                                ; preds = %do.cond53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait21.i) #8
  br label %cleanup

if.end60.i:                                       ; preds = %if.end47.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait21.i) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait61.i) #8
  %114 = call ptr @memset(ptr %_wait61.i, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device1.i474, i64 noundef 10000000, ptr noundef nonnull %_wait61.i) #8
  br label %do.body65.i

do.body65.i:                                      ; preds = %do.cond93.i.do.body65.i_crit_edge, %if.end60.i
  %115 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map.i475, align 8
  %tobool71.not.i = icmp eq ptr %116, null
  br i1 %tobool71.not.i, label %if.else85.i, label %if.then78.i, !prof !38

if.then78.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr82.i = getelementptr i8, ptr %116, i32 6296538
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #8, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  br label %if.end87.i

if.else85.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  %call86.i = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 4, i64 noundef 6296538) #8
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else85.i, %if.then78.i
  %_data68.0.i = phi i32 [ %117, %if.then78.i ], [ %call86.i, %if.else85.i ]
  %and89.i = and i32 %_data68.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end100.i, label %do.cond93.i

do.cond93.i:                                      ; preds = %if.end87.i
  %call94.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait61.i) #8
  %cmp95.i = icmp sgt i64 %call94.i, -1
  br i1 %cmp95.i, label %do.cond93.i.do.body65.i_crit_edge, label %do.end96.thread.i

do.cond93.i.do.body65.i_crit_edge:                ; preds = %do.cond93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65.i

do.end96.thread.i:                                ; preds = %do.cond93.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait61.i) #8
  br label %cleanup

if.end100.i:                                      ; preds = %if.end87.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait61.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 21474800) #8
  %119 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map.i475, align 8
  %tobool106.not.i = icmp eq ptr %120, null
  br i1 %tobool106.not.i, label %if.else118.i, label %if.then113.i, !prof !38

if.then113.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr116.i = getelementptr i8, ptr %120, i32 6296514
  %121 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr116.i) #8, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv.i = zext i8 %121 to i32
  br label %if.end120.i

if.else118.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %call119.i = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 1, i64 noundef 6296514) #8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else118.i, %if.then113.i
  %_data103.0.i = phi i32 [ %conv.i, %if.then113.i ], [ %call119.i, %if.else118.i ]
  %122 = and i32 %_data103.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %extract.t.i = icmp ne i32 %122, 0
  br label %do.body126.i

do.body126.i:                                     ; preds = %land.rhs.i.do.body126.i_crit_edge, %if.end120.i
  %j.0.i = phi i32 [ 0, %if.end120.i ], [ %inc.i, %land.rhs.i.do.body126.i_crit_edge ]
  %sense_a.0.off0.i = phi i1 [ %extract.t.i, %if.end120.i ], [ %sense_a.1.off0.i, %land.rhs.i.do.body126.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 21474800) #8
  %124 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %map.i475, align 8
  %tobool132.not.i = icmp eq ptr %125, null
  br i1 %tobool132.not.i, label %if.else145.i, label %if.then139.i, !prof !38

if.then139.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr142.i = getelementptr i8, ptr %125, i32 6296514
  %126 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr142.i) #8, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv144.i = zext i8 %126 to i32
  br label %if.end147.i

if.else145.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  %call146.i = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 1, i64 noundef 6296514) #8
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else145.i, %if.then139.i
  %_data129.0.i = phi i32 [ %conv144.i, %if.then139.i ], [ %call146.i, %if.else145.i ]
  %and151.i = and i32 %_data129.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.i = icmp ne i32 %and151.i, 0
  %conv155.i = zext i1 %sense_a.0.off0.i to i32
  %and151.lobit268.i = lshr exact i32 %and151.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and151.lobit268.i, i32 %conv155.i)
  %cmp158.not.i = icmp eq i32 %and151.lobit268.i, %conv155.i
  br i1 %cmp158.not.i, label %if.end147.i.do.cond203.i_crit_edge, label %if.then160.i

if.end147.i.do.cond203.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond203.i

if.then160.i:                                     ; preds = %if.end147.i
  %127 = ptrtoint ptr %map.i475 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i475, align 8
  %tobool166.not.i = icmp eq ptr %128, null
  br i1 %tobool166.not.i, label %if.else179.i, label %if.then173.i, !prof !38

if.then173.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr176.i = getelementptr i8, ptr %128, i32 6296514
  %129 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr176.i) #8, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv178.i = zext i8 %129 to i32
  br label %if.end181.i

if.else179.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  %call180.i = call i32 @nvif_object_rd(ptr noundef %device1.i474, i32 noundef 1, i64 noundef 6296514) #8
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else179.i, %if.then173.i
  %_data163.0.i = phi i32 [ %conv178.i, %if.then173.i ], [ %call180.i, %if.else179.i ]
  %and185.i = lshr i32 %_data163.0.i, 4
  %and185.lobit.i = and i32 %and185.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and151.lobit268.i, i32 %and185.lobit.i)
  %cmp192.i = icmp eq i32 %and151.lobit268.i, %and185.lobit.i
  %spec.select.i = xor i1 %tobool152.i, %cmp192.i
  %spec.select272.i = select i1 %cmp192.i, i1 %tobool152.i, i1 %sense_a.0.off0.i
  br label %do.cond203.i

do.cond203.i:                                     ; preds = %if.end181.i, %if.end147.i.do.cond203.i_crit_edge
  %sense_b.0.off0.i = phi i1 [ %tobool152.i, %if.end147.i.do.cond203.i_crit_edge ], [ %spec.select.i, %if.end181.i ]
  %sense_a.1.off0.i = phi i1 [ %sense_a.0.off0.i, %if.end147.i.do.cond203.i_crit_edge ], [ %spec.select272.i, %if.end181.i ]
  %130 = xor i1 %sense_b.0.off0.i, %sense_a.1.off0.i
  br i1 %130, label %land.rhs.i, label %if.else216.i

land.rhs.i:                                       ; preds = %do.cond203.i
  %inc.i = add nuw nsw i32 %j.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.then215.i, label %land.rhs.i.do.body126.i_crit_edge

land.rhs.i.do.body126.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body126.i

if.then215.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %sense_pair, i32 %i.0286.i
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx.i, align 1
  br label %for.inc.i

if.else216.i:                                     ; preds = %do.cond203.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx218.i = getelementptr i8, ptr %sense_pair, i32 %i.0286.i
  %frombool219.i = zext i1 %sense_a.1.off0.i to i8
  %132 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool219.i, ptr %arrayidx218.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else216.i, %if.then215.i
  %inc224.i = add nuw nsw i32 %i.0286.i, 1
  %exitcond289.not.i = icmp eq i32 %inc224.i, 2
  br i1 %exitcond289.not.i, label %do.cond, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.cond:                                          ; preds = %for.inc.i
  %133 = ptrtoint ptr %sense_pair to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sense_pair, align 1, !range !58
  %135 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %92, align 1, !range !58
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %136)
  %cmp166.not = icmp eq i8 %134, %136
  br i1 %cmp166.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %inc168 = add nuw nsw i32 %i.1, 1
  %exitcond.not = icmp eq i32 %inc168, 10
  br i1 %exitcond.not, label %land.rhs.do.cond178.thread_crit_edge, label %land.rhs.do.body155_crit_edge

land.rhs.do.body155_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body155

land.rhs.do.cond178.thread_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond178.thread

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.1)
  %cmp171 = icmp eq i32 %i.1, 10
  br i1 %cmp171, label %do.end.do.cond178.thread_crit_edge, label %do.cond178

do.end.do.cond178.thread_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond178.thread

do.cond178.thread:                                ; preds = %do.end.do.cond178.thread_crit_edge, %land.rhs.do.cond178.thread_crit_edge
  %137 = trunc i32 %indvars.iv to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sense_pair) #8
  %inc179551 = add i8 %137, 1
  br label %out

cleanup:                                          ; preds = %do.end96.thread.i, %do.end56.thread.i, %do.end.thread.i
  %blue.0570 = trunc i32 %indvars.iv to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sense_pair) #8
  br label %out

do.cond178:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %extract.t366.not = icmp eq i8 %134, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sense_pair) #8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %indvars.iv)
  %cmp181 = icmp ugt i32 %indvars.iv, 22
  %brmerge = select i1 %cmp181, i1 true, i1 %extract.t366.not
  br i1 %brmerge, label %out.loopexit, label %do.cond178.do.body_crit_edge

do.cond178.do.body_crit_edge:                     ; preds = %do.cond178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

out.loopexit:                                     ; preds = %do.cond178
  call void @__sanitizer_cov_trace_pc() #10
  %138 = trunc i32 %indvars.iv.next to i8
  br label %out

out:                                              ; preds = %out.loopexit, %cleanup, %do.cond178.thread
  %blue.1 = phi i8 [ %blue.0570, %cleanup ], [ %inc179551, %do.cond178.thread ], [ %138, %out.loopexit ]
  %139 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map, align 8
  %tobool191.not = icmp eq ptr %140, null
  br i1 %tobool191.not, label %if.else202, label %if.then198, !prof !38

if.then198:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr201 = getelementptr i8, ptr %140, i32 6820806
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr201, i8 %conv70) #8, !srcloc !48
  br label %if.end204

if.else202:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %conv203 = and i32 %_data50.0, 255
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820806, i32 noundef %conv203) #8
  br label %if.end204

if.end204:                                        ; preds = %if.else202, %if.then198
  %141 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_private.i, align 4
  %map.i486 = getelementptr inbounds %struct.nouveau_drm, ptr %142, i32 0, i32 2, i32 3, i32 0, i32 6
  %143 = ptrtoint ptr %map.i486 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map.i486, align 8
  %tobool2.not.i487 = icmp eq ptr %144, null
  br i1 %tobool2.not.i487, label %if.else.i491, label %do.body.i489, !prof !38

do.body.i489:                                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %145 = ptrtoint ptr %map.i486 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %map.i486, align 8
  %add.ptr.i488 = getelementptr i8, ptr %146, i32 6817280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488, i32 %_data.0.i463) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit492

if.else.i491:                                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i490 = getelementptr inbounds %struct.nouveau_drm, ptr %142, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %device1.i490, i32 noundef 4, i64 noundef 6817280, i32 noundef %_data.0.i463) #8
  br label %NVWriteRAMDAC.exit492

NVWriteRAMDAC.exit492:                            ; preds = %if.else.i491, %do.body.i489
  %147 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %map, align 8
  %tobool208.not = icmp eq ptr %148, null
  br i1 %tobool208.not, label %if.else219, label %if.then215, !prof !38

if.then215:                                       ; preds = %NVWriteRAMDAC.exit492
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr218 = getelementptr i8, ptr %148, i32 6820808
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr218, i8 0) #8, !srcloc !48
  br label %if.end220

if.else219:                                       ; preds = %NVWriteRAMDAC.exit492
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820808, i32 noundef 0) #8
  br label %if.end220

if.end220:                                        ; preds = %if.else219, %if.then215
  %149 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %map, align 8
  %tobool228.not = icmp eq ptr %150, null
  br i1 %tobool228.not, label %if.else240, label %if.then235, !prof !38

if.then235:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr239 = getelementptr i8, ptr %150, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr239, i8 %conv47) #8, !srcloc !48
  br label %if.end243

if.else240:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  %conv242 = and i32 %_data.0, 255
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef %conv242) #8
  br label %if.end243

if.end243:                                        ; preds = %if.else240, %if.then235
  %151 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %map, align 8
  %tobool228.not.1 = icmp eq ptr %152, null
  br i1 %tobool228.not.1, label %if.else240.1, label %if.then235.1, !prof !38

if.then235.1:                                     ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr239.1 = getelementptr i8, ptr %152, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr239.1, i8 %conv47.1) #8, !srcloc !48
  br label %if.end243.1

if.else240.1:                                     ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  %conv242.1 = and i32 %_data.0.1, 255
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef %conv242.1) #8
  br label %if.end243.1

if.end243.1:                                      ; preds = %if.else240.1, %if.then235.1
  %153 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %map, align 8
  %tobool228.not.2 = icmp eq ptr %154, null
  br i1 %tobool228.not.2, label %if.else240.2, label %if.then235.2, !prof !38

if.then235.2:                                     ; preds = %if.end243.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr239.2 = getelementptr i8, ptr %154, i32 6820809
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr239.2, i8 %conv47.2) #8, !srcloc !48
  br label %if.end243.2

if.else240.2:                                     ; preds = %if.end243.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv242.2 = and i32 %_data.0.2, 255
  call void @nvif_object_wr(ptr noundef %device2, i32 noundef 1, i64 noundef 6820809, i32 noundef %conv242.2) #8
  br label %if.end243.2

if.end243.2:                                      ; preds = %if.else240.2, %if.then235.2
  %155 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev_private.i, align 4
  %map.i494 = getelementptr inbounds %struct.nouveau_drm, ptr %156, i32 0, i32 2, i32 3, i32 0, i32 6
  %157 = ptrtoint ptr %map.i494 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %map.i494, align 8
  %tobool2.not.i495 = icmp eq ptr %158, null
  br i1 %tobool2.not.i495, label %if.else.i499, label %do.body.i497, !prof !38

do.body.i497:                                     ; preds = %if.end243.2
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %159 = ptrtoint ptr %map.i494 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map.i494, align 8
  %add.ptr.i496 = getelementptr i8, ptr %160, i32 6817288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i496, i32 %_data.0.i386) #8, !srcloc !42
  br label %NVWriteRAMDAC.exit500

if.else.i499:                                     ; preds = %if.end243.2
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i498 = getelementptr inbounds %struct.nouveau_drm, ptr %156, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %device1.i498, i32 noundef 4, i64 noundef 6817288, i32 noundef %_data.0.i386) #8
  br label %NVWriteRAMDAC.exit500

NVWriteRAMDAC.exit500:                            ; preds = %if.else.i499, %do.body.i497
  %161 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_private.i, align 4
  %device1.i502 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3
  %map.i503 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3, i32 0, i32 6
  %163 = ptrtoint ptr %map.i503 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %map.i503, align 8
  %tobool.not.i504 = icmp eq ptr %164, null
  br i1 %tobool.not.i504, label %if.else.i507, label %if.then.i506, !prof !38

if.then.i506:                                     ; preds = %NVWriteRAMDAC.exit500
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i505 = getelementptr i8, ptr %164, i32 6296532
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i505, i8 40) #8, !srcloc !48
  br label %if.end.i509

if.else.i507:                                     ; preds = %NVWriteRAMDAC.exit500
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device1.i502, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #8
  br label %if.end.i509

if.end.i509:                                      ; preds = %if.else.i507, %if.then.i506
  %165 = ptrtoint ptr %map.i503 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map.i503, align 8
  %tobool12.not.i508 = icmp eq ptr %166, null
  br i1 %tobool12.not.i508, label %if.else25.i513, label %if.then19.i511, !prof !38

if.then19.i511:                                   ; preds = %if.end.i509
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i510 = getelementptr i8, ptr %166, i32 6296533
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i510, i8 %conv34.i408) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit514

if.else25.i513:                                   ; preds = %if.end.i509
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i512 = and i32 %_data.0.i407, 255
  call void @nvif_object_wr(ptr noundef %device1.i502, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i512) #8
  br label %NVWriteVgaCrtc.exit514

NVWriteVgaCrtc.exit514:                           ; preds = %if.else25.i513, %if.then19.i511
  %167 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_private.i, align 4
  %device1.i516 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3
  %map.i517 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3, i32 0, i32 6
  %169 = ptrtoint ptr %map.i517 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %map.i517, align 8
  %tobool.not.i518 = icmp eq ptr %170, null
  br i1 %tobool.not.i518, label %if.else.i521, label %if.then.i520, !prof !38

if.then.i520:                                     ; preds = %NVWriteVgaCrtc.exit514
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i519 = getelementptr i8, ptr %170, i32 6296532
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i519, i8 26) #8, !srcloc !48
  br label %if.end.i523

if.else.i521:                                     ; preds = %NVWriteVgaCrtc.exit514
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device1.i516, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #8
  br label %if.end.i523

if.end.i523:                                      ; preds = %if.else.i521, %if.then.i520
  %171 = ptrtoint ptr %map.i517 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %map.i517, align 8
  %tobool12.not.i522 = icmp eq ptr %172, null
  br i1 %tobool12.not.i522, label %if.else25.i527, label %if.then19.i525, !prof !38

if.then19.i525:                                   ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i524 = getelementptr i8, ptr %172, i32 6296533
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i524, i8 %conv34.i439) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit528

if.else25.i527:                                   ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i526 = and i32 %_data.0.i438, 255
  call void @nvif_object_wr(ptr noundef %device1.i516, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i526) #8
  br label %NVWriteVgaCrtc.exit528

NVWriteVgaCrtc.exit528:                           ; preds = %if.else25.i527, %if.then19.i525
  call void @NVWriteVgaSeq(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %call7) #8
  %173 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_private.i, align 4
  %device1.i530 = getelementptr inbounds %struct.nouveau_drm, ptr %174, i32 0, i32 2, i32 3
  %map.i531 = getelementptr inbounds %struct.nouveau_drm, ptr %174, i32 0, i32 2, i32 3, i32 0, i32 6
  %175 = ptrtoint ptr %map.i531 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %map.i531, align 8
  %tobool.not.i532 = icmp eq ptr %176, null
  br i1 %tobool.not.i532, label %if.else.i535, label %if.then.i534, !prof !38

if.then.i534:                                     ; preds = %NVWriteVgaCrtc.exit528
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i533 = getelementptr i8, ptr %176, i32 6296532
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i533, i8 23) #8, !srcloc !48
  br label %if.end.i537

if.else.i535:                                     ; preds = %NVWriteVgaCrtc.exit528
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvif_object_wr(ptr noundef %device1.i530, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #8
  br label %if.end.i537

if.end.i537:                                      ; preds = %if.else.i535, %if.then.i534
  %177 = ptrtoint ptr %map.i531 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %map.i531, align 8
  %tobool12.not.i536 = icmp eq ptr %178, null
  br i1 %tobool12.not.i536, label %if.else25.i541, label %if.then19.i539, !prof !38

if.then19.i539:                                   ; preds = %if.end.i537
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24.i538 = getelementptr i8, ptr %178, i32 6296533
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i538, i8 %conv34.i) #8, !srcloc !48
  br label %NVWriteVgaCrtc.exit542

if.else25.i541:                                   ; preds = %if.end.i537
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i540 = and i32 %_data.0.i, 255
  call void @nvif_object_wr(ptr noundef %device1.i530, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i540) #8
  br label %NVWriteVgaCrtc.exit542

NVWriteVgaCrtc.exit542:                           ; preds = %if.else25.i541, %if.then19.i539
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %blue.1)
  %cmp248 = icmp eq i8 %blue.1, 24
  br i1 %cmp248, label %do.body251, label %NVWriteVgaCrtc.exit542.cleanup269_crit_edge

NVWriteVgaCrtc.exit542.cleanup269_crit_edge:      ; preds = %NVWriteVgaCrtc.exit542
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup269

do.body251:                                       ; preds = %NVWriteVgaCrtc.exit542
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %179 = load i32, ptr @__drm_debug, align 4
  %and.i543 = and i32 %179, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i543)
  %tobool.i.not = icmp eq i32 %and.i543, 0
  br i1 %tobool.i.not, label %do.body251.cleanup269_crit_edge, label %do.body254

do.body251.cleanup269_crit_edge:                  ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup269

do.body254:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #10
  %drm259 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %180 = ptrtoint ptr %drm259 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %drm259, align 8
  %dev260 = getelementptr inbounds %struct.nouveau_drm, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev260, align 8
  %dev261 = getelementptr inbounds %struct.drm_device, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %dev261 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev261, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.9, ptr noundef %name) #12
  br label %cleanup269

cleanup269:                                       ; preds = %do.body254, %do.body251.cleanup269_crit_edge, %NVWriteVgaCrtc.exit542.cleanup269_crit_edge
  %retval.0 = phi i32 [ 1, %do.body254 ], [ 1, %do.body251.cleanup269_crit_edge ], [ 2, %NVWriteVgaCrtc.exit542.cleanup269_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVSetOwner(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_dac_destroy(ptr noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #8
  tail call void @kfree(ptr noundef %encoder) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @nv17_dac_helper_funcs, !1, !"nv17_dac_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 514, i32 46}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 469, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv04_dac_dpms._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv04_dac_dpms._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 421, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nv04_dac_commit._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nv04_dac_commit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 346, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv17_dac_detect._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv17_dac_detect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @nv04_dac_helper_funcs, !21, !"nv04_dac_helper_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 505, i32 46}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 228, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nv04_dac_detect._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nv04_dac_detect._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @nv04_dac_funcs, !28, !"nv04_dac_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv04/dac.c", i32 523, i32 39}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 4503242}
!40 = !{i64 2157888548}
!41 = !{i64 2157889609}
!42 = !{i64 4502824}
!43 = !{i64 2157931289}
!44 = !{i64 2157932317}
!45 = !{i64 2157933538}
!46 = !{i64 2157934566}
!47 = !{i64 2152043972}
!48 = !{i64 4502627}
!49 = !{i64 4503022}
!50 = !{i64 2152042367}
!51 = !{i64 2157935836}
!52 = !{i64 2157936899}
!53 = !{i8 0, i8 9}
!54 = !{!"auto-init"}
!55 = !{i64 2157910966}
!56 = !{i64 2157913716}
!57 = !{i64 2157916466}
!58 = !{i8 0, i8 2}
