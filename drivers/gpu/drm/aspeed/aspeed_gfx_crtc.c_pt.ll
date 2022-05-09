; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aspeed_gfx = type { %struct.drm_device, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.drm_simple_display_pipe, %struct.drm_connector }
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
%struct.anon.86 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
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
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@aspeed_gfx_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @aspeed_gfx_pipe_enable, ptr @aspeed_gfx_pipe_disable, ptr null, ptr @aspeed_gfx_pipe_update, ptr null, ptr null, ptr @aspeed_gfx_enable_vblank, ptr @aspeed_gfx_disable_vblank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aspeed_gfx_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713112, i32 909199186], [24 x i8] zeroinitializer }, align 32
@aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aspeed_gfx\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_gfx_set_pixel_fmt\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setting up RGB565 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setting up XRGB8888 mode\0A\00", [38 x i8] zeroinitializer }, align 32
@aspeed_gfx_set_pixel_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unhandled pixel format %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_gfx_set_pixel_fmt._entry_ptr = internal global ptr @aspeed_gfx_set_pixel_fmt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 875713112, i64 909199186]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"aspeed_gfx_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 219, i32 51 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"aspeed_gfx_formats\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 227, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 38, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 43, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [44 x i8] c"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 48, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @aspeed_gfx_set_pixel_fmt._entry, ptr @aspeed_gfx_set_pixel_fmt._entry_ptr, ptr @aspeed_gfx_funcs, ptr @aspeed_gfx_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gfx_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gfx_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gfx_set_pixel_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_gfx_create_pipe(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.aspeed_gfx, ptr %drm, i32 0, i32 9
  %connector = getelementptr inbounds %struct.aspeed_gfx, ptr %drm, i32 0, i32 10
  %call = tail call i32 @drm_simple_display_pipe_init(ptr noundef %drm, ptr noundef %pipe, ptr noundef nonnull @aspeed_gfx_funcs, ptr noundef nonnull @aspeed_gfx_formats, i32 noundef 2, ptr noundef null, ptr noundef %connector) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_enable(ptr noundef %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %plane_state) #0 align 64 {
entry:
  %bpp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pipe, i32 -2368
  %state.i = getelementptr i8, ptr %pipe, i32 724
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpp.i) #5
  %2 = ptrtoint ptr %bpp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bpp.i, align 4, !annotation !28
  %call.i = call fastcc i32 @aspeed_gfx_set_pixel_fmt(ptr noundef %add.ptr.i, ptr noundef nonnull %bpp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.aspeed_gfx_crtc_mode_set_nofb.exit_crit_edge

entry.aspeed_gfx_crtc_mode_set_nofb.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %aspeed_gfx_crtc_mode_set_nofb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr i8, ptr %pipe, i32 -36
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %4, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %6 = and i32 %5, -134218497
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and3.i = lshr i32 %9, 1
  %10 = and i32 %and3.i, 8
  %11 = or i32 %10, %7
  %and8.i = shl i32 %9, 16
  %12 = and i32 %and8.i, 65536
  %13 = or i32 %11, %12
  %and14.i = shl i32 %9, 15
  %14 = and i32 %and14.i, 131072
  %15 = or i32 %13, %14
  %16 = xor i32 %15, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %17) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay.i, align 4
  %conv24.i = zext i16 %23 to i32
  %sub25.i = shl nuw i32 %conv24.i, 16
  %shl.i = add i32 %sub25.i, -65536
  %or26.i = or i32 %shl.i, %sub.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #5
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %26, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %24) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hsync_start.i, align 2
  %conv32.i = zext i16 %28 to i32
  %sub33.i = add nsw i32 %conv32.i, -1
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hsync_end.i, align 4
  %conv34.i = zext i16 %30 to i32
  %shl35.i = shl nuw i32 %conv34.i, 16
  %or36.i = or i32 %shl35.i, %sub33.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #5
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %33, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %31) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %34 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vtotal.i, align 4
  %conv42.i = zext i16 %35 to i32
  %sub43.i = add nsw i32 %conv42.i, -1
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay.i, align 2
  %conv44.i = zext i16 %37 to i32
  %sub45.i = shl nuw i32 %conv44.i, 16
  %shl46.i = add i32 %sub45.i, -65536
  %or47.i = or i32 %shl46.i, %sub43.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #5
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %40, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %38) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %41 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vsync_start.i, align 4
  %conv53.i = zext i16 %42 to i32
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %43 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsync_end.i, align 2
  %conv54.i = zext i16 %44 to i32
  %shl55.i = shl nuw i32 %conv54.i, 16
  %or56.i = or i32 %shl55.i, %conv53.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or56.i) #5
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %47, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %45) #5, !srcloc !32
  %48 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hdisplay.i, align 4
  %conv60.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bpp.i, align 4
  %mul.i = mul i32 %51, %conv60.i
  %div112.i = lshr i32 %mul.i, 3
  %scan_line_max.i = getelementptr i8, ptr %pipe, i32 -8
  %52 = ptrtoint ptr %scan_line_max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scan_line_max.i, align 8
  %add.i = add i32 %53, -1
  %sub64.i = add i32 %add.i, %mul.i
  %div66.i = udiv i32 %sub64.i, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %shl70.i = shl i32 %div66.i, 16
  %or71.i = or i32 %shl70.i, %div112.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or71.i) #5
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %56, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %54) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %throd_val.i = getelementptr i8, ptr %pipe, i32 -12
  %57 = ptrtoint ptr %throd_val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %throd_val.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %61, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %59) #5, !srcloc !32
  br label %aspeed_gfx_crtc_mode_set_nofb.exit

