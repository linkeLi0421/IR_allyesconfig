; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/gud/gud_pipe.c_pt.bc'
source_filename = "../drivers/gpu/drm/gud/gud_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gud_device = type { %struct.drm_device, %struct.drm_simple_display_pipe, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, ptr, i32, %struct.sg_table, i8, ptr, ptr, i64, i64, i32, %struct.mutex, %struct.mutex, ptr, %struct.drm_rect, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_table = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.gud_usb_bulk_context = type { %struct.timer_list, %struct.usb_sg_request }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.gud_set_buffer_req = type <{ i32, i32, i32, i32, i32, i8, i32 }>
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
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
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.gud_display_mode_req = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.gud_state_req = type <{ %struct.gud_display_mode_req, i8, i8, [0 x %struct.gud_property_req] }>
%struct.gud_property_req = type <{ i16, i64 }>

@__param_str_async_flush = internal constant [16 x i8] c"gud.async_flush\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gud_async_flush = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_async_flush = internal constant %struct.kernel_param { ptr @__param_str_async_flush, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @gud_async_flush } }, section "__param", align 4
@__UNIQUE_ID_async_flushtype323 = internal constant [30 x i8] c"gud.parmtype=async_flush:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_async_flush324 = internal constant [65 x i8] c"gud.parm=async_flush:Enable asynchronous flushing [default=true]\00", section ".modinfo", align 1
@gud_flush_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gud_flush_work = private unnamed_addr constant [15 x i8] c"gud_flush_work\00", align 1
@gud_flush_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.gud_flush_work, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to flush framebuffer: error=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/gud/gud_pipe.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gud_flush_work._entry_ptr = internal global ptr @gud_flush_work._entry, section ".printk_index", align 4
@gud_pipe_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gud_pipe_check.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@gud_pipe_check.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@gud_pipe_check.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flushing [FB:%d] %dx%d%+d%+d\0A\00", [34 x i8] zeroinitializer }, align 32
@gud_xrgb8888_to_r124.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gud_xrgb8888_to_color.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gud_usb_bulk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ctx.timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 290, i64 538982482, i64 875710290, i64 909199186, i64 943867730]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967277]
@__sancov_gen_cov_switch_values.11 = internal global [10 x i64] [i64 8, i64 32, i64 290, i64 51517218, i64 538982482, i64 875710290, i64 875713089, i64 875713112, i64 909199186, i64 943867730]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"gud_async_flush\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 35, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 407, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 286, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [34 x i8] c"../drivers/gpu/drm/gud/gud_pipe.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 262, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_async_flush324, ptr @__UNIQUE_ID_async_flushtype323, ptr @__param_async_flush, ptr @gud_flush_work._entry, ptr @gud_flush_work._entry_ptr, ptr @gud_async_flush, ptr @gud_flush_work._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @gud_usb_bulk.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_async_flush to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_flush_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_flush_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_usb_bulk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gud_clear_damage(ptr nocapture noundef writeonly %gdrm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %damage = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 21
  %0 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %damage, align 8
  %y1 = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 21, i32 1
  %1 = ptrtoint ptr %y1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2147483647, ptr %y1, align 4
  %x2 = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %x2, align 8
  %y2 = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 21, i32 3
  %3 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %y2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gud_flush_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  %ctx.i.i = alloca %struct.gud_usb_bulk_context, align 4
  %map.i.i = alloca [4 x %struct.dma_buf_map], align 4
  %map_data.i.i = alloca [4 x %struct.dma_buf_map], align 4
  %req.i = alloca %struct.gud_set_buffer_req, align 4
  %idx = alloca i32, align 4
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3940
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !44
  %call = call zeroext i1 @drm_dev_enter(ptr noundef %add.ptr, ptr noundef nonnull %idx) #8
  br i1 %call, label %if.end, label %entry.cleanup64_crit_edge

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end:                                           ; preds = %entry
  %damage_lock = getelementptr i8, ptr %work, i32 212
  call void @mutex_lock_nested(ptr noundef %damage_lock, i32 noundef 0) #8
  %fb1 = getelementptr i8, ptr %work, i32 304
  %1 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fb1, align 4
  store ptr null, ptr %fb1, align 4
  %damage3 = getelementptr i8, ptr %work, i32 308
  %3 = ptrtoint ptr %damage3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %damage.sroa.0.0.copyload = load i32, ptr %damage3, align 8
  %damage.sroa.7.0.damage3.sroa_idx = getelementptr i8, ptr %work, i32 312
  %4 = ptrtoint ptr %damage.sroa.7.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %damage.sroa.7.0.copyload = load i32, ptr %damage.sroa.7.0.damage3.sroa_idx, align 4
  %damage.sroa.11.0.damage3.sroa_idx = getelementptr i8, ptr %work, i32 316
  %5 = ptrtoint ptr %damage.sroa.11.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %damage.sroa.11.0.copyload = load i32, ptr %damage.sroa.11.0.damage3.sroa_idx, align 8
  %damage.sroa.14.0.damage3.sroa_idx = getelementptr i8, ptr %work, i32 320
  %6 = ptrtoint ptr %damage.sroa.14.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %damage.sroa.14.0.copyload = load i32, ptr %damage.sroa.14.0.damage3.sroa_idx, align 4
  store i32 2147483647, ptr %damage3, align 8
  store i32 2147483647, ptr %damage.sroa.7.0.damage3.sroa_idx, align 4
  store i32 0, ptr %damage.sroa.11.0.damage3.sroa_idx, align 8
  store i32 0, ptr %damage.sroa.14.0.damage3.sroa_idx, align 4
  call void @mutex_unlock(ptr noundef %damage_lock) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %format7 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %format7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %format7, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %10)
  %cmp = icmp eq i32 %10, 875713112
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %xrgb8888_emulation_format = getelementptr i8, ptr %work, i32 48
  %11 = ptrtoint ptr %xrgb8888_emulation_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xrgb8888_emulation_format, align 4
  %tobool9.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool9.not, ptr %8, ptr %12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end6.if.end12_crit_edge
  %format.0 = phi ptr [ %8, %if.end6.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %sub.i = sub i32 %damage.sroa.11.0.copyload, %damage.sroa.0.0.copyload
  %call14 = call i64 @drm_format_info_min_pitch(ptr noundef %format.0, i32 noundef 0, i32 noundef %sub.i) #8
  %conv = trunc i64 %call14 to i32
  %sub.i116 = sub i32 %damage.sroa.14.0.copyload, %damage.sroa.7.0.copyload
  %bulk_len = getelementptr i8, ptr %work, i32 68
  %13 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bulk_len, align 8
  %mul = mul i32 %sub.i116, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp16 = icmp ult i32 %14, %mul
  br i1 %cmp16, label %if.then18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %14, %conv
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  %lines.0 = phi i32 [ %div, %if.then18 ], [ %sub.i116, %if.end12.if.end20_crit_edge ]
  %add = add i32 %sub.i116, -1
  %sub = add i32 %add, %lines.0
  call void @__sanitizer_cov_trace_cmp4(i32 %lines.0, i32 %sub)
  %cmp23146.not = icmp ugt i32 %lines.0, %sub
  br i1 %cmp23146.not, label %if.end20.for.end_crit_edge, label %for.body.lr.ph

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %div22 = udiv i32 %sub, %lines.0
  %15 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %16 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %17 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %18 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 4
  %22 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 5
  %23 = getelementptr inbounds %struct.gud_set_buffer_req, ptr %req.i, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %dev.i = getelementptr i8, ptr %work, i32 -3932
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 2
  %obj.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 15
  %compression2.i.i = getelementptr i8, ptr %work, i32 84
  %compress_buf.i.i = getelementptr i8, ptr %work, i32 92
  %bulk_buf.i.i = getelementptr i8, ptr %work, i32 64
  %24 = getelementptr inbounds %struct.drm_format_info, ptr %format.0, i32 0, i32 3
  %pitches.i.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 6
  %lz4_comp_mem.i.i = getelementptr i8, ptr %work, i32 88
  %stats_length.i = getelementptr i8, ptr %work, i32 100
  %stats_actual_length.i = getelementptr i8, ptr %work, i32 108
  %flags.i = getelementptr i8, ptr %work, i32 44
  %prev_flush_failed.i = getelementptr i8, ptr %work, i32 324
  %sgr.i.i = getelementptr inbounds %struct.gud_usb_bulk_context, ptr %ctx.i.i, i32 0, i32 1
  %bulk_pipe.i.i = getelementptr i8, ptr %work, i32 60
  %bulk_sgt.i.i = getelementptr i8, ptr %work, i32 72
  %nents.i.i = getelementptr i8, ptr %work, i32 76
  %bytes.i.i = getelementptr inbounds %struct.gud_usb_bulk_context, ptr %ctx.i.i, i32 0, i32 1, i32 1
  %stats_num_errors.i = getelementptr i8, ptr %work, i32 116
  %umax = call i32 @llvm.umax.i32(i32 %div22, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #8
  %25 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %damage.sroa.0.0.copyload, ptr %rect, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %damage.sroa.11.0.copyload, ptr %16, align 4
  %mul25 = mul i32 %i.0147, %lines.0
  %add26 = add i32 %damage.sroa.7.0.copyload, %mul25
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add26, ptr %15, align 4
  %add28 = add i32 %add26, %lines.0
  %28 = call i32 @llvm.umin.i32(i32 %add28, i32 %damage.sroa.14.0.copyload)
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %req.i) #8
  %30 = call ptr @memset(ptr %req.i, i32 255, i32 25)
  br i1 %tobool.not.i, label %for.body.cond.end.i_crit_edge, label %cond.true.i

for.body.cond.end.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.cond.end.i_crit_edge
  %cond.i = phi ptr [ %32, %cond.true.i ], [ null, %for.body.cond.end.i_crit_edge ]
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i, align 4
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %16, align 4
  %sub.i.i = sub i32 %36, %damage.sroa.0.0.copyload
  %sub.i63.i = sub i32 %28, %add26
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %34, i32 noundef %sub.i.i, i32 noundef %sub.i63.i, i32 noundef %damage.sroa.0.0.copyload, i32 noundef %add26) #8
  %37 = ptrtoint ptr %obj.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %obj.i.i, align 4
  %import_attach1.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %import_attach1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %import_attach1.i.i, align 4
  %41 = ptrtoint ptr %compression2.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %compression2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map.i.i) #8
  %43 = call ptr @memset(ptr %map.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map_data.i.i) #8
  %44 = call ptr @memset(ptr %map_data.i.i, i32 255, i32 32)
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %16, align 4
  %47 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rect, align 4
  %sub.i.i.i = sub i32 %46, %48
  %call3.i.i = call i64 @drm_format_info_min_pitch(ptr noundef %format.0, i32 noundef 0, i32 noundef %sub.i.i.i) #8
  %conv.i.i = trunc i64 %call3.i.i to i32
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %17, align 4
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %15, align 4
  %sub.i184.i.i = sub i32 %50, %52
  %mul.i.i = mul i32 %sub.i184.i.i, %conv.i.i
  %53 = ptrtoint ptr %bulk_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bulk_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %54)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %54
  br i1 %cmp.i.i, label %cond.end.i.gud_prep_flush.exit.thread.i_crit_edge, label %if.end.i.i

