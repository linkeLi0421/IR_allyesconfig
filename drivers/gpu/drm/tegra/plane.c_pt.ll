; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
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
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.86, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.86 = type { [4 x i8] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }

@tegra_plane_funcs = dso_local constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @tegra_plane_destroy, ptr @tegra_plane_reset, ptr null, ptr @tegra_plane_atomic_duplicate_state, ptr @tegra_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@tegra_plane_icc_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null, ptr null, ptr null, ptr @.str.10], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/plane.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get %s interconnect\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"winb-vfilter\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_dc_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to map plane %u: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_dc_pin\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dc_pin._entry_ptr = internal global ptr @tegra_dc_pin._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wina\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"winb\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"winc\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cursor\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 842089025, i64 842093121, i64 842093913, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892420418, i64 892420434, i64 892420673, i64 892420696, i64 892424769, i64 892424792, i64 892426306, i64 892426322, i64 909199170, i64 909199186, i64 909202777, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.11 = internal global [12 x i64] [i64 10, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 30, i64 31, i64 37, i64 38]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 875708993, i64 875713089, i64 892420434, i64 892424769]
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"tegra_plane_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 129, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"tegra_plane_icc_names\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 703, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 714, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 721, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 728, i32 49 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 177, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 704, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 704, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 704, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/gpu/drm/tegra/plane.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 704, i32 44 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @tegra_dc_pin._entry, ptr @tegra_dc_pin._entry_ptr, ptr @tegra_plane_funcs, ptr @tegra_plane_icc_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_plane_icc_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_plane_destroy(ptr noundef %plane) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #7
  tail call void @kfree(ptr noundef %plane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_plane_reset(ptr noundef %plane) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 188) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %state1, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %plane, ptr %call7.i.i, align 8
  %index = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %zpos, align 8
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %normalized_zpos, align 4
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 136
  %12 = call ptr @memset(ptr %uglygep, i32 255, i32 12)
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_plane_atomic_duplicate_state(ptr noundef %plane) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 188) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i) #7
  %tiling = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 3
  %tiling3 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %tiling, ptr %tiling3, i32 12)
  %format = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %format4 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format4, align 8
  %swap = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %swap, align 4
  %swap5 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %swap5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %swap5, align 4
  %reflect_x = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %reflect_x to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reflect_x, align 4, !range !34
  %reflect_x7 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 6
  %12 = ptrtoint ptr %reflect_x7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reflect_x7, align 8
  %reflect_y = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %reflect_y to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reflect_y, align 1, !range !34
  %reflect_y9 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 7
  %15 = ptrtoint ptr %reflect_y9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %reflect_y9, align 1
  %opaque = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %opaque to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opaque, align 2, !range !34
  %opaque12 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 9
  %18 = ptrtoint ptr %opaque12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %opaque12, align 2
  %total_peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %total_peak_memory_bandwidth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_peak_memory_bandwidth, align 4
  %total_peak_memory_bandwidth14 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 10
  %21 = ptrtoint ptr %total_peak_memory_bandwidth14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %total_peak_memory_bandwidth14, align 8
  %peak_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %peak_memory_bandwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %peak_memory_bandwidth, align 4
  %peak_memory_bandwidth15 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 11
  %24 = ptrtoint ptr %peak_memory_bandwidth15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %peak_memory_bandwidth15, align 4
  %avg_memory_bandwidth = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %avg_memory_bandwidth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %avg_memory_bandwidth, align 4
  %avg_memory_bandwidth16 = getelementptr inbounds %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 12
  %27 = ptrtoint ptr %avg_memory_bandwidth16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %avg_memory_bandwidth16, align 8
  %arrayidx = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 8, i32 0
  %arrayidx18 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 8, i32 0
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx18, align 2
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx, align 2
  %arrayidx.1 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 8, i32 1
  %arrayidx18.1 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx18.1, align 2
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx.1, align 4
  %arrayidx22 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 2, i32 0
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 1, i32 0
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx23, align 4
  %arrayidx22.1 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %arrayidx22.1, align 4
  %arrayidx23.1 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx23.1, align 8
  %arrayidx22.2 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %arrayidx22.2, align 8
  %arrayidx23.2 = getelementptr %struct.tegra_plane_state, ptr %call7.i, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx23.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #7
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tegra_plane_format_mod_supported(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_format_info(i32 noundef %format) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i64 %modifier, -72057594033733632
  call void @__sanitizer_cov_trace_const_cmp8(i64 216172782117978112, i64 %0)
  %.not = icmp eq i64 %0, 216172782117978112
  br i1 %.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %1 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plane, align 8
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 20
  %3 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn19.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn19.i, %crtc_list.i
  br i1 %cmp.not21.i, label %if.then4.if.end9_crit_edge, label %for.body.lr.ph.i

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.lr.ph.i:                                 ; preds = %if.then4
  %possible_crtcs.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 5
  %4 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %possible_crtcs.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn19.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn22.i, i32 148
  %6 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %7
  %and.i = and i32 %shl.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %crtc.023.i = getelementptr i8, ptr %.pn22.i, i32 -8
  %tobool.not.i.i = icmp eq ptr %crtc.023.i, null
  %add.ptr.i.i = getelementptr i8, ptr %.pn22.i, i32 -256
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %soc.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 8
  %supports_sector_layout.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %supports_sector_layout.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_sector_layout.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not.i = icmp eq i8 %11, 0
  br i1 %tobool5.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %for.inc.i.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp10 = icmp eq i8 %14, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %cmp10, %if.end9 ], [ false, %if.then.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_prepare_fb(ptr noundef %plane, ptr noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %format68.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format68.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format68.i, align 8
  %num_planes69.i = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_planes69.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes69.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp71.not.i = icmp eq i8 %9, 0
  br i1 %cmp71.not.i, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %cache.i = getelementptr inbounds %struct.host1x_client, ptr %spec.select.i, i32 0, i32 12
  %group.i = getelementptr inbounds %struct.host1x_client, ptr %spec.select.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %10 = phi ptr [ %5, %for.body.lr.ph.i ], [ %22, %for.inc.i.for.body.i_crit_edge ]
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @tegra_fb_get_plane(ptr noundef %10, i32 noundef %i.072.i) #7
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %base4.i = getelementptr inbounds %struct.tegra_bo, ptr %call.i, i32 0, i32 1
  %call5.i = tail call ptr @host1x_bo_pin(ptr noundef %12, ptr noundef %base4.i, i32 noundef 1, ptr noundef %cache.i) #7
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call5.i to i32
  br label %do.end.i

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group.i, align 8
  %tobool.not.i11 = icmp eq ptr %15, null
  br i1 %tobool.not.i11, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  %chunks.i = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call5.i, i32 0, i32 6
  %16 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp10.i = icmp ugt i32 %17, 1
  br i1 %cmp10.i, label %if.then9.i.do.end.i_crit_edge, label %if.end13.i

if.then9.i.do.end.i_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call5.i, i32 0, i32 8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iova14.i = getelementptr inbounds %struct.tegra_bo, ptr %call.i, i32 0, i32 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end13.i
  %.sink.in.i = phi ptr [ %iova14.i, %if.else.i ], [ %phys.i, %if.end13.i ]
  %18 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %arrayidx16.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 2, i32 %i.072.i
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.i, ptr %arrayidx16.i, align 4
  %arrayidx19.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 1, i32 %i.072.i
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i, ptr %arrayidx19.i, align 4
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %21 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fb, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %26 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.then9.i.do.end.i_crit_edge, %if.then.i
  %err.1.ph.i = phi i32 [ %13, %if.then.i ], [ -22, %if.then9.i.do.end.i_crit_edge ]
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %i.072.i, i32 noundef %err.1.ph.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.072.i)
  %tobool22.not74.i = icmp eq i32 %i.072.i, 0
  br i1 %tobool22.not74.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %i.175.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.072.i, %do.end.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.175.i, -1
  %arrayidx24.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 1, i32 %dec.i
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx24.i, align 4
  tail call void @host1x_bo_unpin(ptr noundef %30) #7
  %arrayidx26.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 2, i32 %dec.i
  %31 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %arrayidx26.i, align 4
  %32 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx24.i, align 4
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.1.ph.i, %do.end.i.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %err.1.ph.i, %while.body.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_plane_cleanup_fb(ptr nocapture noundef readnone %plane, ptr nocapture noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -248
  %tobool.not4 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb.i, align 4
  %format1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format1.i, align 8
  %num_planes2.i = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num_planes2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_planes2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.not.i = icmp eq i8 %7, 0
  br i1 %cmp4.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 1, i32 %i.05.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @host1x_bo_unpin(ptr noundef %9) #7
  %arrayidx2.i = getelementptr %struct.tegra_plane_state, ptr %state, i32 0, i32 2, i32 %i.05.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arrayidx2.i, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %12 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_state_add(ptr nocapture noundef readonly %plane, ptr noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %call = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %state, ptr noundef %call, i32 noundef 0, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %visible.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %5 = ptrtoint ptr %visible.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %visible.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end6.if.end10_crit_edge, label %if.end.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state1, align 4
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc, align 4
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  %new_state.i.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %14, i32 3
  %15 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_state.i.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %x2.i.i, align 4
  %19 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src.i, align 4
  %sub.i.i = sub i32 %18, %20
  %shr.i = ashr i32 %sub.i.i, 16
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y2.i.i, align 4
  %y1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y1.i.i, align 4
  %sub.i379.i = sub i32 %22, %24
  %shr9.i = ashr i32 %sub.i379.i, 16
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21
  %x2.i380.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %x2.i380.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %x2.i380.i, align 4
  %27 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst.i, align 4
  %sub.i381.i = sub i32 %26, %28
  %y2.i382.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 3
  %29 = ptrtoint ptr %y2.i382.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y2.i382.i, align 4
  %y1.i383.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %y1.i383.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y1.i383.i, align 4
  %sub.i384.i = sub i32 %30, %32
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %33 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %format.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -248
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %soc15.i = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i.i, i32 0, i32 14
  %37 = ptrtoint ptr %soc15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc15.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp386.not.i = icmp eq i8 %40, 0
  br i1 %cmp386.not.i, label %if.end5.i.for.end.i_crit_edge, label %if.end23.peel.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end23.peel.i:                                  ; preds = %if.end5.i
  %41 = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv17.peel.i = zext i8 %43 to i32
  %mul18.peel.i = shl nuw nsw i32 %conv17.peel.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %exitcond.peel.not.i = icmp eq i8 %40, 1
  br i1 %exitcond.peel.not.i, label %if.end23.peel.i.for.end.i_crit_edge, label %for.body.peel.next.i

if.end23.peel.i.for.end.i_crit_edge:              ; preds = %if.end23.peel.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.peel.next.i:                             ; preds = %if.end23.peel.i
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 6
  %44 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hsub.i, align 2
  %div.rhs.trunc.i = zext i8 %45 to i16
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.i.if.end23.i_crit_edge, %for.body.peel.next.i
  %i.0388.i = phi i32 [ 1, %for.body.peel.next.i ], [ %inc.i, %if.end23.i.if.end23.i_crit_edge ]
  %bpp.0387.i = phi i32 [ %mul18.peel.i, %for.body.peel.next.i ], [ %add.i, %if.end23.i.if.end23.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i8], ptr %41, i32 0, i32 %i.0388.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv17.i = zext i8 %47 to i16
  %mul18.i = shl nuw nsw i16 %conv17.i, 3
  %div385.i = udiv i16 %mul18.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div385.i to i32
  %add.i = add i32 %bpp.0387.i, %div.zext.i
  %inc.i = add nuw nsw i32 %i.0388.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.if.end23.i_crit_edge, !llvm.loop !35

if.end23.i.if.end23.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %if.end23.peel.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %bpp.0.lcssa.i = phi i32 [ 0, %if.end5.i.for.end.i_crit_edge ], [ %mul18.peel.i, %if.end23.peel.i.for.end.i_crit_edge ], [ %add.i, %if.end23.i.for.end.i_crit_edge ]
  %48 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %sub.i381.i) #7
  %49 = tail call i32 @llvm.umin.i32(i32 %shr9.i, i32 %sub.i384.i) #7
  %mul33.i = mul i32 %49, %48
  %conv34.i = zext i32 %mul33.i to i64
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 7
  %call35.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode.i) #7
  %conv36.i = sext i32 %call35.i to i64
  %conv38.i = zext i32 %bpp.0.lcssa.i to i64
  %mul37.i = mul nuw i64 %conv38.i, %conv34.i
  %mul39.i = mul i64 %mul37.i, %conv36.i
  %sub.i = add i64 %mul39.i, 7
  %div41376.i = lshr i64 %sub.i, 3
  %add42.i = add nuw nsw i64 %div41376.i, 999
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add42.i, i32 0) #12, !srcloc !37
  %asmresult.i.i = extractvalue { i64, i32 } %50, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %50, 1
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add42.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !38
  %asmresult10.i.i = extractvalue { i64, i32 } %51, 0
  %div217377.i = lshr i64 %asmresult10.i.i, 9
  %52 = ptrtoint ptr %adjusted_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %adjusted_mode.i, align 4
  %mul240.i = mul i32 %53, %bpp.0.lcssa.i
  %sub242.i = add i32 %mul240.i, 7
  %div243378.i = lshr i32 %sub242.i, 3
  %plane_tiled_memory_bandwidth_x2.i = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %38, i32 0, i32 20
  %54 = ptrtoint ptr %plane_tiled_memory_bandwidth_x2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %plane_tiled_memory_bandwidth_x2.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool245.not.i = icmp eq i8 %55, 0
  br i1 %tobool245.not.i, label %for.end.i.if.else251.i_crit_edge, label %land.lhs.true247.i

