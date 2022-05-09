; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_simple_kms_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_simple_kms_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_simple_encoder_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_simple_encoder_init\09\09\09\09"
module asm "\09.long\09__crc_drm_simple_encoder_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_encoder_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__drmm_simple_encoder_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___drmm_simple_encoder_alloc\09\09\09\09"
module asm "\09.long\09__crc___drmm_simple_encoder_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_simple_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_simple_encoder_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_simple_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_simple_display_pipe_attach_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_simple_display_pipe_attach_bridge\09\09\09\09"
module asm "\09.long\09__crc_drm_simple_display_pipe_attach_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_display_pipe_attach_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_display_pipe_attach_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_display_pipe_attach_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_simple_display_pipe_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_simple_display_pipe_init\09\09\09\09"
module asm "\09.long\09__crc_drm_simple_display_pipe_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_simple_display_pipe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_simple_display_pipe_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_simple_display_pipe_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.85 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@drm_simple_encoder_funcs_cleanup = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_drm_simple_encoder_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_encoder_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_encoder_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_encoder_init to i32), ptr @__kstrtab_drm_simple_encoder_init, ptr @__kstrtabns_drm_simple_encoder_init }, section "___ksymtab+drm_simple_encoder_init", align 4
@__kstrtab___drmm_simple_encoder_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_simple_encoder_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_simple_encoder_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_simple_encoder_alloc to i32), ptr @__kstrtab___drmm_simple_encoder_alloc, ptr @__kstrtabns___drmm_simple_encoder_alloc }, section "___ksymtab+__drmm_simple_encoder_alloc", align 4
@__kstrtab_drm_simple_display_pipe_attach_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_display_pipe_attach_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_display_pipe_attach_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_display_pipe_attach_bridge to i32), ptr @__kstrtab_drm_simple_display_pipe_attach_bridge, ptr @__kstrtabns_drm_simple_display_pipe_attach_bridge }, section "___ksymtab+drm_simple_display_pipe_attach_bridge", align 4
@drm_simple_kms_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @drm_simple_kms_plane_prepare_fb, ptr @drm_simple_kms_plane_cleanup_fb, ptr @drm_simple_kms_plane_atomic_check, ptr @drm_simple_kms_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@drm_simple_kms_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_simple_kms_plane_reset, ptr null, ptr @drm_simple_kms_plane_duplicate_state, ptr @drm_simple_kms_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@drm_simple_kms_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_check, ptr null, ptr null, ptr @drm_simple_kms_crtc_enable, ptr @drm_simple_kms_crtc_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@drm_simple_kms_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_simple_kms_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_simple_kms_crtc_duplicate_state, ptr @drm_simple_kms_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_simple_kms_crtc_enable_vblank, ptr @drm_simple_kms_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_drm_simple_display_pipe_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_simple_display_pipe_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_simple_display_pipe_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_simple_display_pipe_init to i32), ptr @__kstrtab_drm_simple_display_pipe_init, ptr @__kstrtabns_drm_simple_display_pipe_init }, section "___ksymtab+drm_simple_display_pipe_init", align 4
@__UNIQUE_ID_file307 = internal constant [51 x i8] c"drm_kms_helper.file=drivers/gpu/drm/drm_kms_helper\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [27 x i8] c"drm_kms_helper.license=GPL\00", section ".modinfo", align 1
@drm_simple_kms_plane_prepare_fb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/drm_simple_kms_helper.c\00", [56 x i8] zeroinitializer }, align 32
@drm_simple_kms_plane_prepare_fb.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.2 = private unnamed_addr constant [33 x i8] c"drm_simple_encoder_funcs_cleanup\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 39, i32 39 }
@___asan_gen_.5 = private unnamed_addr constant [34 x i8] c"drm_simple_kms_plane_helper_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 294, i32 44 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"drm_simple_kms_plane_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 335, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant [33 x i8] c"drm_simple_kms_crtc_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 141, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"drm_simple_kms_crtc_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 203, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/gpu/drm/drm_simple_kms_helper.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 264, i32 7 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__ksymtab___drmm_simple_encoder_alloc, ptr @__ksymtab_drm_simple_display_pipe_attach_bridge, ptr @__ksymtab_drm_simple_display_pipe_init, ptr @__ksymtab_drm_simple_encoder_init, ptr @drm_simple_encoder_funcs_cleanup, ptr @drm_simple_kms_plane_helper_funcs, ptr @drm_simple_kms_plane_funcs, ptr @drm_simple_kms_crtc_helper_funcs, ptr @drm_simple_kms_crtc_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_simple_encoder_funcs_cleanup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_simple_kms_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_simple_kms_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_simple_kms_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_simple_kms_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_simple_encoder_init(ptr noundef %dev, ptr noundef %encoder, i32 noundef %encoder_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef %encoder, ptr noundef nonnull @drm_simple_encoder_funcs_cleanup, i32 noundef %encoder_type, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef %dev, i32 noundef %size, i32 noundef %offset, i32 noundef %encoder_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ptr, i32, ptr, ...) @__drmm_encoder_alloc(ptr noundef %dev, i32 noundef %size, i32 noundef %offset, ptr noundef null, i32 noundef %encoder_type, ptr noundef null) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_simple_display_pipe_attach_bridge(ptr noundef %pipe, ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 2
  %call = tail call i32 @drm_bridge_attach(ptr noundef %encoder, ptr noundef %bridge, ptr noundef null, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_simple_display_pipe_init(ptr noundef %dev, ptr noundef %pipe, ptr noundef %funcs, ptr noundef %formats, i32 noundef %format_count, ptr noundef %format_modifiers, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 2
  %plane2 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1
  %connector4 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %connector4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %connector, ptr %connector4, align 8
  %funcs5 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 4
  %1 = ptrtoint ptr %funcs5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %funcs, ptr %funcs5, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @drm_simple_kms_plane_helper_funcs, ptr %helper_private.i, align 8
  %call = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef %plane2, i32 noundef 0, ptr noundef nonnull @drm_simple_kms_plane_funcs, ptr noundef %formats, i32 noundef %format_count, ptr noundef %format_modifiers, i32 noundef 1, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_private.i39 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 19
  %3 = ptrtoint ptr %helper_private.i39 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @drm_simple_kms_crtc_helper_funcs, ptr %helper_private.i39, align 8
  %call6 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef %pipe, ptr noundef %plane2, ptr noundef null, ptr noundef nonnull @drm_simple_kms_crtc_funcs, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 8
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %5
  %possible_crtcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %call.i = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef %encoder1, ptr noundef nonnull @drm_simple_encoder_funcs_cleanup, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp ne i32 %call.i, 0
  %tobool13.not = icmp eq ptr %connector, null
  %or.cond = or i1 %tobool13.not, %tobool12.not
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %connector, ptr noundef %encoder1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_plane_prepare_fb(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %prepare_fb = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %prepare_fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prepare_fb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end104

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plane, align 8
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %9, 1
  %and2.i.i = and i32 %and.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %if.then
  %.b124 = load i1, ptr @drm_simple_kms_plane_prepare_fb.__already_done, align 1
  br i1 %.b124, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !35

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @drm_simple_kms_plane_prepare_fb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end43:                                         ; preds = %if.then
  br i1 %tobool.not, label %if.end43.if.end95_crit_edge, label %land.rhs47

if.end43.if.end95_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

land.rhs47:                                       ; preds = %if.end43
  %cleanup_fb = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %cleanup_fb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cleanup_fb, align 4
  %tobool49.not = icmp eq ptr %13, null
  br i1 %tobool49.not, label %land.rhs47.if.end95_crit_edge, label %land.rhs57

land.rhs47.if.end95_crit_edge:                    ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

land.rhs57:                                       ; preds = %land.rhs47
  %.b122123 = load i1, ptr @drm_simple_kms_plane_prepare_fb.__already_done.1, align 1
  br i1 %.b122123, label %land.rhs57.if.end95_crit_edge, label %if.then68, !prof !35

land.rhs57.if.end95_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

if.then68:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @drm_simple_kms_plane_prepare_fb.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #3
  br label %if.end95

if.end95:                                         ; preds = %if.then68, %land.rhs57.if.end95_crit_edge, %land.rhs47.if.end95_crit_edge, %if.end43.if.end95_crit_edge
  %call103 = tail call i32 @drm_gem_simple_display_pipe_prepare_fb(ptr noundef %add.ptr, ptr noundef %state) #3
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call107 = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %state) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end95, %if.then11, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call107, %if.end104 ], [ %call103, %if.end95 ], [ 0, %if.then11 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_cleanup_fb(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cleanup_fb = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cleanup_fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup_fb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr, ptr noundef %state) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_plane_atomic_check(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs.i, align 4
  %index.i.i28 = getelementptr i8, ptr %plane, i32 -836
  %8 = ptrtoint ptr %index.i.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i28, align 4
  %new_state.i29 = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %9, i32 3
  %10 = ptrtoint ptr %new_state.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i29, align 4
  %call2 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %11, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %12 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %visible, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %funcs = getelementptr i8, ptr %plane, i32 604
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %check = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %check, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 %17(ptr noundef %add.ptr, ptr noundef %5, ptr noundef %11) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %update = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %9(ptr noundef %add.ptr, ptr noundef %5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_display_pipe_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %reset_plane = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %reset_plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_plane, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @drm_atomic_helper_plane_reset(ptr noundef %plane) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_simple_kms_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %duplicate_plane_state = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %duplicate_plane_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %duplicate_plane_state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef %plane) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr %3(ptr noundef %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call5, %if.end ], [ %call, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_plane_destroy_state(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %plane, i32 -992
  %funcs = getelementptr i8, ptr %plane, i32 604
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %destroy_plane_state = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %destroy_plane_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_plane_state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @drm_atomic_helper_plane_destroy_state(ptr noundef %plane, ptr noundef %state) #3
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr, ptr noundef %state) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @drm_simple_kms_format_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_mode_valid(ptr noundef %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %3(ptr noundef %crtc, ptr noundef %mode) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_check(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_mask, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %index.i.i12 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %index.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i12, align 4
  %shl.i = shl nuw i32 1, %11
  %and = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable, align 4, !range !36
  %14 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp.not = icmp eq i8 %13, %14
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %enable = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state6, align 4
  %state7 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 1, i32 19
  %6 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state7, align 4
  tail call void %3(ptr noundef %crtc, ptr noundef %5, ptr noundef %7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %disable = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %reset_crtc = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reset_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_crtc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @drm_atomic_helper_crtc_reset(ptr noundef %crtc) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_simple_kms_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %duplicate_crtc_state = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %duplicate_crtc_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %duplicate_crtc_state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr %3(ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call5, %if.end ], [ %call, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_destroy_state(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %destroy_crtc_state = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %destroy_crtc_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_crtc_state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %crtc, ptr noundef %state) #3
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %crtc, ptr noundef %state) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_simple_kms_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %enable_vblank = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enable_vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_vblank, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %3(ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_simple_kms_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %disable_vblank = getelementptr inbounds %struct.drm_simple_display_pipe_funcs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disable_vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_vblank, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %crtc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_drm_simple_encoder_init, !1, !"__ksymtab_drm_simple_encoder_init", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 76, i32 1}
!2 = !{ptr @__ksymtab___drmm_simple_encoder_alloc, !3, !"__ksymtab___drmm_simple_encoder_alloc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 84, i32 1}
!4 = !{ptr @__ksymtab_drm_simple_display_pipe_attach_bridge, !5, !"__ksymtab_drm_simple_display_pipe_attach_bridge", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 364, i32 1}
!6 = !{ptr @__ksymtab_drm_simple_display_pipe_init, !7, !"__ksymtab_drm_simple_display_pipe_init", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 427, i32 1}
!8 = !{ptr @__UNIQUE_ID_file307, !9, !"__UNIQUE_ID_file307", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 429, i32 1}
!10 = !{ptr @__UNIQUE_ID_license308, !9, !"__UNIQUE_ID_license308", i1 false, i1 false}
!11 = !{ptr @drm_simple_encoder_funcs_cleanup, !12, !"drm_simple_encoder_funcs_cleanup", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 39, i32 39}
!13 = !{ptr @drm_simple_kms_plane_helper_funcs, !14, !"drm_simple_kms_plane_helper_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 294, i32 44}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 264, i32 7}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 267, i32 3}
!20 = !{ptr @drm_simple_kms_plane_funcs, !21, !"drm_simple_kms_plane_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 335, i32 37}
!22 = !{ptr @drm_simple_kms_crtc_helper_funcs, !23, !"drm_simple_kms_crtc_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 141, i32 43}
!24 = !{ptr @drm_simple_kms_crtc_funcs, !25, !"drm_simple_kms_crtc_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_simple_kms_helper.c", i32 203, i32 36}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i8 0, i8 2}