cond.end.i.gud_prep_flush.exit.thread.i_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_prep_flush.exit.thread.i

if.end.i.i:                                       ; preds = %cond.end.i
  %call7.i.i = call i32 @drm_gem_fb_vmap(ptr noundef nonnull %2, ptr noundef nonnull %map.i.i, ptr noundef nonnull %map_data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.end.i.i.gud_prep_flush.exit.thread.i_crit_edge

if.end.i.i.gud_prep_flush.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_prep_flush.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %55 = ptrtoint ptr %map_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map_data.i.i, align 4
  %call11.i.i = call i32 @drm_gem_fb_begin_cpu_access(ptr noundef nonnull %2, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %retry.preheader.i.i, label %gud_prep_flush.exit.thread70.i

gud_prep_flush.exit.thread70.i:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_gem_fb_vunmap(ptr noundef nonnull %2, ptr noundef nonnull %map.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map.i.i) #8
  br label %gud_flush_rect.exit

retry.preheader.i.i:                              ; preds = %if.end9.i.i
  %tobool71.not.i.i = icmp eq ptr %40, null
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.then87.i.i.retry.i.i_crit_edge, %retry.preheader.i.i
  %compression.0.i.i = phi i8 [ 0, %if.then87.i.i.retry.i.i_crit_edge ], [ %42, %retry.preheader.i.i ]
  %len.0.i.i = phi i32 [ %len.1.i.i, %if.then87.i.i.retry.i.i_crit_edge ], [ %mul.i.i, %retry.preheader.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %compression.0.i.i)
  %tobool15.not.i.i = icmp eq i8 %compression.0.i.i, 0
  %buf.0.in.i.i = select i1 %tobool15.not.i.i, ptr %bulk_buf.i.i, ptr %compress_buf.i.i
  %57 = ptrtoint ptr %buf.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %buf.0.i.i = load ptr, ptr %buf.0.in.i.i, align 4
  %58 = ptrtoint ptr %format7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %format7, align 8
  %cmp19.not.i.i = icmp eq ptr %59, %format.0
  br i1 %cmp19.not.i.i, label %if.else58.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %retry.i.i
  %60 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %format.0, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %if.else51.i.i [
    i32 290, label %if.then25.i.i
    i32 538982482, label %if.then34.i.i
    i32 943867730, label %if.then39.i.i
    i32 909199186, label %if.then44.i.i
    i32 875710290, label %if.then50.i.i
  ]

if.then25.i.i:                                    ; preds = %if.then21.i.i
  %call.i.i.i = call i32 @drm_format_info_block_width(ptr noundef %format.0, i32 noundef 0) #8
  %div.i.i.i = udiv i32 8, %call.i.i.i
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp.not.i.i.i = icmp eq i8 %64, 1
  br i1 %cmp.not.i.i.i, label %if.then25.i.i.if.end29.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then25.i.i.if.end29.i.i.i_crit_edge:           ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then25.i.i
  %.b110.i.i.i = load i1, ptr @gud_xrgb8888_to_r124.__already_done, align 1
  br i1 %.b110.i.i.i, label %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, label %if.then.i.i.i, !prof !45

land.rhs.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_xrgb8888_to_r124.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef 9, ptr noundef null) #8
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, %if.then25.i.i.if.end29.i.i.i_crit_edge
  %65 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rect, align 4
  %neg.i.i.i = sub i32 0, %call.i.i.i
  %and.i.i.i = and i32 %66, %neg.i.i.i
  store i32 %and.i.i.i, ptr %rect, align 4
  %67 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %16, align 4
  %sub.i.i.i.i = sub i32 %68, %and.i.i.i
  %69 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %17, align 4
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %15, align 4
  %sub.i111.i.i.i = sub i32 %70, %72
  %call43.i.i.i = call i64 @drm_format_info_min_pitch(ptr noundef %format.0, i32 noundef 0, i32 noundef %sub.i.i.i.i) #8
  %73 = trunc i64 %call43.i.i.i to i32
  %conv45.i.i.i = mul i32 %sub.i111.i.i.i, %73
  %mul46.i.i.i = mul i32 %sub.i111.i.i.i, %sub.i.i.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul46.i.i.i, i32 noundef 3264) #11
  %tobool48.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool48.not.i.i.i, label %if.end29.i.i.i.gud_prep_flush.exit.i_crit_edge, label %if.end50.i.i.i

if.end29.i.i.i.gud_prep_flush.exit.i_crit_edge:   ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_prep_flush.exit.i

if.end50.i.i.i:                                   ; preds = %if.end29.i.i.i
  call void @drm_fb_xrgb8888_to_gray8(ptr noundef nonnull %call9.i.i.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp51122.not.i.i.i = icmp eq i32 %70, %72
  br i1 %cmp51122.not.i.i.i, label %if.end50.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge, label %for.cond53.preheader.lr.ph.i.i.i

if.end50.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge: ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_xrgb8888_to_r124.exit.i.i

for.cond53.preheader.lr.ph.i.i.i:                 ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %and.i.i.i)
  %cmp54115.not.i.i.i = icmp eq i32 %68, %and.i.i.i
  %sub65.i.i.i = sub nuw nsw i32 8, %div.i.i.i
  br label %for.cond53.preheader.i.i.i

for.cond53.preheader.i.i.i:                       ; preds = %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge, %for.cond53.preheader.lr.ph.i.i.i
  %dst.addr.0126.i.i.i = phi ptr [ %buf.0.i.i, %for.cond53.preheader.lr.ph.i.i.i ], [ %dst.addr.1.lcssa.i.i.i, %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge ]
  %block.0125.i.i.i = phi ptr [ %buf.0.i.i, %for.cond53.preheader.lr.ph.i.i.i ], [ %block.1.lcssa.i.i.i, %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge ]
  %pix8.0124.i.i.i = phi ptr [ %call9.i.i.i.i, %for.cond53.preheader.lr.ph.i.i.i ], [ %pix8.1.lcssa.i.i.i, %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge ]
  %y.0123.i.i.i = phi i32 [ 0, %for.cond53.preheader.lr.ph.i.i.i ], [ %inc71.i.i.i, %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge ]
  br i1 %cmp54115.not.i.i.i, label %for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge, label %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge

for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i.i
  br label %for.body56.i.i.i

for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i.i.i

for.body56.i.i.i:                                 ; preds = %if.end62.i.i.i.for.body56.i.i.i_crit_edge, %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge
  %dst.addr.1119.i.i.i = phi ptr [ %dst.addr.2.i.i.i, %if.end62.i.i.i.for.body56.i.i.i_crit_edge ], [ %dst.addr.0126.i.i.i, %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge ]
  %block.1118.i.i.i = phi ptr [ %block.2.i.i.i, %if.end62.i.i.i.for.body56.i.i.i_crit_edge ], [ %block.0125.i.i.i, %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge ]
  %pix8.1117.i.i.i = phi ptr [ %incdec.ptr63.i.i.i, %if.end62.i.i.i.for.body56.i.i.i_crit_edge ], [ %pix8.0124.i.i.i, %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge ]
  %x.0116.i.i.i = phi i32 [ %inc.i.i.i, %if.end62.i.i.i.for.body56.i.i.i_crit_edge ], [ 0, %for.cond53.preheader.i.i.i.for.body56.i.i.i_crit_edge ]
  %rem.i.i.i = urem i32 %x.0116.i.i.i, %call.i.i.i
  %74 = xor i32 %rem.i.i.i, -1
  %sub58.i.i.i = add i32 %call.i.i.i, %74
  %mul59.i.i.i = mul i32 %sub58.i.i.i, %div.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool60.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool60.not.i.i.i, label %if.then61.i.i.i, label %for.body56.i.i.i.if.end62.i.i.i_crit_edge

for.body56.i.i.i.if.end62.i.i.i_crit_edge:        ; preds = %for.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i.i.i

