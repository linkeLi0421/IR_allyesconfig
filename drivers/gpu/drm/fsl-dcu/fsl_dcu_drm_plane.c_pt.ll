; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.86 = type { i32, ptr }
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.fsl_dcu_soc_data = type { ptr, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
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

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate primary plane\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @fsl_dcu_drm_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_plane_formats = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909202777], [60 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @fsl_dcu_drm_plane_atomic_check, ptr @fsl_dcu_drm_plane_atomic_update, ptr @fsl_dcu_drm_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ls1021a\00", [24 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_plane_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 32, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No more layer left\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_dcu_drm_plane_index\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_plane_index._entry_ptr = internal global ptr @fsl_dcu_drm_plane_index._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 842093121, i64 842093144, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199186, i64 909202777]
@__sancov_gen_cov_switch_values.7 = internal global [11 x i64] [i64 9, i64 32, i64 842093121, i64 842093144, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909199186, i64 909202777]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 218, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"fsl_dcu_drm_plane_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 179, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"fsl_dcu_drm_plane_formats\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 188, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"fsl_dcu_drm_plane_helper_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 167, i32 44 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 158, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [47 x i8] c"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 32, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @fsl_dcu_drm_plane_index._entry, ptr @fsl_dcu_drm_plane_index._entry_ptr, ptr @.str, ptr @fsl_dcu_drm_plane_funcs, ptr @fsl_dcu_drm_plane_formats, ptr @fsl_dcu_drm_plane_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_plane_formats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_plane_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_dcu_drm_init_planes(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %soc = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 8
  %total_layer19 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %total_layer19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_layer19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not = icmp eq i32 %5, 0
  br i1 %cmp20.not, label %entry.for.end9_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end9

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %1, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc7.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.021 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc8, %for.inc7.for.cond1.preheader_crit_edge ]
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 8
  %layer_regs16 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %layer_regs16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %layer_regs16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not17 = icmp eq i32 %9, 0
  br i1 %cmp3.not17, label %for.cond1.preheader.for.inc7_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc7

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul5 = shl i32 %i.021, 6
  %add = add i32 %mul5, 508
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %j.018 = phi i32 [ 1, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %sub = shl i32 %j.018, 2
  %add6 = add i32 %add, %sub
  %call = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add6, i32 noundef 0) #7
  %inc = add i32 %j.018, 1
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 8
  %layer_regs = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %layer_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %layer_regs, align 4
  %cmp3.not = icmp ugt i32 %inc, %15
  br i1 %cmp3.not, label %for.body4.for.inc7_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.body4.for.inc7_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4.for.inc7_crit_edge, %for.cond1.preheader.for.inc7_crit_edge
  %inc8 = add nuw i32 %i.021, 1
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 8
  %total_layer = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %total_layer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_layer, align 4
  %cmp = icmp ult i32 %inc8, %19
  br i1 %cmp, label %for.inc7.for.cond1.preheader_crit_edge, label %for.inc7.for.end9_crit_edge

for.inc7.for.end9_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end9

for.inc7.for.cond1.preheader_crit_edge:           ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end9:                                         ; preds = %for.inc7.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsl_dcu_drm_primary_create_plane(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef nonnull @fsl_dcu_drm_plane_funcs, ptr noundef nonnull @fsl_dcu_drm_plane_formats, i32 noundef 9, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %primary.0 = phi ptr [ null, %if.then3 ], [ %call7.i.i, %if.end.if.end4_crit_edge ]
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %primary.0, i32 0, i32 18
  %1 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fsl_dcu_drm_plane_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi ptr [ %primary.0, %if.end4 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #7
  tail call void @kfree(ptr noundef %plane) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_dcu_drm_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default [
    i32 909199186, label %if.end.cleanup_crit_edge
    i32 875710290, label %if.end.cleanup_crit_edge8
    i32 875713112, label %if.end.cleanup_crit_edge9
    i32 875713089, label %if.end.cleanup_crit_edge10
    i32 842093144, label %if.end.cleanup_crit_edge11
    i32 842093121, label %if.end.cleanup_crit_edge12
    i32 892424792, label %if.end.cleanup_crit_edge13
    i32 892424769, label %if.end.cleanup_crit_edge14
    i32 909202777, label %if.end.cleanup_crit_edge15
  ]

if.end.cleanup_crit_edge15:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge13:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge10:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge9:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge8, %if.end.cleanup_crit_edge9, %if.end.cleanup_crit_edge10, %if.end.cleanup_crit_edge11, %if.end.cleanup_crit_edge12, %if.end.cleanup_crit_edge13, %if.end.cleanup_crit_edge14, %if.end.cleanup_crit_edge15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge8 ], [ 0, %if.end.cleanup_crit_edge9 ], [ 0, %if.end.cleanup_crit_edge10 ], [ 0, %if.end.cleanup_crit_edge11 ], [ 0, %if.end.cleanup_crit_edge12 ], [ 0, %if.end.cleanup_crit_edge13 ], [ 0, %if.end.cleanup_crit_edge14 ], [ 0, %if.end.cleanup_crit_edge15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i, align 8
  %total_layer1.i = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %total_layer1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_layer1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp.i = icmp ugt i32 %17, %7
  br i1 %cmp.i, label %fsl_dcu_drm_plane_index.exit, label %fsl_dcu_drm_plane_index.exit.thread

fsl_dcu_drm_plane_index.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2) #11
  br label %cleanup

fsl_dcu_drm_plane_index.exit:                     ; preds = %if.end
  %20 = xor i32 %7, -1
  %sub2.i = add i32 %17, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp = icmp slt i32 %sub2.i, 0
  br i1 %cmp, label %fsl_dcu_drm_plane_index.exit.cleanup_crit_edge, label %if.end5

fsl_dcu_drm_plane_index.exit.cleanup_crit_edge:   ; preds = %fsl_dcu_drm_plane_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %fsl_dcu_drm_plane_index.exit
  %call6 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %13, i32 noundef 0) #7
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %format, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %24, label %if.end5.cleanup_crit_edge [
    i32 909199186, label %if.end5.sw.epilog_crit_edge
    i32 875710290, label %sw.bb8
    i32 875713089, label %sw.bb9
    i32 875713112, label %if.end5.sw.bb10_crit_edge
    i32 842093121, label %sw.bb11
    i32 842093144, label %if.end5.sw.bb12_crit_edge
    i32 892424769, label %sw.bb13
    i32 892424792, label %if.end5.sw.bb14_crit_edge
    i32 909202777, label %sw.bb15
  ]

if.end5.sw.bb14_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

if.end5.sw.bb12_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end5.sw.bb10_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb9, %if.end5.sw.bb10_crit_edge
  %alpha.0 = phi i32 [ 0, %if.end5.sw.bb10_crit_edge ], [ 2, %sw.bb9 ]
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb11, %if.end5.sw.bb12_crit_edge
  %alpha.1 = phi i32 [ 0, %if.end5.sw.bb12_crit_edge ], [ 2, %sw.bb11 ]
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb13, %if.end5.sw.bb14_crit_edge
  %alpha.2 = phi i32 [ 0, %if.end5.sw.bb14_crit_edge ], [ 2, %sw.bb13 ]
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %if.end5.sw.epilog_crit_edge
  %alpha.3 = phi i32 [ 0, %sw.bb15 ], [ %alpha.2, %sw.bb14 ], [ %alpha.1, %sw.bb12 ], [ %alpha.0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %if.end5.sw.epilog_crit_edge ]
  %bpp.0 = phi i32 [ -1879179264, %sw.bb15 ], [ -1879375872, %sw.bb14 ], [ -1879310336, %sw.bb12 ], [ -1879703552, %sw.bb10 ], [ -1879769088, %sw.bb8 ], [ -1879834624, %if.end5.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 8
  %mul = shl i32 %sub2.i, 6
  %add = add i32 %mul, 512
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 7
  %28 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_h, align 4
  %shl = shl i32 %29, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 6
  %30 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_w, align 4
  %or = or i32 %shl, %31
  %call16 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %add, i32 noundef %or) #7
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 8
  %add19 = add i32 %mul, 516
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 5
  %34 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_y, align 4
  %shl20 = shl i32 %35, 16
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 4
  %36 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_x, align 4
  %or21 = or i32 %shl20, %37
  %call22 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %add19, i32 noundef %or21) #7
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 8
  %add25 = add i32 %mul, 520
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call6, i32 0, i32 1
  %40 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %paddr, align 8
  %call26 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %add25, i32 noundef %41) #7
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 8
  %add29 = add i32 %mul, 524
  %or32 = or i32 %bpp.0, %alpha.3
  %call33 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %add29, i32 noundef %or32) #7
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 8
  %add36 = add i32 %mul, 528
  %call37 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %add36, i32 noundef 16777215) #7
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 8
  %add40 = add i32 %mul, 532
  %call41 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %add40, i32 noundef 0) #7
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 8
  %add44 = add i32 %mul, 536
  %call45 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add44, i32 noundef 0) #7
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 8
  %add48 = add i32 %mul, 540
  %call49 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %add48, i32 noundef 0) #7
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 8
  %add52 = add i32 %mul, 544
  %call53 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %add52, i32 noundef 0) #7
  %54 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call54 = tail call i32 @strcmp(ptr noundef %57, ptr noundef nonnull dereferenceable(8) @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 8
  %add59 = add i32 %mul, 548
  %call60 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %add59, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %fsl_dcu_drm_plane_index.exit.cleanup_crit_edge, %fsl_dcu_drm_plane_index.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !27
  %soc.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc.i, align 8
  %total_layer1.i = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %total_layer1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_layer1.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp ugt i32 %8, %10
  br i1 %cmp.i, label %fsl_dcu_drm_plane_index.exit, label %fsl_dcu_drm_plane_index.exit.thread

fsl_dcu_drm_plane_index.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #11
  br label %cleanup

fsl_dcu_drm_plane_index.exit:                     ; preds = %entry
  %13 = xor i32 %10, -1
  %sub2.i = add i32 %8, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp = icmp slt i32 %sub2.i, 0
  br i1 %cmp, label %fsl_dcu_drm_plane_index.exit.cleanup_crit_edge, label %if.end

fsl_dcu_drm_plane_index.exit.cleanup_crit_edge:   ; preds = %fsl_dcu_drm_plane_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %fsl_dcu_drm_plane_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %mul = shl i32 %sub2.i, 6
  %add = add i32 %mul, 524
  %call1 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add, ptr noundef nonnull %value) #7
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %and = and i32 %17, 2147483647
  store i32 %and, ptr %value, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call5 = call i32 @regmap_write(ptr noundef %19, i32 noundef %add, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fsl_dcu_drm_plane_index.exit.cleanup_crit_edge, %fsl_dcu_drm_plane_index.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 218, i32 3}
!2 = !{ptr @fsl_dcu_drm_plane_funcs, !3, !"fsl_dcu_drm_plane_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 179, i32 37}
!4 = !{ptr @fsl_dcu_drm_plane_formats, !5, !"fsl_dcu_drm_plane_formats", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 188, i32 18}
!6 = !{ptr @fsl_dcu_drm_plane_helper_funcs, !7, !"fsl_dcu_drm_plane_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 167, i32 44}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 158, i32 34}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c", i32 32, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fsl_dcu_drm_plane_index._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @fsl_dcu_drm_plane_index._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