aspeed_gfx_crtc_mode_set_nofb.exit:               ; preds = %if.end.i, %entry.aspeed_gfx_crtc_mode_set_nofb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpp.i) #5
  %base.i5 = getelementptr i8, ptr %pipe, i32 -36
  %62 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %63, i32 96
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %65 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i5, align 4
  %add.ptr5.i = getelementptr i8, ptr %66, i32 100
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %scu.i = getelementptr i8, ptr %pipe, i32 -24
  %68 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scu.i, align 8
  %dac_reg.i = getelementptr i8, ptr %pipe, i32 -20
  %70 = ptrtoint ptr %dac_reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dac_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef %71, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %72 = or i32 %64, 16777216
  %73 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i5, align 4
  %add.ptr11.i = getelementptr i8, ptr %74, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %72) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %75 = or i32 %67, 16777216
  %76 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i5, align 4
  %add.ptr17.i = getelementptr i8, ptr %77, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %75) #5, !srcloc !32
  tail call void @drm_crtc_vblank_on(ptr noundef %pipe) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_disable(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_off(ptr noundef %pipe) #5
  %base.i = getelementptr i8, ptr %pipe, i32 -36
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %2, -16777217
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %6) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %9 = and i32 %5, -16777217
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %9) #5, !srcloc !32
  %scu.i = getelementptr i8, ptr %pipe, i32 -24
  %12 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scu.i, align 8
  %dac_reg.i = getelementptr i8, ptr %pipe, i32 -20
  %14 = ptrtoint ptr %dac_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dac_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_update(ptr noundef %pipe, ptr nocapture noundef readnone %plane_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %state3 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state3, align 4
  %event4 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event4, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %event4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %event4, align 4
  %call7 = tail call i32 @drm_crtc_vblank_get(ptr noundef %pipe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %pipe, ptr noundef nonnull %9) #5
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_send_vblank_event(ptr noundef %pipe, ptr noundef nonnull %9) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8, %entry.if.end9_crit_edge
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe, align 8
  %event_lock11 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock11) #5
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %3, i32 noundef 0) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call15, i32 0, i32 1
  %13 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paddr, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %base = getelementptr i8, ptr %pipe, i32 -36
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #5, !srcloc !32
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_gfx_enable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %pipe, i32 -36
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !29
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %or = or i32 %3, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #5, !srcloc !32
  %or5 = or i32 %3, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #5, !srcloc !32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_gfx_disable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %pipe, i32 -36
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %3 = and i32 %2, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %6 = or i32 %3, 128
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #5, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_gfx_set_pixel_fmt(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %bpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.aspeed_gfx, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %primary = getelementptr inbounds %struct.aspeed_gfx, ptr %priv, i32 0, i32 9, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %state = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %format2 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format2, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %base = getelementptr inbounds %struct.aspeed_gfx, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %15 = and i32 %14, 2147287039
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end31 [
    i32 909199186, label %do.body
    i32 875713112, label %do.body11
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_gfx_set_pixel_fmt, %if.then)) #5
          to label %do.body33 [label %if.then], !srcloc !55

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug316, ptr noundef %19, ptr noundef nonnull @.str.3) #5
  br label %do.body33

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_gfx_set_pixel_fmt, %if.then23)) #5
          to label %do.end27 [label %if.then23], !srcloc !55

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug317, ptr noundef %21, ptr noundef nonnull @.str.4) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %or28 = or i32 %16, 256
  br label %do.body33

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef %11) #8
  br label %cleanup

do.body33:                                        ; preds = %do.end27, %if.then, %do.body
  %storemerge = phi i32 [ 32, %do.end27 ], [ 16, %if.then ], [ 16, %do.body ]
  %ctrl1.0 = phi i32 [ %or28, %do.end27 ], [ %16, %if.then ], [ %16, %do.body ]
  %24 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %bpp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %ctrl1.0)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %25) #5, !srcloc !32
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %do.end31
  %retval.0 = phi i32 [ -22, %do.end31 ], [ 0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @aspeed_gfx_funcs, !1, !"aspeed_gfx_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c", i32 219, i32 51}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c", i32 38, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug316, !3, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c", i32 43, i32 3}
!10 = !{ptr @aspeed_gfx_set_pixel_fmt.__UNIQUE_ID_ddebug317, !9, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c", i32 48, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @aspeed_gfx_set_pixel_fmt._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @aspeed_gfx_set_pixel_fmt._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @aspeed_gfx_formats, !18, !"aspeed_gfx_formats", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c", i32 227, i32 23}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 3187401}
!30 = !{i64 2156879705}
!31 = !{i64 2156880447}
!32 = !{i64 3186983}
!33 = !{i64 2156880937}
!34 = !{i64 2156881557}
!35 = !{i64 2156882179}
!36 = !{i64 2156882791}
!37 = !{i64 2156883479}
!38 = !{i64 2156883978}
!39 = !{i64 2156875081}
!40 = !{i64 2156875572}
!41 = !{i64 2156876057}
!42 = !{i64 2156876661}
!43 = !{i64 2156877423}
!44 = !{i64 2156877914}
!45 = !{i64 2156878249}
!46 = !{i64 2156878861}
!47 = !{i64 2156884427}
!48 = !{i64 2156885114}
!49 = !{i64 2156885448}
!50 = !{i64 2156886019}
!51 = !{i64 2156886685}
!52 = !{i64 2156886988}
!53 = !{i64 2156887497}
!54 = !{i64 2156867031}
!55 = !{i64 2148726491, i64 2148726496, i64 2148726509, i64 2148726553, i64 2148726587, i64 2148726608}
!56 = !{i64 2156874409}