if.then61.i.i.i:                                  ; preds = %for.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i.i = getelementptr i8, ptr %dst.addr.1119.i.i.i, i32 1
  %75 = ptrtoint ptr %dst.addr.1119.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %dst.addr.1119.i.i.i, align 1
  br label %if.end62.i.i.i

if.end62.i.i.i:                                   ; preds = %if.then61.i.i.i, %for.body56.i.i.i.if.end62.i.i.i_crit_edge
  %block.2.i.i.i = phi ptr [ %block.1118.i.i.i, %for.body56.i.i.i.if.end62.i.i.i_crit_edge ], [ %dst.addr.1119.i.i.i, %if.then61.i.i.i ]
  %dst.addr.2.i.i.i = phi ptr [ %dst.addr.1119.i.i.i, %for.body56.i.i.i.if.end62.i.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %if.then61.i.i.i ]
  %incdec.ptr63.i.i.i = getelementptr i8, ptr %pix8.1117.i.i.i, i32 1
  %76 = ptrtoint ptr %pix8.1117.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pix8.1117.i.i.i, align 1
  %conv64.i.i.i = zext i8 %77 to i32
  %shr.i.i.i = lshr i32 %conv64.i.i.i, %sub65.i.i.i
  %shl.i.i.i = shl i32 %shr.i.i.i, %mul59.i.i.i
  %78 = ptrtoint ptr %block.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %block.2.i.i.i, align 1
  %80 = trunc i32 %shl.i.i.i to i8
  %conv69.i.i.i = or i8 %79, %80
  store i8 %conv69.i.i.i, ptr %block.2.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %x.0116.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %sub.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %if.end62.i.i.i.for.inc70.i.i.i_crit_edge, label %if.end62.i.i.i.for.body56.i.i.i_crit_edge

if.end62.i.i.i.for.body56.i.i.i_crit_edge:        ; preds = %if.end62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i.i.i

if.end62.i.i.i.for.inc70.i.i.i_crit_edge:         ; preds = %if.end62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i.i.i

for.inc70.i.i.i:                                  ; preds = %if.end62.i.i.i.for.inc70.i.i.i_crit_edge, %for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge
  %pix8.1.lcssa.i.i.i = phi ptr [ %pix8.0124.i.i.i, %for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge ], [ %incdec.ptr63.i.i.i, %if.end62.i.i.i.for.inc70.i.i.i_crit_edge ]
  %block.1.lcssa.i.i.i = phi ptr [ %block.0125.i.i.i, %for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge ], [ %block.2.i.i.i, %if.end62.i.i.i.for.inc70.i.i.i_crit_edge ]
  %dst.addr.1.lcssa.i.i.i = phi ptr [ %dst.addr.0126.i.i.i, %for.cond53.preheader.i.i.i.for.inc70.i.i.i_crit_edge ], [ %dst.addr.2.i.i.i, %if.end62.i.i.i.for.inc70.i.i.i_crit_edge ]
  %inc71.i.i.i = add nuw i32 %y.0123.i.i.i, 1
  %exitcond127.not.i.i.i = icmp eq i32 %inc71.i.i.i, %sub.i111.i.i.i
  br i1 %exitcond127.not.i.i.i, label %for.inc70.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge, label %for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge

for.inc70.i.i.i.for.cond53.preheader.i.i.i_crit_edge: ; preds = %for.inc70.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond53.preheader.i.i.i

for.inc70.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge: ; preds = %for.inc70.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_xrgb8888_to_r124.exit.i.i

gud_xrgb8888_to_r124.exit.i.i:                    ; preds = %for.inc70.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge, %if.end50.i.i.i.gud_xrgb8888_to_r124.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv45.i.i.i)
  %tobool27.not.i.i = icmp eq i32 %conv45.i.i.i, 0
  br i1 %tobool27.not.i.i, label %gud_xrgb8888_to_r124.exit.i.i.gud_prep_flush.exit.i_crit_edge, label %gud_xrgb8888_to_r124.exit.i.i.if.end81.i.i_crit_edge

gud_xrgb8888_to_r124.exit.i.i.if.end81.i.i_crit_edge: ; preds = %gud_xrgb8888_to_r124.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i.i

gud_xrgb8888_to_r124.exit.i.i.gud_prep_flush.exit.i_crit_edge: ; preds = %gud_xrgb8888_to_r124.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_prep_flush.exit.i

if.then34.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fb_xrgb8888_to_gray8(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect) #8
  br label %if.end81.i.i

if.then39.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fb_xrgb8888_to_rgb332(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect) #8
  br label %if.end81.i.i

if.then44.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fb_xrgb8888_to_rgb565(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect, i1 noundef zeroext true) #8
  br label %if.end81.i.i

if.then50.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fb_xrgb8888_to_rgb888(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect) #8
  br label %if.end81.i.i

if.else51.i.i:                                    ; preds = %if.then21.i.i
  %call.i185.i.i = call i32 @drm_format_info_block_width(ptr noundef %format.0, i32 noundef 0) #8
  %div.i186.i.i = udiv i32 8, %call.i185.i.i
  %81 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rect, align 4
  %neg.i187.i.i = sub i32 0, %call.i185.i.i
  %and.i188.i.i = and i32 %82, %neg.i187.i.i
  store i32 %and.i188.i.i, ptr %rect, align 4
  %83 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %16, align 4
  %sub.i.i190.i.i = sub i32 %84, %and.i188.i.i
  %call6.i.i.i = call i64 @drm_format_info_min_pitch(ptr noundef %format.0, i32 noundef 0, i32 noundef %sub.i.i190.i.i) #8
  %85 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %17, align 4
  %87 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp132.i.i.i = icmp ugt i32 %86, %88
  br i1 %cmp132.i.i.i, label %for.body.lr.ph.i.i.i, label %if.else51.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge

if.else51.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge: ; preds = %if.else51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_xrgb8888_to_color.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.else51.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %and.i188.i.i)
  %cmp14126.not.i.i.i = icmp eq i32 %84, %and.i188.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc77.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %dst.addr.0135.i.i.i = phi ptr [ %buf.0.i.i, %for.body.lr.ph.i.i.i ], [ %dst.addr.1.lcssa.i202.i.i, %for.inc77.i.i.i.for.body.i.i.i_crit_edge ]
  %y.0134.i.i.i = phi i32 [ %88, %for.body.lr.ph.i.i.i ], [ %inc78.i.i.i, %for.inc77.i.i.i.for.body.i.i.i_crit_edge ]
  %block.0133.i.i.i = phi ptr [ %buf.0.i.i, %for.body.lr.ph.i.i.i ], [ %block.1.lcssa.i201.i.i, %for.inc77.i.i.i.for.body.i.i.i_crit_edge ]
  br i1 %cmp14126.not.i.i.i, label %for.body.i.i.i.for.inc77.i.i.i_crit_edge, label %for.body16.preheader.i.i.i

for.body.i.i.i.for.inc77.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i.i.i

for.body16.preheader.i.i.i:                       ; preds = %for.body.i.i.i
  %89 = ptrtoint ptr %pitches.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pitches.i.i.i, align 8
  %mul10.i.i.i = mul i32 %90, %y.0134.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %mul10.i.i.i
  %91 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rect, align 4
  %add.ptr12.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %92
  br label %for.body16.i.i.i

for.body16.i.i.i:                                 ; preds = %for.inc.i.i.i.for.body16.i.i.i_crit_edge, %for.body16.preheader.i.i.i
  %dst.addr.1130.i.i.i = phi ptr [ %dst.addr.2.i197.i.i, %for.inc.i.i.i.for.body16.i.i.i_crit_edge ], [ %dst.addr.0135.i.i.i, %for.body16.preheader.i.i.i ]
  %pix32.0129.i.i.i = phi ptr [ %incdec.ptr23.i.i.i, %for.inc.i.i.i.for.body16.i.i.i_crit_edge ], [ %add.ptr12.i.i.i, %for.body16.preheader.i.i.i ]
  %x.0128.i.i.i = phi i32 [ %inc.i199.i.i, %for.inc.i.i.i.for.body16.i.i.i_crit_edge ], [ 0, %for.body16.preheader.i.i.i ]
  %block.1127.i.i.i = phi ptr [ %block.2.i196.i.i, %for.inc.i.i.i.for.body16.i.i.i_crit_edge ], [ %block.0133.i.i.i, %for.body16.preheader.i.i.i ]
  %rem.i193.i.i = urem i32 %x.0128.i.i.i, %call.i185.i.i
  %93 = xor i32 %rem.i193.i.i, -1
  %sub18.i.i.i = add i32 %call.i185.i.i, %93
  %mul19.i.i.i = mul i32 %sub18.i.i.i, %div.i186.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i193.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i193.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i195.i.i, label %for.body16.i.i.i.if.end.i.i.i_crit_edge

for.body16.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i195.i.i:                                 ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i194.i.i = getelementptr i8, ptr %dst.addr.1130.i.i.i, i32 1
  %94 = ptrtoint ptr %dst.addr.1130.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %dst.addr.1130.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i195.i.i, %for.body16.i.i.i.if.end.i.i.i_crit_edge
  %block.2.i196.i.i = phi ptr [ %block.1127.i.i.i, %for.body16.i.i.i.if.end.i.i.i_crit_edge ], [ %dst.addr.1130.i.i.i, %if.then.i195.i.i ]
  %dst.addr.2.i197.i.i = phi ptr [ %dst.addr.1130.i.i.i, %for.body16.i.i.i.if.end.i.i.i_crit_edge ], [ %incdec.ptr.i194.i.i, %if.then.i195.i.i ]
  %95 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %format.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51517218, i32 %96)
  %cond.i.i.i = icmp eq i32 %96, 51517218
  br i1 %cond.i.i.i, label %for.inc.i.i.i, label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %if.end.i.i.i
  %.b121.i.i.i = load i1, ptr @gud_xrgb8888_to_color.__already_done, align 1
  br i1 %.b121.i.i.i, label %land.end.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge, label %if.then41.i.i.i, !prof !45