for.end.i.if.else251.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else251.i

land.lhs.true247.i:                               ; preds = %for.end.i
  %tiling.i = getelementptr inbounds %struct.tegra_plane_state, ptr %state, i32 0, i32 3
  %56 = ptrtoint ptr %tiling.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tiling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp248.i = icmp eq i32 %57, 1
  br i1 %cmp248.i, label %land.lhs.true247.i.if.end252.i_crit_edge, label %land.lhs.true247.i.if.else251.i_crit_edge

land.lhs.true247.i.if.else251.i_crit_edge:        ; preds = %land.lhs.true247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else251.i

land.lhs.true247.i.if.end252.i_crit_edge:         ; preds = %land.lhs.true247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252.i

if.else251.i:                                     ; preds = %land.lhs.true247.i.if.else251.i_crit_edge, %for.end.i.if.else251.i_crit_edge
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.else251.i, %land.lhs.true247.i.if.end252.i_crit_edge
  %mul.0.i = phi i32 [ 1, %if.else251.i ], [ 2, %land.lhs.true247.i.if.end252.i_crit_edge ]
  %narrow.i = mul nuw nsw i32 %mul.0.i, %div243378.i
  %peak_memory_bandwidth.i = getelementptr inbounds %struct.tegra_plane_state, ptr %state, i32 0, i32 11
  %58 = ptrtoint ptr %peak_memory_bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %narrow.i, ptr %peak_memory_bandwidth.i, align 4
  %59 = trunc i64 %div217377.i to i32
  %conv258.i = mul i32 %mul.0.i, %59
  %avg_memory_bandwidth.i = getelementptr inbounds %struct.tegra_plane_state, ptr %state, i32 0, i32 12
  %60 = ptrtoint ptr %avg_memory_bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv258.i, ptr %avg_memory_bandwidth.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end252.i, %if.end6.if.end10_crit_edge
  %index = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index, align 8
  %shl = shl i32 2, %62
  %planes = getelementptr inbounds %struct.tegra_dc_state, ptr %call, i32 0, i32 4
  %63 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %planes, align 4
  %or = or i32 %64, %shl
  store i32 %or, ptr %planes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end10 ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tegra_plane_format(i32 noundef %fourcc, ptr noundef writeonly %format, ptr noundef writeonly %swap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %swap, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %swap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %swap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %if.end.return_crit_edge [
    i32 842093121, label %sw.bb
    i32 892424769, label %sw.bb1
    i32 909199186, label %sw.bb2
    i32 892420434, label %sw.bb3
    i32 875713089, label %sw.bb4
    i32 875708993, label %sw.bb5
    i32 842089025, label %sw.bb6
    i32 892420673, label %sw.bb7
    i32 892420418, label %sw.bb8
    i32 892424792, label %sw.bb9
    i32 892426322, label %sw.bb10
    i32 892420696, label %sw.bb11
    i32 892426306, label %sw.bb12
    i32 909199170, label %sw.bb13
    i32 875708738, label %sw.bb14
    i32 875708754, label %sw.bb15
    i32 875713112, label %sw.bb16
    i32 875709016, label %sw.bb17
    i32 1498831189, label %sw.bb18
    i32 1448695129, label %sw.bb19
    i32 842093913, label %sw.bb23
    i32 909202777, label %sw.bb24
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %format, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %format, align 4
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %format, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %format, align 4
  br label %return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %format, align 4
  br label %return

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 13, ptr %format, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 27, ptr %format, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 28, ptr %format, align 4
  br label %return

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 29, ptr %format, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %format, align 4
  br label %return

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 31, ptr %format, align 4
  br label %return

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %format, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33, ptr %format, align 4
  br label %return

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 34, ptr %format, align 4
  br label %return

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 35, ptr %format, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 36, ptr %format, align 4
  br label %return

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 37, ptr %format, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 38, ptr %format, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %format, align 4
  br label %return

sw.bb19:                                          ; preds = %if.end
  br i1 %tobool.not, label %sw.bb19.return_crit_edge, label %if.end22

sw.bb19.return_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end22:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %format, align 4
  %22 = ptrtoint ptr %swap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %swap, align 4
  br label %return

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 18, ptr %format, align 4
  br label %return

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %format, align 4
  br label %return

return:                                           ; preds = %sw.bb24, %sw.bb23, %if.end22, %sw.bb19.return_crit_edge, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb19.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %sw.bb24 ], [ 0, %sw.bb23 ], [ 0, %if.end22 ], [ 0, %sw.bb18 ], [ 0, %sw.bb17 ], [ 0, %sw.bb16 ], [ 0, %sw.bb15 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra_plane_format_is_indexed(i32 noundef %format) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %format)
  %switch = icmp ult i32 %format, 4
  ret i1 %switch
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %format, ptr noundef writeonly %planar, ptr noundef writeonly %bpc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %format, label %sw.epilog [
    i32 16, label %entry.sw.bb_crit_edge
    i32 17, label %entry.sw.bb_crit_edge22
    i32 18, label %entry.sw.bb4_crit_edge
    i32 19, label %entry.sw.bb4_crit_edge23
    i32 20, label %entry.sw.bb4_crit_edge24
    i32 21, label %entry.sw.bb4_crit_edge25
    i32 22, label %entry.sw.bb4_crit_edge26
    i32 23, label %entry.sw.bb4_crit_edge27
    i32 24, label %entry.sw.bb4_crit_edge28
    i32 25, label %entry.sw.bb4_crit_edge29
  ]

entry.sw.bb4_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  %tobool.not = icmp eq ptr %planar, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %planar to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %planar, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %tobool1.not = icmp eq ptr %bpc, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %bpc, align 4
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge23, %entry.sw.bb4_crit_edge24, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26, %entry.sw.bb4_crit_edge27, %entry.sw.bb4_crit_edge28, %entry.sw.bb4_crit_edge29
  %tobool5.not = icmp eq ptr %planar, null
  br i1 %tobool5.not, label %sw.bb4.if.end7_crit_edge, label %if.then6

sw.bb4.if.end7_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %planar to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %planar, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %bpc, null
  br i1 %tobool8.not, label %if.end7.return_crit_edge, label %if.then9

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %bpc, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %planar, null
  br i1 %tobool11.not, label %sw.epilog.return_crit_edge, label %if.then12

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %planar to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %planar, align 1
  br label %return

return:                                           ; preds = %if.then12, %sw.epilog.return_crit_edge, %if.then9, %if.end7.return_crit_edge, %if.then2, %if.end.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then2 ], [ true, %if.end.return_crit_edge ], [ true, %if.then9 ], [ true, %if.end7.return_crit_edge ], [ false, %if.then12 ], [ false, %sw.epilog.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_setup_legacy_state(ptr noundef readonly %tegra, ptr nocapture noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1.i = getelementptr inbounds %struct.tegra_plane_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format1.i, align 4
  %switch.tableidx = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %switch.hole_check, label %entry.sw.default.i_crit_edge

entry.sw.default.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %entry.sw.default.i_crit_edge
  %opaque.off.i.i = add i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %opaque.off.i.i)
  %switch.i.i = icmp ult i32 %opaque.off.i.i, 10
  br i1 %switch.i.i, label %sw.default.i.if.end.i_crit_edge, label %if.end.i.i

sw.default.i.if.end.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.default.i
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %if.end.i.i.cleanup_crit_edge [
    i32 30, label %if.end.i.i.if.end.i_crit_edge
    i32 31, label %sw.bb1.i.i
    i32 38, label %sw.bb2.i.i
    i32 37, label %sw.bb3.i.i
    i32 6, label %sw.bb4.i.i
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.i.if.end.i_crit_edge, %sw.default.i.if.end.i_crit_edge
  %.sink.i.i = phi i32 [ 6, %sw.bb4.i.i ], [ 12, %sw.bb3.i.i ], [ 13, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ %1, %sw.default.i.if.end.i_crit_edge ], [ 5, %if.end.i.i.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i.i, ptr %format1.i, align 4
  br label %if.end

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 389, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.hole_check.if.end_crit_edge

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %if.end.i
  %.sink.i = phi i8 [ 1, %if.end.i ], [ 0, %switch.hole_check.if.end_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.tegra_plane_state, ptr %state, i32 0, i32 9
  %6 = ptrtoint ptr %opaque.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink.i, ptr %opaque.i, align 2
  %state1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %7 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state1.i.i, align 4
  %planes.i.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %planes.i.i.i, align 4
  %index.i.i.i.i = getelementptr inbounds %struct.drm_plane, ptr %tegra, i32 0, i32 17
  %11 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i.i.i, align 4
  %old_state.i.i.i = getelementptr %struct.__drm_planes_state, ptr %10, i32 %12, i32 2
  %13 = ptrtoint ptr %old_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %old_state.i.i.i, align 4
  %normalized_zpos.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %normalized_zpos.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %normalized_zpos.i.i, align 4
  %normalized_zpos4.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 16
  %17 = ptrtoint ptr %normalized_zpos4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %normalized_zpos4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i.i = icmp eq i32 %16, %18
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.end.i.i10_crit_edge

if.end.if.end.i.i10_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i10

land.lhs.true.i.i:                                ; preds = %if.end
  %opaque.i.i = getelementptr inbounds %struct.tegra_plane_state, ptr %14, i32 0, i32 9
  %19 = ptrtoint ptr %opaque.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opaque.i.i, align 2, !range !34
  %21 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %opaque.i, align 2, !range !34
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp9.i.i = icmp eq i8 %20, %22
  br i1 %cmp9.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.if.end.i.i10_crit_edge

land.lhs.true.i.i.if.end.i.i10_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i10

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i10:                                     ; preds = %land.lhs.true.i.i.if.end.i.i10_crit_edge, %if.end.if.end.i.i10_crit_edge
  %23 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tegra, align 8
  %plane_list.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 18
  %25 = ptrtoint ptr %plane_list.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn57.i.i = load ptr, ptr %plane_list.i.i, align 4
  %cmp16.not60.i.i = icmp eq ptr %.pn57.i.i, %plane_list.i.i
  br i1 %cmp16.not60.i.i, label %if.end.i.i10.if.end.i11_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i10.if.end.i11_crit_edge:                ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i11

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i10
  %dc21.i.i = getelementptr inbounds %struct.tegra_plane, ptr %tegra, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn61.i.i = phi ptr [ %.pn57.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %plane.062.i.i = getelementptr i8, ptr %.pn61.i.i, i32 -4
  %cmp19.i.i = icmp eq ptr %plane.062.i.i, %tegra
  br i1 %cmp19.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %dc.i.i = getelementptr i8, ptr %.pn61.i.i, i32 524
  %26 = ptrtoint ptr %dc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dc.i.i, align 8
  %28 = ptrtoint ptr %dc21.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dc21.i.i, align 8
  %cmp22.not.i.i = icmp eq ptr %27, %29
  br i1 %cmp22.not.i.i, label %if.end25.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end25.i.i:                                     ; preds = %lor.lhs.false.i.i
  %30 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state1.i.i, align 4
  %call28.i.i = tail call ptr @drm_atomic_get_plane_state(ptr noundef %31, ptr noundef %plane.062.i.i) #7
  %cmp.i.i.i = icmp ugt ptr %call28.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %tegra_plane_check_transparency.exit.i, label %if.end25.i.i.for.inc.i.i_crit_edge

if.end25.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end25.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %32 = ptrtoint ptr %.pn61.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn61.i.i, align 4
  %33 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tegra, align 8
  %plane_list15.i.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 18
  %cmp16.not.i.i = icmp eq ptr %.pn.i.i, %plane_list15.i.i
  br i1 %cmp16.not.i.i, label %for.inc.i.i.if.end.i11_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end.i11_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i11

tegra_plane_check_transparency.exit.i:            ; preds = %if.end25.i.i
  %cmp.i = icmp slt ptr %call28.i.i, inttoptr (i32 1 to ptr)
  br i1 %cmp.i, label %tegra_plane_setup_transparency.exit, label %tegra_plane_check_transparency.exit.i.if.end.i11_crit_edge

tegra_plane_check_transparency.exit.i.if.end.i11_crit_edge: ; preds = %tegra_plane_check_transparency.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i11

if.end.i11:                                       ; preds = %tegra_plane_check_transparency.exit.i.if.end.i11_crit_edge, %for.inc.i.i.if.end.i11_crit_edge, %if.end.i.i10.if.end.i11_crit_edge
  %35 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tegra, align 8
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 18
  %37 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn52.i = load ptr, ptr %plane_list.i, align 4
  %cmp5.not55.i = icmp eq ptr %.pn52.i, %plane_list.i
  br i1 %cmp5.not55.i, label %if.end.i11.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i11
  %dc7.i = getelementptr inbounds %struct.tegra_plane, ptr %tegra, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn56.i = phi ptr [ %.pn52.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %plane.057.i = getelementptr i8, ptr %.pn56.i, i32 -4
  %dc.i = getelementptr i8, ptr %.pn56.i, i32 524
  %38 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dc.i, align 8
  %40 = ptrtoint ptr %dc7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dc7.i, align 8
  %cmp8.not.i = icmp eq ptr %39, %41
  br i1 %cmp8.not.i, label %if.end10.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end10.i:                                       ; preds = %for.body.i
  %42 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state1.i.i, align 4
  %planes.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %planes.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %planes.i.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn56.i, i32 480
  %46 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i.i, align 4
  %new_state.i.i = getelementptr %struct.__drm_planes_state, ptr %45, i32 %47, i32 3
  %48 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %new_state.i.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end10.i.cleanup.i_crit_edge, label %if.then15.i

if.end10.i.cleanup.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then15.i:                                      ; preds = %if.end10.i
  %state1.i36.i = getelementptr inbounds %struct.drm_plane_state, ptr %49, i32 0, i32 25
  %52 = ptrtoint ptr %state1.i36.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state1.i36.i, align 4
  %dev80.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dev80.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev80.i.i, align 4
  %num_total_plane81.i.i = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 30, i32 17
  %56 = ptrtoint ptr %num_total_plane81.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_total_plane81.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp82.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp82.not.i.i, label %if.then15.i.cleanup.i_crit_edge, label %for.body.lr.ph.i37.i

if.then15.i.cleanup.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body.lr.ph.i37.i:                             ; preds = %if.then15.i
  %index20.i.i.i = getelementptr i8, ptr %.pn56.i, i32 532
  %normalized_zpos31.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %49, i32 0, i32 16
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %for.inc.i46.i.for.body.i39.i_crit_edge, %for.body.lr.ph.i37.i
  %58 = phi ptr [ %53, %for.body.lr.ph.i37.i ], [ %90, %for.inc.i46.i.for.body.i39.i_crit_edge ]
  %i.083.i.i = phi i32 [ 0, %for.body.lr.ph.i37.i ], [ %inc.i.i, %for.inc.i46.i.for.body.i39.i_crit_edge ]
  %planes.i38.i = getelementptr inbounds %struct.drm_atomic_state, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %planes.i38.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %planes.i38.i, align 4
  %arrayidx.i.i = getelementptr %struct.__drm_planes_state, ptr %60, i32 %i.083.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %for.body.i39.i.for.inc.i46.i_crit_edge, label %land.lhs.true.i41.i

for.body.i39.i.for.inc.i46.i_crit_edge:           ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i46.i

land.lhs.true.i41.i:                              ; preds = %for.body.i39.i
  %new_state.i40.i = getelementptr %struct.__drm_planes_state, ptr %60, i32 %i.083.i.i, i32 3
  %63 = ptrtoint ptr %new_state.i40.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %new_state.i40.i, align 4
  %cmp13.i.i = icmp eq ptr %62, %plane.057.i
  br i1 %cmp13.i.i, label %land.lhs.true.i41.i.for.inc.i46.i_crit_edge, label %lor.lhs.false.i43.i

land.lhs.true.i41.i.for.inc.i46.i_crit_edge:      ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i46.i

lor.lhs.false.i43.i:                              ; preds = %land.lhs.true.i41.i
  %dc.i42.i = getelementptr inbounds %struct.tegra_plane, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %dc.i42.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dc.i42.i, align 8
  %67 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dc.i, align 8
  %cmp15.not.i.i = icmp eq ptr %66, %68
  br i1 %cmp15.not.i.i, label %if.end.i.i.i, label %lor.lhs.false.i43.i.for.inc.i46.i_crit_edge

lor.lhs.false.i43.i.for.inc.i46.i_crit_edge:      ; preds = %lor.lhs.false.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i46.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i43.i
  %index24.i.i.i = getelementptr inbounds %struct.tegra_plane, ptr %62, i32 0, i32 3
  %69 = ptrtoint ptr %index20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index20.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp21.i.i.i = icmp eq i32 %70, 0
  %71 = ptrtoint ptr %index24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i.i.i = load i32, ptr %index24.i.i.i, align 8
  br i1 %cmp21.i.i.i, label %if.end23.1.thread.i.i.i, label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i)
  %cmp25.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %cmp25.i.i.i, label %if.end23.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, label %for.inc.i.i.i

if.end23.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_plane_get_overlap_index.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp21.1.i.i.i = icmp eq i32 %70, 1
  br i1 %cmp21.1.i.i.i, label %for.inc.i.i.i.if.end23.2.i.i.i_crit_edge, label %if.end23.1.i.i.i

for.inc.i.i.i.if.end23.2.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.2.i.i.i

if.end23.1.i.i.i:                                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i.i)
  %cmp25.1.i.i.i = icmp eq i32 %.pr.i.i.i, 1
  br i1 %cmp25.1.i.i.i, label %if.end23.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, label %for.inc.1.i.i.i

if.end23.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge: ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_plane_get_overlap_index.exit.i.i

if.end23.1.thread.i.i.i:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i.i)
  %cmp25.146.i.i.i = icmp eq i32 %.pr.i.i.i, 1
  br i1 %cmp25.146.i.i.i, label %if.end23.1.thread.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, label %if.end23.1.thread.i.i.i.if.end23.2.i.i.i_crit_edge

if.end23.1.thread.i.i.i.if.end23.2.i.i.i_crit_edge: ; preds = %if.end23.1.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.2.i.i.i

if.end23.1.thread.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge: ; preds = %if.end23.1.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_plane_get_overlap_index.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp21.2.i.i.i = icmp eq i32 %70, 2
  br i1 %cmp21.2.i.i.i, label %for.inc.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, label %for.inc.1.i.i.i.if.end23.2.i.i.i_crit_edge

for.inc.1.i.i.i.if.end23.2.i.i.i_crit_edge:       ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.2.i.i.i

for.inc.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_plane_get_overlap_index.exit.i.i

if.end23.2.i.i.i:                                 ; preds = %for.inc.1.i.i.i.if.end23.2.i.i.i_crit_edge, %if.end23.1.thread.i.i.i.if.end23.2.i.i.i_crit_edge, %for.inc.i.i.i.if.end23.2.i.i.i_crit_edge
  %index.1.144.i.i.i = phi i32 [ 1, %if.end23.1.thread.i.i.i.if.end23.2.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.if.end23.2.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end23.2.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i.i)
  %cmp25.2.i.i.i = icmp ne i32 %.pr.i.i.i, 2
  %inc.2.i.i.i = zext i1 %cmp25.2.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %index.1.144.i.i.i, %inc.2.i.i.i
  br label %tegra_plane_get_overlap_index.exit.i.i

tegra_plane_get_overlap_index.exit.i.i:           ; preds = %if.end23.2.i.i.i, %for.inc.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, %if.end23.1.thread.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, %if.end23.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge, %if.end23.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge
  %index.0.lcssa.i.i.i = phi i32 [ 0, %if.end23.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge ], [ 1, %if.end23.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge ], [ 0, %if.end23.1.thread.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.tegra_plane_get_overlap_index.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end23.2.i.i.i ]
  %fb.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %64, i32 0, i32 2
  %72 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fb.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %73, null
  br i1 %tobool18.not.i.i, label %tegra_plane_get_overlap_index.exit.i.i.if.else25.i.i_crit_edge, label %land.lhs.true19.i.i

tegra_plane_get_overlap_index.exit.i.i.if.else25.i.i_crit_edge: ; preds = %tegra_plane_get_overlap_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i.i

land.lhs.true19.i.i:                              ; preds = %tegra_plane_get_overlap_index.exit.i.i
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %format.i.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %77, label %land.lhs.true19.i.i.if.else25.i.i_crit_edge [
    i32 892424769, label %land.lhs.true19.i.i.if.end29.i.i_crit_edge
    i32 892420434, label %land.lhs.true19.i.i.if.end29.i.i_crit_edge18
    i32 875708993, label %land.lhs.true19.i.i.if.end29.i.i_crit_edge19
    i32 875713089, label %land.lhs.true19.i.i.if.end29.i.i_crit_edge20
  ]

land.lhs.true19.i.i.if.end29.i.i_crit_edge20:     ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.lhs.true19.i.i.if.end29.i.i_crit_edge19:     ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.lhs.true19.i.i.if.end29.i.i_crit_edge18:     ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.lhs.true19.i.i.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.lhs.true19.i.i.if.else25.i.i_crit_edge:      ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25.i.i

if.else25.i.i:                                    ; preds = %land.lhs.true19.i.i.if.else25.i.i_crit_edge, %tegra_plane_get_overlap_index.exit.i.i.if.else25.i.i_crit_edge
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else25.i.i, %land.lhs.true19.i.i.if.end29.i.i_crit_edge, %land.lhs.true19.i.i.if.end29.i.i_crit_edge18, %land.lhs.true19.i.i.if.end29.i.i_crit_edge19, %land.lhs.true19.i.i.if.end29.i.i_crit_edge20
  %.sink85.i.i = phi i8 [ 0, %if.else25.i.i ], [ 1, %land.lhs.true19.i.i.if.end29.i.i_crit_edge ], [ 1, %land.lhs.true19.i.i.if.end29.i.i_crit_edge18 ], [ 1, %land.lhs.true19.i.i.if.end29.i.i_crit_edge19 ], [ 1, %land.lhs.true19.i.i.if.end29.i.i_crit_edge20 ]
  %arrayidx27.i.i = getelementptr %struct.tegra_plane_state, ptr %49, i32 0, i32 8, i32 %index.0.lcssa.i.i.i
  %79 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.sink85.i.i, ptr %arrayidx27.i.i, align 2
  %normalized_zpos.i44.i = getelementptr inbounds %struct.drm_plane_state, ptr %64, i32 0, i32 16
  %80 = ptrtoint ptr %normalized_zpos.i44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %normalized_zpos.i44.i, align 4
  %82 = ptrtoint ptr %normalized_zpos31.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %normalized_zpos31.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp32.i.i = icmp ugt i32 %81, %83
  %.sink.i.i12 = zext i1 %cmp32.i.i to i8
  %84 = getelementptr %struct.tegra_plane_state, ptr %49, i32 0, i32 8, i32 %index.0.lcssa.i.i.i, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink.i.i12, ptr %84, align 1
  %86 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fb.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %87, null
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end29.i.i.for.inc.i46.i_crit_edge

if.end29.i.i.for.inc.i46.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i46.i

if.then43.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index.0.lcssa.i.i.i)
  %cmp44.i.i = icmp eq i32 %index.0.lcssa.i.i.i, 1
  %frombool.i.i = zext i1 %cmp44.i.i to i8
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %frombool.i.i, ptr %84, align 1
  br label %for.inc.i46.i

for.inc.i46.i:                                    ; preds = %if.then43.i.i, %if.end29.i.i.for.inc.i46.i_crit_edge, %lor.lhs.false.i43.i.for.inc.i46.i_crit_edge, %land.lhs.true.i41.i.for.inc.i46.i_crit_edge, %for.body.i39.i.for.inc.i46.i_crit_edge
  %inc.i.i = add nuw i32 %i.083.i.i, 1
  %89 = ptrtoint ptr %state1.i36.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %state1.i36.i, align 4
  %dev.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i.i, align 4
  %num_total_plane.i.i = getelementptr inbounds %struct.drm_device, ptr %92, i32 0, i32 30, i32 17
  %93 = ptrtoint ptr %num_total_plane.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_total_plane.i.i, align 4
  %cmp.i45.i = icmp ult i32 %inc.i.i, %94
  br i1 %cmp.i45.i, label %for.inc.i46.i.for.body.i39.i_crit_edge, label %for.inc.i46.i.cleanup.i_crit_edge

for.inc.i46.i.cleanup.i_crit_edge:                ; preds = %for.inc.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.inc.i46.i.for.body.i39.i_crit_edge:           ; preds = %for.inc.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i

cleanup.i:                                        ; preds = %for.inc.i46.i.cleanup.i_crit_edge, %if.then15.i.cleanup.i_crit_edge, %if.end10.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %95 = ptrtoint ptr %.pn56.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn.i = load ptr, ptr %.pn56.i, align 4
  %96 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tegra, align 8
  %plane_list4.i = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 30, i32 18
  %cmp5.not.i = icmp eq ptr %.pn.i, %plane_list4.i
  br i1 %cmp5.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_plane_setup_transparency.exit:              ; preds = %tegra_plane_check_transparency.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %call28.i.i to i32
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %tegra_plane_setup_transparency.exit, %cleanup.i.cleanup_crit_edge, %if.end.i11.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.i.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %if.end.i11.cleanup_crit_edge ], [ %99, %tegra_plane_setup_transparency.exit ], [ 0, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_interconnect_init(ptr nocapture noundef %plane) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  %arrayidx = getelementptr [7 x ptr], ptr @tegra_plane_icc_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dc = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 1
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc, align 8
  %dev1 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %do.end, label %lor.lhs.false.critedge, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 714, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %8 = add nsw i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %tobool27.not = icmp ult i32 %8, 3
  br i1 %tobool27.not, label %do.end45, label %if.end61, !prof !39

do.end45:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 715, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false.critedge
  %call = tail call ptr @devm_of_icc_get(ptr noundef %7, ptr noundef %3) #7
  %icc_mem = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 4
  %9 = ptrtoint ptr %icc_mem to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %icc_mem, align 4
  %cmp.i.i.not = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call to i32
  %call66 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %10, ptr noundef nonnull @.str.1, ptr noundef %3) #7
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp69 = icmp eq i32 %12, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end67
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc, align 8
  %has_win_b_vfilter_mem_client = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %has_win_b_vfilter_mem_client to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_win_b_vfilter_mem_client, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool70.not = icmp eq i8 %16, 0
  br i1 %tobool70.not, label %land.lhs.true.cleanup_crit_edge, label %if.then71

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true
  %call72 = tail call ptr @devm_of_icc_get(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  %icc_mem_vfilter = getelementptr inbounds %struct.tegra_plane, ptr %plane, i32 0, i32 5
  %17 = ptrtoint ptr %icc_mem_vfilter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call72, ptr %icc_mem_vfilter, align 8
  %cmp.i.i104.not = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i104.not, label %if.then76, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call72 to i32
  %call77 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.then71.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then65, %do.end45, %do.end
  %retval.0 = phi i32 [ %10, %if.then65 ], [ %18, %if.then76 ], [ -22, %do.end45 ], [ -22, %do.end ], [ 0, %if.then71.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_fb_get_plane(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_bo_pin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @tegra_plane_funcs, !1, !"tegra_plane_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 129, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 714, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 721, i32 27}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 728, i32 49}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 177, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tegra_dc_pin._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @tegra_dc_pin._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 704, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 704, i32 10}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 704, i32 18}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 704, i32 44}
!23 = !{ptr @tegra_plane_icc_names, !24, !"tegra_plane_icc_names", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tegra/plane.c", i32 703, i32 27}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = !{i64 1111658, i64 1111685, i64 1111707, i64 1111735}
!38 = !{i64 1112066, i64 1112093, i64 1112126, i64 1112147, i64 1112174, i64 1112200}
!39 = !{!"branch_weights", i32 1, i32 2000}