land.end.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_xrgb8888_to_color.exit.i.i

if.then41.i.i.i:                                  ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_xrgb8888_to_color.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #8
  br label %gud_xrgb8888_to_color.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i
  %incdec.ptr23.i.i.i = getelementptr i32, ptr %pix32.0129.i.i.i, i32 1
  %97 = ptrtoint ptr %pix32.0129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pix32.0129.i.i.i, align 4
  %99 = lshr i32 %98, 21
  %shl.i198.i.i = and i32 %99, 4
  %100 = lshr i32 %98, 14
  %shl30.i.i.i = and i32 %100, 2
  %or.i.i.i = or i32 %shl.i198.i.i, %shl30.i.i.i
  %conv31.i.i.i = lshr i32 %98, 7
  %101 = and i32 %conv31.i.i.i, 1
  %or33.i.i.i = or i32 %or.i.i.i, %101
  %shl72.i.i.i = shl i32 %or33.i.i.i, %mul19.i.i.i
  %102 = ptrtoint ptr %block.2.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %block.2.i196.i.i, align 1
  %104 = trunc i32 %shl72.i.i.i to i8
  %conv75.i.i.i = or i8 %103, %104
  store i8 %conv75.i.i.i, ptr %block.2.i196.i.i, align 1
  %inc.i199.i.i = add nuw i32 %x.0128.i.i.i, 1
  %exitcond.not.i200.i.i = icmp eq i32 %inc.i199.i.i, %sub.i.i190.i.i
  br i1 %exitcond.not.i200.i.i, label %for.inc.i.i.i.for.inc77.i.i.i_crit_edge, label %for.inc.i.i.i.for.body16.i.i.i_crit_edge

for.inc.i.i.i.for.body16.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i.i.i

for.inc.i.i.i.for.inc77.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i.i.i

for.inc77.i.i.i:                                  ; preds = %for.inc.i.i.i.for.inc77.i.i.i_crit_edge, %for.body.i.i.i.for.inc77.i.i.i_crit_edge
  %block.1.lcssa.i201.i.i = phi ptr [ %block.0133.i.i.i, %for.body.i.i.i.for.inc77.i.i.i_crit_edge ], [ %block.2.i196.i.i, %for.inc.i.i.i.for.inc77.i.i.i_crit_edge ]
  %dst.addr.1.lcssa.i202.i.i = phi ptr [ %dst.addr.0135.i.i.i, %for.body.i.i.i.for.inc77.i.i.i_crit_edge ], [ %dst.addr.2.i197.i.i, %for.inc.i.i.i.for.inc77.i.i.i_crit_edge ]
  %inc78.i.i.i = add nuw i32 %y.0134.i.i.i, 1
  %105 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %17, align 4
  %cmp.i.i.i = icmp ult i32 %inc78.i.i.i, %106
  br i1 %cmp.i.i.i, label %for.inc77.i.i.i.for.body.i.i.i_crit_edge, label %for.inc77.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge

for.inc77.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge: ; preds = %for.inc77.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_xrgb8888_to_color.exit.i.i

for.inc77.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc77.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

gud_xrgb8888_to_color.exit.i.i:                   ; preds = %for.inc77.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge, %if.then41.i.i.i, %land.end.i.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge, %if.else51.i.i.gud_xrgb8888_to_color.exit.i.i_crit_edge
  %sub.i122.i.i.i = sub i32 %86, %88
  %107 = trunc i64 %call6.i.i.i to i32
  %conv8.i.i.i = mul i32 %sub.i122.i.i.i, %107
  br label %if.end81.i.i

if.else58.i.i:                                    ; preds = %retry.i.i
  %108 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp63.i.i = icmp ugt i8 %109, 1
  br i1 %cmp63.i.i, label %if.then65.i.i, label %if.else67.i.i

if.then65.i.i:                                    ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fb_swab(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect, i1 noundef zeroext %tobool71.not.i.i) #8
  br label %if.end81.i.i

if.else67.i.i:                                    ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %compression.0.i.i)
  %tobool69.not.i.i = icmp ne i8 %compression.0.i.i, 0
  %or.cond.i.i = select i1 %tobool69.not.i.i, i1 %tobool71.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true72.i.i, label %if.else67.i.i.if.else78.i.i_crit_edge

if.else67.i.i.if.else78.i.i_crit_edge:            ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else78.i.i

land.lhs.true72.i.i:                              ; preds = %if.else67.i.i
  %110 = ptrtoint ptr %pitches.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pitches.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %conv.i.i)
  %cmp74.i.i = icmp eq i32 %111, %conv.i.i
  br i1 %cmp74.i.i, label %if.then76.i.i, label %land.lhs.true72.i.i.if.else78.i.i_crit_edge

land.lhs.true72.i.i.if.else78.i.i_crit_edge:      ; preds = %land.lhs.true72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else78.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %15, align 4
  %mul77.i.i = mul i32 %113, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %mul77.i.i
  br label %if.end81.i.i

if.else78.i.i:                                    ; preds = %land.lhs.true72.i.i.if.else78.i.i_crit_edge, %if.else67.i.i.if.else78.i.i_crit_edge
  call void @drm_fb_memcpy(ptr noundef %buf.0.i.i, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %rect) #8
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.else78.i.i, %if.then76.i.i, %if.then65.i.i, %gud_xrgb8888_to_color.exit.i.i, %if.then50.i.i, %if.then44.i.i, %if.then39.i.i, %if.then34.i.i, %gud_xrgb8888_to_r124.exit.i.i.if.end81.i.i_crit_edge
  %buf.1.i.i = phi ptr [ %buf.0.i.i, %gud_xrgb8888_to_r124.exit.i.i.if.end81.i.i_crit_edge ], [ %buf.0.i.i, %if.then34.i.i ], [ %buf.0.i.i, %if.then39.i.i ], [ %buf.0.i.i, %if.then44.i.i ], [ %buf.0.i.i, %if.then50.i.i ], [ %buf.0.i.i, %gud_xrgb8888_to_color.exit.i.i ], [ %buf.0.i.i, %if.then65.i.i ], [ %buf.0.i.i, %if.else78.i.i ], [ %add.ptr.i.i, %if.then76.i.i ]
  %len.1.i.i = phi i32 [ %conv45.i.i.i, %gud_xrgb8888_to_r124.exit.i.i.if.end81.i.i_crit_edge ], [ %len.0.i.i, %if.then34.i.i ], [ %len.0.i.i, %if.then39.i.i ], [ %len.0.i.i, %if.then44.i.i ], [ %len.0.i.i, %if.then50.i.i ], [ %conv8.i.i.i, %gud_xrgb8888_to_color.exit.i.i ], [ %len.0.i.i, %if.then65.i.i ], [ %len.0.i.i, %if.else78.i.i ], [ %len.0.i.i, %if.then76.i.i ]
  %114 = call ptr @memset(ptr %22, i32 0, i32 5)
  %115 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rect, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #8
  %118 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %req.i, align 4
  %119 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %15, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #8
  %122 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %18, align 4
  %123 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %16, align 4
  %sub.i204.i.i = sub i32 %124, %116
  %125 = call i32 @llvm.bswap.i32(i32 %sub.i204.i.i) #8
  %126 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %19, align 4
  %127 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %17, align 4
  %sub.i207.i.i = sub i32 %128, %120
  %129 = call i32 @llvm.bswap.i32(i32 %sub.i207.i.i) #8
  %130 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %20, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %len.1.i.i) #8
  %132 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %21, align 4
  %133 = and i8 %compression.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool86.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool86.not.i.i, label %if.end81.i.i.gud_prep_flush.exit.i_crit_edge, label %if.then87.i.i

if.end81.i.i.gud_prep_flush.exit.i_crit_edge:     ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_prep_flush.exit.i

if.then87.i.i:                                    ; preds = %if.end81.i.i
  %134 = ptrtoint ptr %bulk_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bulk_buf.i.i, align 4
  %136 = ptrtoint ptr %lz4_comp_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %lz4_comp_mem.i.i, align 4
  %call89.i.i = call i32 @LZ4_compress_default(ptr noundef %buf.1.i.i, ptr noundef %135, i32 noundef %len.1.i.i, i32 noundef %len.1.i.i, ptr noundef %137) #8
  %cmp90.i.i = icmp slt i32 %call89.i.i, 1
  br i1 %cmp90.i.i, label %if.then87.i.i.retry.i.i_crit_edge, label %cleanup.thread.i.i

if.then87.i.i.retry.i.i_crit_edge:                ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i.i

cleanup.thread.i.i:                               ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %22, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %call89.i.i) #8
  %140 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %139, ptr %23, align 1
  br label %gud_prep_flush.exit.i

gud_prep_flush.exit.thread.i:                     ; preds = %if.end.i.i.gud_prep_flush.exit.thread.i_crit_edge, %cond.end.i.gud_prep_flush.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call7.i.i, %if.end.i.i.gud_prep_flush.exit.thread.i_crit_edge ], [ -7, %cond.end.i.gud_prep_flush.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map.i.i) #8
  br label %gud_flush_rect.exit

gud_prep_flush.exit.i:                            ; preds = %cleanup.thread.i.i, %if.end81.i.i.gud_prep_flush.exit.i_crit_edge, %gud_xrgb8888_to_r124.exit.i.i.gud_prep_flush.exit.i_crit_edge, %if.end29.i.i.i.gud_prep_flush.exit.i_crit_edge
  %tobool4.not.i = phi i1 [ true, %cleanup.thread.i.i ], [ false, %if.end29.i.i.i.gud_prep_flush.exit.i_crit_edge ], [ false, %gud_xrgb8888_to_r124.exit.i.i.gud_prep_flush.exit.i_crit_edge ], [ true, %if.end81.i.i.gud_prep_flush.exit.i_crit_edge ]
  %ret.0.i.i = phi i32 [ 0, %cleanup.thread.i.i ], [ -12, %if.end29.i.i.i.gud_prep_flush.exit.i_crit_edge ], [ -12, %gud_xrgb8888_to_r124.exit.i.i.gud_prep_flush.exit.i_crit_edge ], [ 0, %if.end81.i.i.gud_prep_flush.exit.i_crit_edge ]
  call void @drm_gem_fb_end_cpu_access(ptr noundef nonnull %2, i32 noundef 2) #8
  call void @drm_gem_fb_vunmap(ptr noundef nonnull %2, ptr noundef nonnull %map.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map_data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map.i.i) #8
  br i1 %tobool4.not.i, label %if.end.i, label %gud_prep_flush.exit.i.gud_flush_rect.exit_crit_edge

gud_prep_flush.exit.i.gud_flush_rect.exit_crit_edge: ; preds = %gud_prep_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_flush_rect.exit

if.end.i:                                         ; preds = %gud_prep_flush.exit.i
  %141 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %21, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142) #8
  %144 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool5.not.i = icmp eq i8 %145, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %23, align 1
  %148 = call i32 @llvm.bswap.i32(i32 %147) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %trlen.0.i = phi i32 [ %148, %if.then6.i ], [ %143, %if.end.i.if.end7.i_crit_edge ]
  %conv.i = zext i32 %143 to i64
  %149 = ptrtoint ptr %stats_length.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %stats_length.i, align 8
  %add.i = add i64 %150, %conv.i
  store i64 %add.i, ptr %stats_length.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp.not.i = icmp ugt i64 %add.i, %conv.i
  br i1 %cmp.not.i, label %if.end7.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %151 = ptrtoint ptr %stats_actual_length.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %stats_actual_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool11.not.i = icmp eq i64 %152, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %stats_length.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv.i, ptr %stats_length.i, align 8
  %154 = ptrtoint ptr %stats_actual_length.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 0, ptr %stats_actual_length.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end16.i_crit_edge, %if.end7.i.if.end16.i_crit_edge
  %conv17.i = zext i32 %trlen.0.i to i64
  %155 = ptrtoint ptr %stats_actual_length.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %stats_actual_length.i, align 8
  %add19.i = add i64 %156, %conv17.i
  store i64 %add19.i, ptr %stats_actual_length.i, align 8
  %157 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.end16.i.if.then23.i_crit_edge, label %lor.lhs.false.i

if.end16.i.if.then23.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %159 = ptrtoint ptr %prev_flush_failed.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %prev_flush_failed.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool21.not.i = icmp eq i8 %160, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i.if.end28.i_crit_edge, label %lor.lhs.false.i.if.then23.i_crit_edge

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then23.i:                                      ; preds = %lor.lhs.false.i.if.then23.i_crit_edge, %if.end16.i.if.then23.i_crit_edge
  %call24.i = call i32 @gud_usb_set(ptr noundef %add.ptr, i8 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef nonnull %req.i, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.if.end28.i_crit_edge, label %if.then23.i.gud_flush_rect.exit_crit_edge

if.then23.i.gud_flush_rect.exit_crit_edge:        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_flush_rect.exit

if.then23.i.if.end28.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i.if.end28.i_crit_edge, %lor.lhs.false.i.if.end28.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %ctx.i.i) #8
  %161 = call ptr @memset(ptr %ctx.i.i, i32 255, i32 176)
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 8
  %parent.i.i.i.i = getelementptr i8, ptr %163, i32 136
  %164 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %parent.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %165, i32 -128
  %166 = ptrtoint ptr %bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bulk_pipe.i.i, align 8
  %168 = ptrtoint ptr %bulk_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bulk_sgt.i.i, align 4
  %170 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nents.i.i, align 4
  %call2.i.i = call i32 @usb_sg_init(ptr noundef %sgr.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %167, i32 noundef 0, ptr noundef %169, i32 noundef %171, i32 noundef %trlen.0.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i64.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i64.i, label %do.body.i.i, label %gud_usb_bulk.exit.thread.i

gud_usb_bulk.exit.thread.i:                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %ctx.i.i) #8
  br label %if.then31.i

do.body.i.i:                                      ; preds = %if.end28.i
  call void @init_timer_on_stack_key(ptr noundef nonnull %ctx.i.i, ptr noundef nonnull @gud_usb_bulk_timeout, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @gud_usb_bulk.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %172 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %172, 300
  %call5.i.i = call i32 @mod_timer(ptr noundef nonnull %ctx.i.i, i32 noundef %add.i.i) #8
  call void @usb_sg_wait(ptr noundef %sgr.i.i) #8
  %call8.i.i = call i32 @del_timer_sync(ptr noundef nonnull %ctx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.gud_usb_bulk.exit.thread76.i_crit_edge, label %if.else.i.i

do.body.i.i.gud_usb_bulk.exit.thread76.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_bulk.exit.thread76.i

if.else.i.i:                                      ; preds = %do.body.i.i
  %173 = ptrtoint ptr %sgr.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sgr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.i65.i = icmp slt i32 %174, 0
  br i1 %cmp.i65.i, label %if.else.i.i.gud_usb_bulk.exit.thread76.i_crit_edge, label %if.else15.i.i

if.else.i.i.gud_usb_bulk.exit.thread76.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_bulk.exit.thread76.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  %175 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bytes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %trlen.0.i)
  %cmp17.not.i.i = icmp eq i32 %176, %trlen.0.i
  br i1 %cmp17.not.i.i, label %gud_flush_rect.exit.thread, label %if.else15.i.i.gud_usb_bulk.exit.thread76.i_crit_edge

if.else15.i.i.gud_usb_bulk.exit.thread76.i_crit_edge: ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_usb_bulk.exit.thread76.i

gud_usb_bulk.exit.thread76.i:                     ; preds = %if.else15.i.i.gud_usb_bulk.exit.thread76.i_crit_edge, %if.else.i.i.gud_usb_bulk.exit.thread76.i_crit_edge, %do.body.i.i.gud_usb_bulk.exit.thread76.i_crit_edge
  %ret.0.i66.ph.i = phi i32 [ -5, %if.else15.i.i.gud_usb_bulk.exit.thread76.i_crit_edge ], [ %174, %if.else.i.i.gud_usb_bulk.exit.thread76.i_crit_edge ], [ -110, %do.body.i.i.gud_usb_bulk.exit.thread76.i_crit_edge ]
  call void @destroy_timer_on_stack(ptr noundef nonnull %ctx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %ctx.i.i) #8
  br label %if.then31.i

gud_flush_rect.exit.thread:                       ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @destroy_timer_on_stack(ptr noundef nonnull %ctx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %ctx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %req.i) #8
  br label %for.inc

if.then31.i:                                      ; preds = %gud_usb_bulk.exit.thread76.i, %gud_usb_bulk.exit.thread.i
  %retval.0.i6775.i = phi i32 [ %call2.i.i, %gud_usb_bulk.exit.thread.i ], [ %ret.0.i66.ph.i, %gud_usb_bulk.exit.thread76.i ]
  %177 = ptrtoint ptr %stats_num_errors.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %stats_num_errors.i, align 8
  %inc.i = add i32 %178, 1
  store i32 %inc.i, ptr %stats_num_errors.i, align 8
  br label %gud_flush_rect.exit

gud_flush_rect.exit:                              ; preds = %if.then31.i, %if.then23.i.gud_flush_rect.exit_crit_edge, %gud_prep_flush.exit.i.gud_flush_rect.exit_crit_edge, %gud_prep_flush.exit.thread.i, %gud_prep_flush.exit.thread70.i
  %retval.0.i = phi i32 [ %ret.0.i.i, %gud_prep_flush.exit.i.gud_flush_rect.exit_crit_edge ], [ %call24.i, %if.then23.i.gud_flush_rect.exit_crit_edge ], [ %retval.0.i6775.i, %if.then31.i ], [ %retval.0.i.ph.i, %gud_prep_flush.exit.thread.i ], [ %call11.i.i, %gud_prep_flush.exit.thread70.i ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %req.i) #8
  %179 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %retval.0.i, label %if.then47 [
    i32 0, label %gud_flush_rect.exit.for.inc_crit_edge
    i32 -19, label %gud_flush_rect.exit.cleanup.thread_crit_edge
    i32 -104, label %gud_flush_rect.exit.cleanup.thread_crit_edge163
    i32 -108, label %gud_flush_rect.exit.cleanup.thread_crit_edge164
    i32 -71, label %gud_flush_rect.exit.cleanup.thread_crit_edge165
  ]

gud_flush_rect.exit.cleanup.thread_crit_edge165:  ; preds = %gud_flush_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

gud_flush_rect.exit.cleanup.thread_crit_edge164:  ; preds = %gud_flush_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

gud_flush_rect.exit.cleanup.thread_crit_edge163:  ; preds = %gud_flush_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

gud_flush_rect.exit.cleanup.thread_crit_edge:     ; preds = %gud_flush_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

gud_flush_rect.exit.for.inc_crit_edge:            ; preds = %gud_flush_rect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then47:                                        ; preds = %gud_flush_rect.exit
  %180 = ptrtoint ptr %prev_flush_failed.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %prev_flush_failed.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool49.not = icmp eq i8 %181, 0
  call void @mutex_lock_nested(ptr noundef %damage_lock, i32 noundef 0) #8
  %182 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fb1, align 4
  %tobool.not.i120 = icmp eq ptr %183, null
  br i1 %tobool.not.i120, label %if.then.i, label %if.then47.if.end.i126_crit_edge

if.then47.if.end.i126_crit_edge:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i126

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_mode_object_get(ptr noundef %base.i) #8
  %184 = ptrtoint ptr %fb1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %2, ptr %fb1, align 4
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i, %if.then47.if.end.i126_crit_edge
  %185 = ptrtoint ptr %damage3 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %damage3, align 8
  %187 = call i32 @llvm.smin.i32(i32 %186, i32 %damage.sroa.0.0.copyload) #8
  %188 = ptrtoint ptr %damage3 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %damage3, align 8
  %189 = ptrtoint ptr %damage.sroa.7.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %damage.sroa.7.0.damage3.sroa_idx, align 4
  %191 = call i32 @llvm.smin.i32(i32 %190, i32 %damage.sroa.7.0.copyload) #8
  %192 = ptrtoint ptr %damage.sroa.7.0.damage3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %damage.sroa.7.0.damage3.sroa_idx, align 4
  %193 = ptrtoint ptr %damage.sroa.11.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %damage.sroa.11.0.damage3.sroa_idx, align 8
  %195 = call i32 @llvm.smax.i32(i32 %194, i32 %damage.sroa.11.0.copyload) #8
  %196 = ptrtoint ptr %damage.sroa.11.0.damage3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %damage.sroa.11.0.damage3.sroa_idx, align 8
  %197 = ptrtoint ptr %damage.sroa.14.0.damage3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %damage.sroa.14.0.damage3.sroa_idx, align 4
  %199 = call i32 @llvm.smax.i32(i32 %198, i32 %damage.sroa.14.0.copyload) #8
  %200 = ptrtoint ptr %damage.sroa.14.0.damage3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %damage.sroa.14.0.damage3.sroa_idx, align 4
  call void @mutex_unlock(ptr noundef %damage_lock) #8
  %201 = ptrtoint ptr %prev_flush_failed.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %prev_flush_failed.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool4.not.i125 = icmp eq i8 %202, 0
  br i1 %tobool4.not.i125, label %if.then5.i, label %if.end.i126.gud_retry_failed_flush.exit_crit_edge

if.end.i126.gud_retry_failed_flush.exit_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_retry_failed_flush.exit

if.then5.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %203 = load ptr, ptr @system_long_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %203, ptr noundef %work) #8
  br label %gud_retry_failed_flush.exit

gud_retry_failed_flush.exit:                      ; preds = %if.then5.i, %if.end.i126.gud_retry_failed_flush.exit_crit_edge
  %204 = ptrtoint ptr %prev_flush_failed.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %prev_flush_failed.i, align 8
  br i1 %tobool49.not, label %do.body, label %gud_retry_failed_flush.exit.cleanup.thread_crit_edge

gud_retry_failed_flush.exit.cleanup.thread_crit_edge: ; preds = %gud_retry_failed_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body:                                          ; preds = %gud_retry_failed_flush.exit
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @gud_flush_work._rs, ptr noundef nonnull @__func__.gud_flush_work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body.cleanup.thread_crit_edge, label %do.end

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %2, align 8
  %dev56 = getelementptr inbounds %struct.drm_device, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end, %do.body.cleanup.thread_crit_edge, %gud_retry_failed_flush.exit.cleanup.thread_crit_edge, %gud_flush_rect.exit.cleanup.thread_crit_edge, %gud_flush_rect.exit.cleanup.thread_crit_edge163, %gud_flush_rect.exit.cleanup.thread_crit_edge164, %gud_flush_rect.exit.cleanup.thread_crit_edge165
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #8
  br label %for.end

for.inc:                                          ; preds = %gud_flush_rect.exit.for.inc_crit_edge, %gud_flush_rect.exit.thread
  %209 = ptrtoint ptr %prev_flush_failed.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %prev_flush_failed.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #8
  %inc = add nuw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %if.end20.for.end_crit_edge
  %base.i127 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %base.i127) #8
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge
  %210 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %211) #8
  br label %cleanup64

cleanup64:                                        ; preds = %out, %entry.cleanup64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_format_info_min_pitch(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_pipe_check(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %new_plane_state, ptr nocapture noundef %new_crtc_state) local_unnamed_addr #1 align 64 {
entry:
  %idx = alloca i32, align 4
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %mode1 = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8
  %state3 = getelementptr inbounds %struct.drm_plane_state, ptr %new_plane_state, i32 0, i32 25
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state3, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %new_plane_state, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %format6 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %idx, align 4, !annotation !44
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %entry
  %.b765 = load i1, ptr @gud_pipe_check.__already_done, align 1
  br i1 %.b765, label %land.rhs.cleanup643_crit_edge, label %if.then, !prof !45

land.rhs.cleanup643_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup643

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_pipe_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 462, i32 noundef 9, ptr noundef null) #8
  br label %cleanup643

if.end45:                                         ; preds = %entry
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rotation, align 4
  %rotation46 = getelementptr inbounds %struct.drm_plane_state, ptr %new_plane_state, i32 0, i32 14
  %15 = ptrtoint ptr %rotation46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rotation46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 3
  %17 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  %tobool49.not = icmp eq ptr %7, null
  br i1 %tobool49.not, label %if.end48.if.end57_crit_edge, label %land.lhs.true

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end48
  %format50 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %format50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %format50, align 8
  %cmp51.not = icmp eq ptr %19, %11
  br i1 %cmp51.not, label %land.lhs.true.if.end57_crit_edge, label %if.then52

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %mode_changed53 = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 3
  %20 = ptrtoint ptr %mode_changed53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load54 = load i8, ptr %mode_changed53, align 2
  %bf.set56 = or i8 %bf.load54, 64
  store i8 %bf.set56, ptr %mode_changed53, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %land.lhs.true.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %mode_changed58 = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 3
  %21 = ptrtoint ptr %mode_changed58 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load59 = load i8, ptr %mode_changed58, align 2
  %22 = and i8 %bf.load59, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %if.end57.cleanup643_crit_edge, label %cond.false

if.end57.cleanup643_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup643

cond.false:                                       ; preds = %if.end57
  %connector_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 5
  %24 = ptrtoint ptr %connector_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_mask, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp385.not = icmp eq i32 %call.i, 1
  br i1 %cmp385.not, label %if.end388, label %cond.false.cleanup643_crit_edge

cond.false.cleanup643_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup643

if.end388:                                        ; preds = %cond.false
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %27)
  %cmp390 = icmp eq i32 %27, 875713112
  br i1 %cmp390, label %land.lhs.true392, label %if.end388.if.end396_crit_edge

if.end388.if.end396_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end396

land.lhs.true392:                                 ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #10
  %xrgb8888_emulation_format = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %xrgb8888_emulation_format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xrgb8888_emulation_format, align 4
  %tobool393.not = icmp eq ptr %29, null
  %spec.select = select i1 %tobool393.not, ptr %11, ptr %29
  br label %if.end396

if.end396:                                        ; preds = %land.lhs.true392, %if.end388.if.end396_crit_edge
  %format.0 = phi ptr [ %11, %if.end388.if.end396_crit_edge ], [ %spec.select, %land.lhs.true392 ]
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp397783.not = icmp eq i32 %31, 0
  br i1 %cmp397783.not, label %if.end396.if.then413_crit_edge, label %for.body.lr.ph

if.end396.if.then413_crit_edge:                   ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then413

for.body.lr.ph:                                   ; preds = %if.end396
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %connector_state.0786 = phi ptr [ null, %for.body.lr.ph ], [ %connector_state.1, %for.inc.for.body_crit_edge ]
  %i.0784 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %33, i32 %i.0784
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool399.not = icmp eq ptr %35, null
  br i1 %tobool399.not, label %for.body.for.inc_crit_edge, label %land.lhs.true400

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true400:                                 ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %33, i32 %i.0784, i32 3
  %36 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %new_state, align 4
  %crtc407 = getelementptr inbounds %struct.drm_connector_state, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %crtc407 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crtc407, align 4
  %tobool408.not = icmp eq ptr %39, null
  br i1 %tobool408.not, label %land.lhs.true400.for.inc_crit_edge, label %land.lhs.true400.for.end_crit_edge

land.lhs.true400.for.end_crit_edge:               ; preds = %land.lhs.true400
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true400.for.inc_crit_edge:               ; preds = %land.lhs.true400
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true400.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %connector_state.1 = phi ptr [ %37, %land.lhs.true400.for.inc_crit_edge ], [ %connector_state.0786, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0784, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true400.for.end_crit_edge
  %connector_state.2 = phi ptr [ %connector_state.1, %for.inc.for.end_crit_edge ], [ %37, %land.lhs.true400.for.end_crit_edge ]
  %tobool412.not = icmp eq ptr %connector_state.2, null
  br i1 %tobool412.not, label %for.end.if.then413_crit_edge, label %for.end.if.end484_crit_edge

for.end.if.end484_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end484

for.end.if.then413_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then413

if.then413:                                       ; preds = %for.end.if.then413_crit_edge, %if.end396.if.then413_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #8
  %40 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !44
  %41 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %41, align 4, !annotation !44
  %43 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pipe, align 8
  call void @drm_connector_list_iter_begin(ptr noundef %44, ptr noundef nonnull %conn_iter) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then413
  %call416 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #8
  %tobool417.not = icmp eq ptr %call416, null
  br i1 %tobool417.not, label %if.end424.thread773, label %while.body

if.end424.thread773:                              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #8
  br label %land.rhs436

while.body:                                       ; preds = %while.cond
  %state418 = getelementptr inbounds %struct.drm_connector, ptr %call416, i32 0, i32 52
  %45 = ptrtoint ptr %state418 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state418, align 8
  %crtc419 = getelementptr inbounds %struct.drm_connector_state, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %crtc419 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %crtc419, align 4
  %tobool420.not = icmp eq ptr %48, null
  br i1 %tobool420.not, label %while.body.while.cond_crit_edge, label %if.end424

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end424:                                        ; preds = %while.body
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #8
  %tobool426.not = icmp eq ptr %46, null
  br i1 %tobool426.not, label %if.end424.land.rhs436_crit_edge, label %if.end424.if.end484_crit_edge

if.end424.if.end484_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end484

if.end424.land.rhs436_crit_edge:                  ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs436

land.rhs436:                                      ; preds = %if.end424.land.rhs436_crit_edge, %if.end424.thread773
  %.b756761 = load i1, ptr @gud_pipe_check.__already_done.5, align 1
  br i1 %.b756761, label %land.rhs436.cleanup643_crit_edge, label %if.then447, !prof !45

land.rhs436.cleanup643_crit_edge:                 ; preds = %land.rhs436
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup643

if.then447:                                       ; preds = %land.rhs436
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_pipe_check.__already_done.5, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 503, i32 noundef 9, ptr noundef null) #8
  br label %cleanup643

if.end484:                                        ; preds = %if.end424.if.end484_crit_edge, %for.end.if.end484_crit_edge
  %connector_state.4772 = phi ptr [ %46, %if.end424.if.end484_crit_edge ], [ %connector_state.2, %for.end.if.end484_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 666) #13
  %tobool487.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool487.not, label %if.end484.cleanup643_crit_edge, label %if.end489

if.end484.cleanup643_crit_edge:                   ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup643

if.end489:                                        ; preds = %if.end484
  %flags1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 11
  %50 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %51, 13311
  %type.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 28
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type.i, align 2
  %54 = and i8 %53, 8
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 7
  %57 = or i32 %56, %and.i
  %58 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode1, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %call7.i.i, align 8
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hdisplay.i, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #8
  %hdisplay4.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %hdisplay4.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %hdisplay4.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 2
  %66 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hsync_start.i, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #8
  %hsync_start5.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %hsync_start5.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %hsync_start5.i, align 2
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 3
  %70 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %hsync_end.i, align 4
  %72 = call i16 @llvm.bswap.i16(i16 %71) #8
  %hsync_end6.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %hsync_end6.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %hsync_end6.i, align 8
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 4
  %74 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %htotal.i, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75) #8
  %htotal7.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %htotal7.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %htotal7.i, align 2
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 6
  %78 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vdisplay.i, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79) #8
  %vdisplay8.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %vdisplay8.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %vdisplay8.i, align 4
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 7
  %82 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vsync_start.i, align 4
  %84 = call i16 @llvm.bswap.i16(i16 %83) #8
  %vsync_start9.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 6
  %85 = ptrtoint ptr %vsync_start9.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %vsync_start9.i, align 2
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 8
  %86 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vsync_end.i, align 2
  %88 = call i16 @llvm.bswap.i16(i16 %87) #8
  %vsync_end10.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %vsync_end10.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %vsync_end10.i, align 8
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %new_crtc_state, i32 0, i32 8, i32 9
  %90 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vtotal.i, align 4
  %92 = call i16 @llvm.bswap.i16(i16 %91) #8
  %vtotal11.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 8
  %93 = ptrtoint ptr %vtotal11.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %vtotal11.i, align 2
  %94 = call i32 @llvm.bswap.i32(i32 %57) #8
  %flags12.i = getelementptr inbounds %struct.gud_display_mode_req, ptr %call7.i.i, i32 0, i32 9
  %95 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %flags12.i, align 4
  %96 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %format.0, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %97, label %land.rhs506 [
    i32 290, label %if.end489.if.end554_crit_edge
    i32 538982482, label %sw.bb1.i
    i32 51517218, label %sw.bb2.i
    i32 943867730, label %sw.bb3.i
    i32 909199186, label %sw.bb4.i
    i32 875710290, label %sw.bb5.i
    i32 875713112, label %sw.bb6.i
    i32 875713089, label %sw.bb7.i
  ]

if.end489.if.end554_crit_edge:                    ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb1.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb2.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb3.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb4.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb5.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb6.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

sw.bb7.i:                                         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end554

land.rhs506:                                      ; preds = %if.end489
  %format493 = getelementptr inbounds %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %format493 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %format493, align 8
  %.b757760 = load i1, ptr @gud_pipe_check.__already_done.6, align 1
  br i1 %.b757760, label %land.rhs506.out_crit_edge, label %if.then517, !prof !45

land.rhs506.out_crit_edge:                        ; preds = %land.rhs506
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then517:                                       ; preds = %land.rhs506
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_pipe_check.__already_done.6, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 515, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end554:                                        ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end489.if.end554_crit_edge
  %retval.0.i.ph = phi i8 [ 1, %if.end489.if.end554_crit_edge ], [ 8, %sw.bb1.i ], [ 32, %sw.bb2.i ], [ 48, %sw.bb3.i ], [ 64, %sw.bb4.i ], [ 80, %sw.bb5.i ], [ -128, %sw.bb6.i ], [ -127, %sw.bb7.i ]
  %format493777 = getelementptr inbounds %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %format493777 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %retval.0.i.ph, ptr %format493777, align 8
  %101 = ptrtoint ptr %connector_state.4772 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %connector_state.4772, align 4
  %index.i = getelementptr inbounds %struct.drm_connector, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i, align 4
  %conv557 = trunc i32 %104 to i8
  %connector558 = getelementptr inbounds %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %connector558 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv557, ptr %connector558, align 1
  %properties = getelementptr inbounds %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 3
  %call559 = call i32 @gud_connector_fill_properties(ptr noundef nonnull %connector_state.4772, ptr noundef %properties) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call559)
  %cmp560 = icmp slt i32 %call559, 0
  br i1 %cmp560, label %if.end554.out_crit_edge, label %for.cond564.preheader

if.end554.out_crit_edge:                          ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond564.preheader:                            ; preds = %if.end554
  %num_properties565 = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 7
  %106 = ptrtoint ptr %num_properties565 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_properties565, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp566788.not = icmp eq i32 %107, 0
  br i1 %cmp566788.not, label %for.cond564.preheader.for.end635_crit_edge, label %for.body568.lr.ph

for.cond564.preheader.for.end635_crit_edge:       ; preds = %for.cond564.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end635

for.body568.lr.ph:                                ; preds = %for.cond564.preheader
  %properties569 = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 6
  br label %for.body568

for.body568:                                      ; preds = %for.inc633.for.body568_crit_edge, %for.body568.lr.ph
  %num_properties.0790 = phi i32 [ %call559, %for.body568.lr.ph ], [ %inc631, %for.inc633.for.body568_crit_edge ]
  %i.1789 = phi i32 [ 0, %for.body568.lr.ph ], [ %inc634, %for.inc633.for.body568_crit_edge ]
  %108 = ptrtoint ptr %properties569 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %properties569, align 8
  %arrayidx570 = getelementptr i16, ptr %109, i32 %i.1789
  %110 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx570, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 50, i16 %111)
  %cond658 = icmp eq i16 %111, 50
  br i1 %cond658, label %for.inc633, label %land.end581

land.end581:                                      ; preds = %for.body568
  %.b758759 = load i1, ptr @gud_pipe_check.__already_done.7, align 1
  br i1 %.b758759, label %land.end581.out_crit_edge, label %if.then588, !prof !45

land.end581.out_crit_edge:                        ; preds = %land.end581
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then588:                                       ; preds = %land.end581
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @gud_pipe_check.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 537, i32 noundef 9, ptr noundef null) #8
  br label %out

for.inc633:                                       ; preds = %for.body568
  %112 = ptrtoint ptr %rotation46 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rotation46, align 4
  %conv573 = zext i32 %113 to i64
  %add624 = add i32 %num_properties.0790, %i.1789
  %arrayidx625 = getelementptr %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 3, i32 %add624
  %114 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 12800, ptr %arrayidx625, align 2
  %115 = call i64 @llvm.bswap.i64(i64 %conv573)
  %val630 = getelementptr %struct.gud_state_req, ptr %call7.i.i, i32 0, i32 3, i32 %add624, i32 1
  %116 = ptrtoint ptr %val630 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %val630, align 2
  %inc631 = add i32 %num_properties.0790, 1
  %inc634 = add nuw i32 %i.1789, 1
  %117 = ptrtoint ptr %num_properties565 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_properties565, align 4
  %cmp566 = icmp ult i32 %inc634, %118
  br i1 %cmp566, label %for.inc633.for.body568_crit_edge, label %for.inc633.for.end635_crit_edge

for.inc633.for.end635_crit_edge:                  ; preds = %for.inc633
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end635

for.inc633.for.body568_crit_edge:                 ; preds = %for.inc633
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body568

for.end635:                                       ; preds = %for.inc633.for.end635_crit_edge, %for.cond564.preheader.for.end635_crit_edge
  %num_properties.0.lcssa = phi i32 [ %call559, %for.cond564.preheader.for.end635_crit_edge ], [ %inc631, %for.inc633.for.end635_crit_edge ]
  %119 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %9, align 8
  %call637 = call zeroext i1 @drm_dev_enter(ptr noundef %120, ptr noundef nonnull %idx) #8
  br i1 %call637, label %if.then638, label %for.end635.out_crit_edge

for.end635.out_crit_edge:                         ; preds = %for.end635
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then638:                                       ; preds = %for.end635
  call void @__sanitizer_cov_trace_pc() #10
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_properties.0.lcssa, i32 10) #8
  %122 = extractvalue { i32, i1 } %121, 1
  %123 = extractvalue { i32, i1 } %121, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %123, i32 26) #8
  %retval.0.i769 = select i1 %122, i32 -1, i32 %spec.select.i
  %call640 = call i32 @gud_usb_set(ptr noundef %1, i8 noundef zeroext 97, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i769) #8
  %124 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %125) #8
  br label %out

out:                                              ; preds = %if.then638, %for.end635.out_crit_edge, %if.then588, %land.end581.out_crit_edge, %if.end554.out_crit_edge, %if.then517, %land.rhs506.out_crit_edge
  %ret.2 = phi i32 [ %call559, %if.end554.out_crit_edge ], [ %call640, %if.then638 ], [ -22, %if.then517 ], [ -19, %for.end635.out_crit_edge ], [ -22, %land.rhs506.out_crit_edge ], [ -22, %if.then588 ], [ -22, %land.end581.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup643

cleanup643:                                       ; preds = %out, %if.end484.cleanup643_crit_edge, %if.then447, %land.rhs436.cleanup643_crit_edge, %cond.false.cleanup643_crit_edge, %if.end57.cleanup643_crit_edge, %if.then, %land.rhs.cleanup643_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %if.then ], [ 0, %if.end57.cleanup643_crit_edge ], [ -22, %cond.false.cleanup643_crit_edge ], [ -2, %if.then447 ], [ -12, %if.end484.cleanup643_crit_edge ], [ -22, %land.rhs.cleanup643_crit_edge ], [ -2, %land.rhs436.cleanup643_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_connector_fill_properties(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_usb_set(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gud_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) local_unnamed_addr #1 align 64 {
entry:
  %damage = alloca %struct.drm_rect, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #8
  %6 = getelementptr inbounds %struct.drm_rect, ptr %damage, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %damage, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %damage, i32 0, i32 3
  %9 = call ptr @memset(ptr %damage, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %idx, align 4, !annotation !44
  %state5 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %11 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state5, align 4
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %mode_changed, align 2
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast.not = icmp eq i8 %14, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %work = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 3
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  %damage_lock = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %damage_lock, i32 noundef 0) #8
  %fb8 = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %fb8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb8, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %18, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #8
  %19 = ptrtoint ptr %fb8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fb8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %damage.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %damage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2147483647, ptr %damage.i, align 8
  %y1.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %y1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2147483647, ptr %y1.i, align 4
  %x2.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 2
  %22 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %x2.i, align 8
  %y2.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 3
  %23 = ptrtoint ptr %y2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %y2.i, align 4
  tail call void @mutex_unlock(ptr noundef %damage_lock) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end, %lor.lhs.false.if.end14_crit_edge
  %call15 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #8
  br i1 %call15, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %fb18 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %24 = ptrtoint ptr %fb18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb18, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 @gud_usb_set_u8(ptr noundef %1, i8 noundef zeroext 99, i8 noundef zeroext 1) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %5, null
  br i1 %tobool23.not, label %if.end22.if.end38_crit_edge, label %land.lhs.true

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end22
  %26 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state5, align 4
  %mode_changed25 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mode_changed25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load26 = load i8, ptr %mode_changed25, align 2
  %29 = and i8 %bf.load26, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %land.lhs.true.if.end38_crit_edge, label %if.then36

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 @gud_usb_set(ptr noundef %1, i8 noundef zeroext 98, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %31 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state5, align 4
  %active_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %active_changed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load40 = load i8, ptr %active_changed, align 2
  %34 = and i8 %bf.load40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %bf.cast43.not = icmp eq i8 %34, 0
  br i1 %bf.cast43.not, label %if.end38.if.end48_crit_edge, label %if.then44

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %active, align 1, !range !46
  %call47 = call i32 @gud_usb_set_u8(ptr noundef %1, i8 noundef zeroext 100, i8 noundef zeroext %36) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end38.if.end48_crit_edge
  %call49 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %3, ptr noundef nonnull %damage) #8
  br i1 %call49, label %if.then50, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then50:                                        ; preds = %if.end48
  %flags = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 8
  %and = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.then50.if.end53_crit_edge, label %if.then52

if.then50.if.end53_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %43 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %damage, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %6, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %7, align 4
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %42, ptr %8, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then50.if.end53_crit_edge
  %damage_lock.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %damage_lock.i, i32 noundef 0) #8
  %fb1.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fb1.i, align 4
  %cmp.not.i = icmp eq ptr %48, %5
  br i1 %cmp.not.i, label %if.end53.if.end.i_crit_edge, label %if.then.i

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 2
  call void @drm_mode_object_get(ptr noundef %base.i.i) #8
  %49 = ptrtoint ptr %fb1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %5, ptr %fb1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end53.if.end.i_crit_edge
  %old_fb.0.i = phi ptr [ %48, %if.then.i ], [ null, %if.end53.if.end.i_crit_edge ]
  %damage1.i.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21
  %50 = ptrtoint ptr %damage1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %damage1.i.i, align 8
  %52 = ptrtoint ptr %damage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %damage, align 4
  %54 = call i32 @llvm.smin.i32(i32 %51, i32 %53) #8
  %55 = ptrtoint ptr %damage1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %damage1.i.i, align 8
  %y1.i.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 1
  %56 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %y1.i.i, align 4
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %6, align 4
  %60 = call i32 @llvm.smin.i32(i32 %57, i32 %59) #8
  %61 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %y1.i.i, align 4
  %x2.i.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 2
  %62 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %x2.i.i, align 8
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %7, align 4
  %66 = call i32 @llvm.smax.i32(i32 %63, i32 %65) #8
  %67 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %x2.i.i, align 8
  %y2.i.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 21, i32 3
  %68 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %y2.i.i, align 4
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %8, align 4
  %72 = call i32 @llvm.smax.i32(i32 %69, i32 %71) #8
  %73 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %y2.i.i, align 4
  call void @mutex_unlock(ptr noundef %damage_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %74 = load ptr, ptr @system_long_wq, align 4
  %work.i = getelementptr inbounds %struct.gud_device, ptr %1, i32 0, i32 3
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %work.i) #8
  %tobool.not.i = icmp eq ptr %old_fb.0.i, null
  br i1 %tobool.not.i, label %if.end.i.gud_fb_queue_damage.exit_crit_edge, label %if.then5.i

if.end.i.gud_fb_queue_damage.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gud_fb_queue_damage.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %base.i16.i = getelementptr inbounds %struct.drm_framebuffer, ptr %old_fb.0.i, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %base.i16.i) #8
  br label %gud_fb_queue_damage.exit

gud_fb_queue_damage.exit:                         ; preds = %if.then5.i, %if.end.i.gud_fb_queue_damage.exit_crit_edge
  %75 = load i8, ptr @gud_async_flush, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool54.not = icmp eq i8 %75, 0
  br i1 %tobool54.not, label %if.then55, label %gud_fb_queue_damage.exit.if.end59_crit_edge

gud_fb_queue_damage.exit.if.end59_crit_edge:      ; preds = %gud_fb_queue_damage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then55:                                        ; preds = %gud_fb_queue_damage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = call zeroext i1 @flush_work(ptr noundef %work.i) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %gud_fb_queue_damage.exit.if.end59_crit_edge, %if.end48.if.end59_crit_edge
  %76 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state5, align 4
  %enable61 = getelementptr inbounds %struct.drm_crtc_state, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %enable61 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %enable61, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool62.not = icmp eq i8 %79, 0
  br i1 %tobool62.not, label %if.then63, label %if.end59.if.end65_crit_edge

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = call i32 @gud_usb_set_u8(ptr noundef %1, i8 noundef zeroext 99, i8 noundef zeroext 0) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end59.if.end65_crit_edge
  %80 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %81) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_usb_set_u8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_vmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_begin_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_gray8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_rgb332(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_rgb565(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_rgb888(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_swab(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_memcpy(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_compress_default(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_end_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_usb_bulk_timeout(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sgr = getelementptr inbounds %struct.gud_usb_bulk_context, ptr %t, i32 0, i32 1
  tail call void @usb_sg_cancel(ptr noundef %sgr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__param_async_flush, !1, !"__param_async_flush", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_async_flushtype323, !1, !"__UNIQUE_ID_async_flushtype323", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_async_flush324, !4, !"__UNIQUE_ID_async_flush324", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 37, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 407, i32 6}
!7 = !{ptr @gud_flush_work._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.gud_flush_work, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gud_flush_work._entry, !6, !"_entry", i1 false, i1 false}
!14 = !{ptr @gud_flush_work._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 462, i32 6}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 503, i32 6}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 515, i32 6}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 537, i32 4}
!23 = !{ptr @__param_str_async_flush, !1, !"__param_str_async_flush", i1 false, i1 false}
!24 = !{ptr @gud_async_flush, !25, !"gud_async_flush", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 35, i32 13}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 286, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 65, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 138, i32 5}
!32 = !{ptr @gud_usb_bulk.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/gud/gud_pipe.c", i32 262, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i8 0, i8 2}
